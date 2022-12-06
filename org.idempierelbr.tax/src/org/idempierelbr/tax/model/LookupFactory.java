package org.idempierelbr.tax.model;

import org.adempiere.base.ILookupFactory;
import org.compiere.model.GridFieldVO;
import org.compiere.model.InfoColumnVO;
import org.compiere.model.Lookup;
import org.compiere.util.DisplayType;
import org.idempierelbr.tax.type.DisplayTypeFactory;

public class LookupFactory implements ILookupFactory {

	@Override
	public Lookup getLookup(GridFieldVO gridFieldVO) {
		Lookup lookup = null;
		
		if (gridFieldVO.lookupInfo == null && DisplayType.isLookup(gridFieldVO.displayType)) // IDEMPIERE-913
			gridFieldVO.loadLookupInfo();
		
		if (gridFieldVO.displayType == DisplayTypeFactory.BRAZILIAN_TAXES)   //  not cached
		{
			lookup = new MLBRTaxesLookup (gridFieldVO.ctx, gridFieldVO.WindowNo);
		}
		
		return lookup;
	}

	@Override
	public boolean isLookup(GridFieldVO gridFieldVO) {
		if (gridFieldVO.displayType == DisplayTypeFactory.BRAZILIAN_TAXES)
				return true;
		
		return false;
	}

	@Override
	public boolean isLookup(InfoColumnVO infoColumnVO) {
		return false;
	}

}
