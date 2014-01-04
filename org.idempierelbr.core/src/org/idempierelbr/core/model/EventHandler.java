package org.idempierelbr.core.model;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventManager;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.base.event.LoginEventData;
import org.compiere.model.MBPartnerLocation;
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
		
		if (po.get_TableName().equals(MBPartnerLBRCore.Table_Name) && (event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)
				|| event.getTopic().equals(IEventTopics.PO_BEFORE_CHANGE)))
		{
			MBPartnerLBRCore bp = (MBPartnerLBRCore)po;
			msg = validateBPTypeBR(bp);
			if (msg != null)
				throw new RuntimeException(msg);
		}
	}
	
	/**
	 *	Verifica se os campos CPF e CNPJ são válidos
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

				if(MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, AD_Client_ID))
					bp.setLBR_CNPJ(bp.getLBR_CNPJ().substring(0, 8) + "000000");
			}

			bp.setLBR_BPTypeBRIsValid(true);
		}

		return null;
	}
	
}
