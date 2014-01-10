package org.idempierelbr.core.model;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventManager;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.base.event.LoginEventData;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.osgi.service.event.Event;

public class EventHandler extends AbstractEventHandler {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EventHandler.class);

	@Override
	protected void initialize() {
		registerEvent(IEventTopics.AFTER_LOGIN);
		
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MBPartnerLBRCore.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_CHANGE, MBPartnerLBRCore.Table_Name);
		
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MBPartnerLocationLBRCore.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_CHANGE, MBPartnerLocationLBRCore.Table_Name);
		
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MOrgInfo.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_CHANGE, MOrgInfo.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MOrgInfo.Table_Name);
	}

	@Override
	protected void doHandleEvent(Event event) {
		if (event.getTopic().equals(IEventTopics.AFTER_LOGIN)) {
			LoginEventData loginData = (LoginEventData)event.getProperty(IEventManager.EVENT_DATA);
			boolean useUnifiedBP = MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, loginData.getAD_Client_ID());
			
			if(useUnifiedBP)
				log.info("LBR: Usando PN unificados.");
			else
				log.info("LBR: Usando um PN por Filial (Normal).");
			
			Env.setContext(Env.getCtx(), "#LBR_USE_UNIFIED_BP", useUnifiedBP);
			return;
		}
		
		PO po = getPO(event);
		log.info(po + " Type: " + event.getTopic());
		String msg;
		
		if (po.get_TableName().equals(MBPartnerLBRCore.Table_Name) && (event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)
				|| event.getTopic().equals(IEventTopics.PO_BEFORE_CHANGE)))
		{
			MBPartnerLBRCore bp = (MBPartnerLBRCore)po;
			msg = validateBPTypeBR(bp);
			if (msg != null)
				throw new RuntimeException(msg);
		} else if (po.get_TableName().equals(MBPartnerLocationLBRCore.Table_Name) && (event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)
				|| event.getTopic().equals(IEventTopics.PO_BEFORE_CHANGE)))
		{
			MBPartnerLocationLBRCore bpl = (MBPartnerLocationLBRCore)po;
			msg = validateBPTypeBR(bpl);
			if (msg != null)
				throw new RuntimeException(msg);
		}
	}
	
	/**
	 *	Verifica se o campo CNPJ é válido
	 *	@return mensagem de erro ou null
	 */
	private String validateBPTypeBR(MBPartnerLocationLBRCore bpl) {
		// BF [ 2808639 ] - Erro notado pelo usuario gmichels
		if (!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, bpl.getAD_Client_ID()))
			return null;
		
		MBPartnerLBRCore bp = new MBPartnerLBRCore(Env.getCtx(), bpl.getC_BPartner_ID(), bpl.get_TrxName());
		boolean isValid = bp.isLBR_BPTypeBRIsValid();

		// tentando desativar um registro
		if (bpl.is_ValueChanged("IsActive") && !bpl.isActive())
			return null;

		if (!isValid || bp.getLBR_BPTypeBR() == null ||
				!bp.getLBR_BPTypeBR().equalsIgnoreCase(MBPartnerLBRCore.LBR_BPTYPEBR_PJ_LegalEntity))
			return null;

		String CNPJMatriz = bp.getLBR_CNPJ();
		String CNPJFilial = bpl.getLBR_CNPJ();

		if (CNPJMatriz.substring(0, 8).equalsIgnoreCase(CNPJFilial.substring(0, 8)))	{
			if (!bpl.isValidCNPJ())
				return "CNPJ Inválido, por favor verifique";

			MCNPJ cnpj = new MCNPJ(CNPJFilial);
			
			if (!cnpj.isUniqueOnBP(bpl.getAD_Client_ID(), bpl.get_ID(), bpl.get_TableName(), bpl.get_TrxName()))
				return "CNPJ Duplicado. Existe outro Parceiro de Negócios com este CNPJ";
		} else
			return "CNPJ Inválido. Raiz do CNPJ não corresponde com o informado na aba Parceiro de Negócios";

		bpl.setLBR_BPTypeBRIsValid(true);
		return null;
	}

	/**
	 *	Verifica se os campos CPF, CNPJ e IE são válidos
	 *	@return mensagem de erro ou null
	 */
	private String validateBPTypeBR(MBPartnerLBRCore bp) {
		log.info(bp.toString());
		int AD_Client_ID = bp.getAD_Client_ID();

		if (bp.getLBR_BPTypeBR() == null || bp.getLBR_BPTypeBR().equals(""))
			return null;

		// se não estiver validado ou tentando ativar um registro desativado
		if (!bp.isLBR_BPTypeBRIsValid() || (bp.is_ValueChanged("IsActive") && bp.isActive())) {
			// se PF, valida Pessoa Física
			if (bp.getLBR_BPTypeBR().equalsIgnoreCase(MBPartnerLBRCore.LBR_BPTYPEBR_PF_Individual)){
				if (bp.getLBR_CPF() == null){
					return "Por favor, informe o CPF";
				}

				if (bp.getLBR_CPF().length() < 11 || !bp.isValidCPF()){
					return "CPF Inválido, por favor verifique";
				}
				
				MCPF cpf = new MCPF(bp.getLBR_CPF());

				if (!cpf.isUniqueOnBP(AD_Client_ID, bp.get_ID(), bp.get_TrxName())){
					return "CPF Duplicado. Existe outro Parceiro de Negócios com este CPF";
				}

			}
			// se PJ, valida Pessoa Jurídica
			else if (bp.getLBR_BPTypeBR().equalsIgnoreCase(MBPartnerLBRCore.LBR_BPTYPEBR_PJ_LegalEntity)) {
				if (bp.getLBR_CNPJ() == null){
					return "Por favor, informe o CNPJ";
				}

				if (bp.getLBR_CNPJ().length() < 14 || !bp.isValidCNPJ()){
					return "CNPJ Inválido, por favor verifique";
				}
				
				MCNPJ cnpj = new MCNPJ(bp.getLBR_CNPJ());
				
				if (!cnpj.isUniqueOnBP(AD_Client_ID, bp.get_ID(), bp.get_TableName(), bp.get_TrxName())){
					return "CNPJ Duplicado. Existe outro Parceiro de Negócios com este CNPJ (ou raiz, caso PN Unificado)";
				}

				if(MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, AD_Client_ID)) {
					// salva apenas a raiz do CNPJ
					bp.setLBR_CNPJ(bp.getLBR_CNPJ().substring(0, 8) + "000000");
					
					// Marca LBR_IsIEExempt como true, para manter consistência do DB
					bp.setLBR_IsIEExempt(true);
				}
			}
			
			// formata IE
			if (bp.getLBR_IE() != null || bp.getLBR_IE().length() > 0) {
				MIE ie = new MIE(bp.getLBR_IE());
				String ieFormated = ie.getFormated();
				
				if (!ieFormated.equals(bp.getLBR_IE()))
					bp.setLBR_IE(ieFormated);
			}

			bp.setLBR_BPTypeBRIsValid(true);
		}

		return null;
	}
	
}
