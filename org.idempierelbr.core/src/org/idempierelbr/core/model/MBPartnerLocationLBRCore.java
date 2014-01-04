package org.idempierelbr.core.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.idempierelbr.core.wrapper.I_W_C_BPartner_Location;

public class MBPartnerLocationLBRCore extends MBPartnerLocation implements
		I_W_C_BPartner_Location {
	/**
	 * 
	 */
	private static final long serialVersionUID = -86073938619716230L;

	/**************************************************************************
	 * Default Constructor
	 * 
	 * @param ctx
	 *            context
	 * @param C_BPartner_Location_ID
	 *            id
	 * @param trxName
	 *            transaction
	 */
	public MBPartnerLocationLBRCore(Properties ctx, int C_BPartner_Location_ID,
			String trxName) {
		super(ctx, C_BPartner_Location_ID, trxName);
	} // MBPartner_Location

	/**
	 * BP Parent Constructor
	 * 
	 * @param bp
	 *            partner
	 */
	public MBPartnerLocationLBRCore(MBPartner bp) {
		super(bp);
	} // MBPartner_Location

	/**
	 * Constructor from ResultSet row
	 * 
	 * @param ctx
	 *            context
	 * @param rs
	 *            current row of result set to be loaded
	 * @param trxName
	 *            transaction
	 */
	public MBPartnerLocationLBRCore(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	} // MBPartner_Location
	
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
	
	/**
	 *	Verifica se o CNPJ possui a sequência de caracteres e os dígitos verificadores válidos 
	 *	@return boolean true or false
	 */
	public boolean isValidCNPJ() {
		MCNPJ cnpj = new MCNPJ(getLBR_CNPJ());
		return cnpj.isValid();
	}

}
