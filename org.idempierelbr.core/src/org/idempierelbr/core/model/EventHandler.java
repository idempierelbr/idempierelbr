package org.idempierelbr.core.model;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventManager;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.base.event.LoginEventData;
import org.adempiere.model.POWrapper;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.base.wrapper.I_W_C_BPartner;
import org.idempierelbr.base.wrapper.I_W_C_BPartner_Location;
import org.osgi.service.event.Event;

public class EventHandler extends AbstractEventHandler {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EventHandler.class);

	@Override
	protected void initialize() {
		registerEvent(IEventTopics.AFTER_LOGIN);
		
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MBPartner.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_CHANGE, MBPartner.Table_Name);
		
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MBPartnerLocation.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_CHANGE, MBPartnerLocation.Table_Name);
		
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
		
		if (po.get_TableName().equals(MBPartner.Table_Name) && (event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)
				|| event.getTopic().equals(IEventTopics.PO_BEFORE_CHANGE)))
		{
			MBPartner bp = (MBPartner)po;
			msg = validateBPTypeBR(bp);
			if (msg != null) {
				addErrorMessage(event, msg);
			}
		} else if (po.get_TableName().equals(MBPartnerLocation.Table_Name) && (event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)
				|| event.getTopic().equals(IEventTopics.PO_BEFORE_CHANGE)))
		{
			MBPartnerLocation bpl = (MBPartnerLocation)po;
			msg = validateBPTypeBR(bpl);
			if (msg != null)
				addErrorMessage(event, msg);
		}
	}
	
	/**
	 *	Verifica se o campo CNPJ é válido
	 *	@return mensagem de erro ou null
	 */
	private String validateBPTypeBR(MBPartnerLocation bpl) {
		// BF [ 2808639 ] - Erro notado pelo usuario gmichels
		if (!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, bpl.getAD_Client_ID()))
			return null;
		
		MBPartner bp = new MBPartner(Env.getCtx(), bpl.getC_BPartner_ID(), bpl.get_TrxName());
		I_W_C_BPartner_Location bplW = POWrapper.create(bpl, I_W_C_BPartner_Location.class);
		I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);
		boolean isValid = bpW.isLBR_BPTypeBRIsValid();

		// tentando desativar um registro
		if (bpl.is_ValueChanged("IsActive") && !bpl.isActive())
			return null;

		if (!isValid || bpW.getLBR_BPTypeBR() == null ||
				!bpW.getLBR_BPTypeBR().equalsIgnoreCase(I_W_C_BPartner.LBR_BPTYPEBR_PJ_LegalEntity))
			return null;

		String CNPJMatriz = bpW.getLBR_CNPJ();
		String CNPJFilial = bplW.getLBR_CNPJ();

		if (CNPJMatriz.substring(0, 8).equalsIgnoreCase(CNPJFilial.substring(0, 8)))	{
			if (!isValidCNPJ(bplW.getLBR_CNPJ()))
				return "CNPJ Inválido, por favor verifique";

			MCNPJ cnpj = new MCNPJ(CNPJFilial);
			
			if (!cnpj.isUniqueOnBP(bpl.getAD_Client_ID(), bpl.get_ID(), bpl.get_TableName(), bpl.get_TrxName()))
				return "CNPJ Duplicado. Existe outro Parceiro de Negócios com este CNPJ";
		} else
			return "CNPJ Inválido. Raiz do CNPJ não corresponde com o informado na aba Parceiro de Negócios";

		bplW.setLBR_BPTypeBRIsValid(true);
		return null;
	}

	/**
	 *	Verifica se os campos CPF, CNPJ e IE são válidos
	 *	@return mensagem de erro ou null
	 */
	private String validateBPTypeBR(MBPartner bp) {
		log.info(bp.toString());
		int AD_Client_ID = bp.getAD_Client_ID();
		I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);

		if (bpW.getLBR_BPTypeBR() == null || bpW.getLBR_BPTypeBR().equals(""))
			return null;

		// se não estiver validado ou tentando ativar um registro desativado
		if (!bpW.isLBR_BPTypeBRIsValid() || (bp.is_ValueChanged("IsActive") && bp.isActive())) {
			// se PF, valida Pessoa Física
			if (bpW.getLBR_BPTypeBR().equalsIgnoreCase(I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual)){
				if (bpW.getLBR_CPF() == null){
					return "Por favor, informe o CPF";
				}

				if (bpW.getLBR_CPF().length() < 11 || !isValidCPF(bpW.getLBR_CPF())){
					return "CPF Inválido, por favor verifique";
				}
				
				MCPF cpf = new MCPF(bpW.getLBR_CPF());

				if (!cpf.isUniqueOnBP(AD_Client_ID, bp.get_ID(), bp.get_TrxName())){
					return "CPF Duplicado. Existe outro Parceiro de Negócios com este CPF";
				}

			}
			// se PJ, valida Pessoa Jurídica
			else if (bpW.getLBR_BPTypeBR().equalsIgnoreCase(I_W_C_BPartner.LBR_BPTYPEBR_PJ_LegalEntity)) {
				if (bpW.getLBR_CNPJ() == null){
					return "Por favor, informe o CNPJ";
				}

				if (bpW.getLBR_CNPJ().length() < 14 || !isValidCNPJ(bpW.getLBR_CNPJ())){
					return "CNPJ Inválido, por favor verifique";
				}
				
				MCNPJ cnpj = new MCNPJ(bpW.getLBR_CNPJ());
				
				if (!cnpj.isUniqueOnBP(AD_Client_ID, bp.get_ID(), bp.get_TableName(), bp.get_TrxName())){
					return "CNPJ Duplicado. Existe outro Parceiro de Negócios com este CNPJ (ou raiz, caso PN Unificado)";
				}

				if(MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, AD_Client_ID)) {
					// salva apenas a raiz do CNPJ
					bpW.setLBR_CNPJ(bpW.getLBR_CNPJ().substring(0, 8) + "000000");
					
					// Marca como ISENTO, para manter consistência do DB
					bpW.setLBR_TypeIE(I_W_C_BPartner.LBR_TYPEIE_Isento);
				}
			}
			
			// formata IE
			if (bpW.getLBR_IE() != null && bpW.getLBR_IE().length() > 0) {
				MIE ie = new MIE(bpW.getLBR_IE());
				String ieFormated = ie.getFormated();
				
				if (!ieFormated.equals(bpW.getLBR_IE()))
					bpW.setLBR_IE(ieFormated);
			}

			bpW.setLBR_BPTypeBRIsValid(true);
		}

		return null;
	}
	
	/**
	 *	Verifica se o CPF possui a sequência de caracteres e os dígitos verificadores válidos 
	 * @param bpW 
	 *	@return boolean true or false
	 */
	private boolean isValidCPF(String cpf)
	{
		MCPF c = new MCPF(cpf);
		return c.isValid();
	}
	
	/**
	 *	Verifica se o CNPJ possui a sequência de caracteres e os dígitos verificadores válidos 
	 *	@return boolean true or false
	 */
	private boolean isValidCNPJ(String cnpj) {
		MCNPJ c = new MCNPJ(cnpj);
		return c.isValid();
	}
	
}
