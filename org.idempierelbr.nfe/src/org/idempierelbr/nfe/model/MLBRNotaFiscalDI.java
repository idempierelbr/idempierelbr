package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Properties;

import org.compiere.model.I_C_BPartner;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.beans.AdicoesDI;
import org.idempierelbr.nfe.beans.DeclaracaoDI;
import org.idempierelbr.tax.model.I_LBR_DI;

public class MLBRNotaFiscalDI extends X_LBR_NotaFiscalDI {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8323974075134975618L;

	public MLBRNotaFiscalDI(Properties ctx, int LBR_NotaFiscalDI_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalDI_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalDI(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	public DeclaracaoDI getDIBean( ) {
		
		I_LBR_DI di = this.getLBR_DI_Addition().getLBR_DI();

		DeclaracaoDI diBean = new DeclaracaoDI();

		diBean.setnDI( di.getLBR_DI_No() );
		diBean.setdDI((new SimpleDateFormat("yyyy-MM-dd")).format( di.getCreated()) );
		diBean.setxLocDesemb( di.getC_City().getName() );
		diBean.setUFDesemb( di.getC_Region().getName() );
		diBean.setdDesemb( (new SimpleDateFormat("yyyy-MM-dd")).format(di.getLBR_ClearanceDate()) );
		diBean.setTpViaTransp( di.getLBR_DI_TranspType() );
		if ( diBean.getTpViaTransp().equals("1") ) {
			BigDecimal afrmmAmt = this.getLBR_AfrmmAmt();
			if ( afrmmAmt != null ) {
				diBean.setvAFRMM( TextUtil.bigdecimalToString(this.getLBR_AfrmmAmt() ) );
			} else {
				diBean.setvAFRMM("0.00");
			}
		}
		diBean.setTpIntermedio( di.getLBR_DI_MediationImpType() );
		diBean.setcExportador( this.getLBR_DI_Addition().getLBR_BP_Exporter().getValue() );
		
		return diBean;
	}
	
	public AdicoesDI getAdditionBean() {
		AdicoesDI adiBean = new AdicoesDI();
		
		adiBean.setnAdicao( Integer.toString( this.getLBR_DI_Addition().getSeqNo() ) );
		adiBean.setnSeqAdic( Integer.toString( this.getLBR_DI_AdditionProd().getSeqNo() ) );
		I_C_BPartner manufacturer = this.getLBR_DI_Addition().getLBR_BP_Manufacturer();
		
		if ( manufacturer.getC_BPartner_ID() != 0 ) {
			adiBean.setcFabricante( manufacturer.getValue() );
		} else {
			adiBean.setcFabricante( this.getLBR_DI_Addition().getLBR_BP_Exporter().getValue());
		}
		
		return adiBean;
	}


}
