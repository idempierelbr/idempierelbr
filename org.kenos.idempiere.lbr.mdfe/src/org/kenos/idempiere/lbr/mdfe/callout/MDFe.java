package org.kenos.idempiere.lbr.mdfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MCity;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeInsurance;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeUnloadDoc;

/**
 * 		Callout for MDF-e
 * 
 * 	@author Ricardo Santana
 */
public class MDFe
{
	public static class DriverName implements IColumnCallout 
	{
		/**
		 *  	Set Driver Name from BPartner
		 *
		 *  @param ctx      Context
		 *  @param WindowNo current Window No
		 *  @param mTab     Model Tab
		 *  @param mField   Model Field
		 *  @param value    The new value
		 *  @return Error message or ""
		 */
		@Override
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			Integer C_BPartner_ID = (Integer) mTab.getValue("C_BPartner_ID");
			
			if (C_BPartner_ID != null && C_BPartner_ID > 0)
			{
				I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), C_BPartner_ID, null), I_W_C_BPartner.class);
				//
				if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(bp.getlbr_BPTypeBR()))
				{
					String name = mTab.get_ValueAsString("Name");
					String cpf = mTab.get_ValueAsString("lbr_CPF");
					
					if (name == null || name.isEmpty())
						mTab.setValue("Name", bp.getName());
					
					if (cpf == null || TextUtil.toNumeric(cpf).isBlank())
						mTab.setValue("lbr_CPF", bp.getlbr_CPF());
				}
			}
			//
			return "";
		}	//	start
	}	//	DriverName
	
	public static class ClearCity implements IColumnCallout 
	{
		/**
		 * 	Limpa os valores do campo Cidade, ao alterar o campo Estado
		 * 
		 * @param ctx
		 * @param WindowNo
		 * @param mTab
		 * @param mField
		 * @param value
		 * @return
		 */
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			mTab.setValue (MCity.COLUMNNAME_C_City_ID, null);
			//
			return "";
		}	//	start
	}	//	ClearCity
	
	public static class Void implements IColumnCallout 
	{
		/**
		 * 	Ajusta o campo de Ação do Documento para Anular
		 * 
		 * @param ctx
		 * @param WindowNo
		 * @param mTab
		 * @param mField
		 * @param value
		 * @return
		 */
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			if (value == null || value.toString().isEmpty())
				mTab.setValue (MLBRMDFe.COLUMNNAME_DocAction, MLBRMDFe.DOCACTION_Close);
			else
				mTab.setValue (MLBRMDFe.COLUMNNAME_DocAction, MLBRMDFe.DOCACTION_Void);
			//
			return "";
		}	//	start
	}	//	Void
	
	public static class FillBPartner implements IColumnCallout 
	{
		/**
		 * 	Preenche os dados de Parceiro de Negócios
		 * 
		 * @param ctx
		 * @param WindowNo
		 * @param mTab
		 * @param mField
		 * @param value
		 * @return
		 */
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			if (value == null || value.toString().isEmpty())
				return "";
			
			MBPartner bp = new MBPartner (ctx, (Integer) value, null);
			mTab.setValue(MLBRMDFeInsurance.COLUMNNAME_lbr_BPTypeBR, bp.get_Value(I_W_C_BPartner.COLUMNNAME_lbr_BPTypeBR));
			mTab.setValue(MLBRMDFeInsurance.COLUMNNAME_lbr_CNPJ, bp.get_Value(I_W_C_BPartner.COLUMNNAME_lbr_CNPJ));
			mTab.setValue(MLBRMDFeInsurance.COLUMNNAME_lbr_CPF, bp.get_Value(I_W_C_BPartner.COLUMNNAME_lbr_CPF));
			//
			return "";
		}	//	start
	}	//	FillBPartner
	
	public static class FillNFe implements IColumnCallout 
	{
		/**
		 * 	Preenche os dados da NFe no campo de documento de descarregamento
		 * 
		 * @param ctx
		 * @param WindowNo
		 * @param mTab
		 * @param mField
		 * @param value
		 * @return
		 */
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			if (value == null || value.toString().isEmpty())
				return "";
			
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, (Integer) value, null);
			mTab.setValue(MLBRMDFeUnloadDoc.COLUMNNAME_lbr_NFeID, nf.getlbr_NFeID());
			mTab.setValue(MLBRMDFeUnloadDoc.COLUMNNAME_GrandTotal, nf.getGrandTotal());
			//
			return "";
		}	//	start
	}	//	FillNFe
}	//	MDFe
