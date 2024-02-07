package org.idempierelbr.nfe.util;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.I_C_BPartner;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.I_LBR_DI;
import org.idempierelbr.base.model.MLBRNotaFiscalDI;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfe.beans.AdicoesDI;
import org.idempierelbr.nfe.beans.DeclaracaoDI;

public class NFeDIUtil {
	protected transient CLogger	log = CLogger.getCLogger (getClass());
	private MLBRNotaFiscalDI nfeDI;
	
	public NFeDIUtil(MLBRNotaFiscalDI di) {
		if (di == null)
			throw new AdempiereException("MLBRNotaFiscalDI não pode ser null");
		
		this.nfeDI = di;
	}

	public DeclaracaoDI getDIBean( ) {
		
		I_LBR_DI di = nfeDI.getLBR_DI_Addition().getLBR_DI();

		DeclaracaoDI diBean = new DeclaracaoDI();

		diBean.setnDI( di.getLBR_DI_No() );
		diBean.setdDI((new SimpleDateFormat("yyyy-MM-dd")).format( di.getCreated()) );
		diBean.setxLocDesemb( di.getC_City().getName() );
		diBean.setUFDesemb( di.getC_Region().getName() );
		diBean.setdDesemb( (new SimpleDateFormat("yyyy-MM-dd")).format(di.getLBR_ClearanceDate()) );
		diBean.setTpViaTransp( di.getLBR_DI_TranspType() );
		if ( diBean.getTpViaTransp().equals("1") ) {
			BigDecimal afrmmAmt = nfeDI.getLBR_AfrmmAmt();
			if ( afrmmAmt != null ) {
				diBean.setvAFRMM( TextUtil.bigdecimalToString(nfeDI.getLBR_AfrmmAmt() ) );
			} else {
				diBean.setvAFRMM("0.00");
			}
		}
		diBean.setTpIntermedio( di.getLBR_DI_MediationImpType() );
		diBean.setcExportador( nfeDI.getLBR_DI_Addition().getLBR_BP_Exporter().getValue() );
		
		return diBean;
	}
	
	public AdicoesDI getAdditionBean() {
		AdicoesDI adiBean = new AdicoesDI();
		
		adiBean.setnAdicao( Integer.toString( nfeDI.getLBR_DI_Addition().getSeqNo() ) );
		adiBean.setnSeqAdic( Integer.toString( nfeDI.getLBR_DI_AdditionProd().getSeqNo() ) );
		I_C_BPartner manufacturer = nfeDI.getLBR_DI_Addition().getLBR_BP_Manufacturer();
		
		if ( manufacturer.getC_BPartner_ID() != 0 ) {
			adiBean.setcFabricante( manufacturer.getValue() );
		} else {
			adiBean.setcFabricante( nfeDI.getLBR_DI_Addition().getLBR_BP_Exporter().getValue());
		}
		
		return adiBean;
	}


}
