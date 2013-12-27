package org.idempierelbr.core.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MBPartner;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;

public class MBPartnerLBRCore extends MBPartner implements I_W_C_BPartner{
	private static final long serialVersionUID = 2452408677410219668L;
	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";
	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";

	/**
	 * 	Default Constructor
	 * 	@param ctx context
	 * 	@param C_BPartner_ID partner or 0 or -1 (load from template)
	 * 	@param trxName transaction
	 */
	public MBPartnerLBRCore(Properties ctx, int C_BPartner_ID, String trxName) {
		super(ctx, C_BPartner_ID, trxName);
	}
	
	/**
	 * 	Default Constructor
	 * 	@param ctx context
	 * 	@param rs ResultSet to load from
	 * 	@param trxName transaction
	 */
	public MBPartnerLBRCore(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Set Brazilian BP Type.
		@param LBR_BPTypeBR 
		Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)
	 */
	public void setLBR_BPTypeBR (String LBR_BPTypeBR)
	{
	
		set_Value (COLUMNNAME_LBR_BPTypeBR, LBR_BPTypeBR);
	}
	
	/** Get Brazilian BP Type.
		@return Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getLBR_BPTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPTypeBR);
	}
	
	/** Set Brazilian BP Valid.
		@param LBR_BPTypeBRIsValid 
		Brazilian BP is Valid
	  */
	public void setLBR_BPTypeBRIsValid (boolean LBR_BPTypeBRIsValid)
	{
		set_Value (COLUMNNAME_LBR_BPTypeBRIsValid, Boolean.valueOf(LBR_BPTypeBRIsValid));
	}
	
	/** Get Brazilian BP Valid.
		@return Brazilian BP is Valid
	  */
	public boolean isLBR_BPTypeBRIsValid () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_BPTypeBRIsValid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
	
	/** Set CCM.
		@param LBR_CCM 
		City Identification Code used in Brazil (City Tax ID)
	  */
	public void setLBR_CCM (String LBR_CCM)
	{
		set_Value (COLUMNNAME_LBR_CCM, LBR_CCM);
	}
	
	/** Get CCM.
		@return City Identification Code used in Brazil (City Tax ID)
	  */
	public String getLBR_CCM () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CCM);
	}
	
	/** Set CNPJ.
		@param LBR_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}
	
	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}
	
	/** Set CPF.
		@param LBR_CPF 
		Used to identify individuals in Brazil
	  */
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}
	
	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getLBR_CPF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}
	
	/** Set IE.
		@param LBR_IE 
		Used to identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE)
	{
		set_Value (COLUMNNAME_LBR_IE, LBR_IE);
	}
	
	/** Get IE.
		@return Used to identify the IE (State Tax ID)
	  */
	public String getLBR_IE () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IE);
	}
	
	/** Set IE Exempt.
		@param LBR_IsIEExempt 
		Business Partner is IE Exempt
	  */
	public void setLBR_IsIEExempt (boolean LBR_IsIEExempt)
	{
		set_Value (COLUMNNAME_LBR_IsIEExempt, Boolean.valueOf(LBR_IsIEExempt));
	}
	
	/** Get IE Exempt.
		@return Business Partner is IE Exempt
	  */
	public boolean isLBR_IsIEExempt () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsIEExempt);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
	
	/** Set RG.
		@param LBR_RG 
		Used to identify individuals in Brazil
	  */
	public void setLBR_RG (String LBR_RG)
	{
		set_Value (COLUMNNAME_LBR_RG, LBR_RG);
	}
	
	/** Get RG.
		@return Used to identify individuals in Brazil
	  */
	public String getLBR_RG () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RG);
	}
	
	/** Set Suframa.
		@param LBR_Suframa 
		Brazilian SUFRAMA Identification Number
	  */
	public void setLBR_Suframa (String LBR_Suframa)
	{
		set_Value (COLUMNNAME_LBR_Suframa, LBR_Suframa);
	}
	
	/** Get Suframa.
		@return Brazilian SUFRAMA Identification Number
	  */
	public String getLBR_Suframa () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Suframa);
	}
}
