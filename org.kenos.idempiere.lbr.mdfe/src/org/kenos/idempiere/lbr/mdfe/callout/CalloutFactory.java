package org.kenos.idempiere.lbr.mdfe.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.idempierelbr.core.util.TextUtil;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeDriver;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeInsurance;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeLoad;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeUnload;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeUnloadDoc;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CalloutFactory.java, v1.0 2017/01/04 5:06:32 PM, ralexsander Exp $
 */
public class CalloutFactory implements IColumnCalloutFactory
{
	/**
	 * 	Register LBR callouts for columns
	 */
	@Override
	public IColumnCallout[] getColumnCallouts (String tableName, String columnName)
	{
		List<IColumnCallout> callouts = new ArrayList<IColumnCallout>();
			
		
		if (MLBRMDFeDriver.Table_Name.equals(tableName) 
				&& MLBRMDFeDriver.COLUMNNAME_C_BPartner_ID.equals(columnName))
			callouts.add (new MDFe.DriverName());

		else if ((TextUtil.match(tableName, MLBRMDFeLoad.Table_Name, MLBRMDFeUnload.Table_Name)
					&& MLBRMDFeLoad.COLUMNNAME_C_Region_ID.equals(columnName)) ||
				(MLBRMDFe.Table_Name.equals(tableName) 
						&& MLBRMDFe.COLUMNNAME_LBR_EndRegion_ID.equals(columnName)))
			callouts.add (new MDFe.ClearCity());
		
		else if (MLBRMDFe.Table_Name.equals(tableName) 
				&& MLBRMDFe.COLUMNNAME_lbr_MotivoCancel.equals(columnName))
			callouts.add (new MDFe.Void());
		
		else if (MLBRMDFeInsurance.Table_Name.equals(tableName)
				&& MLBRMDFeInsurance.COLUMNNAME_C_BPartner_ID.equals(columnName))
			callouts.add (new MDFe.FillBPartner());
		
		else if (MLBRMDFeUnloadDoc.Table_Name.equals(tableName)
				&& MLBRMDFeUnloadDoc.COLUMNNAME_LBR_NotaFiscal_ID.equals(columnName))
			callouts.add (new MDFe.FillNFe());
		
		IColumnCallout[] result = new IColumnCallout[callouts.size()];
		return callouts.toArray (result);
	}	//	getColumnCallouts
}	//	CalloutFactory
