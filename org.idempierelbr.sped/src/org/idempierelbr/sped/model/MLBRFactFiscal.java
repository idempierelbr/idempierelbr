/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.sped.model;

import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;

import org.apache.commons.beanutils.PropertyUtils;
import org.compiere.model.MProduct;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.sped.contrib.bean.RA010;
import org.idempierelbr.sped.contrib.bean.RA100;
import org.idempierelbr.sped.contrib.bean.RA170;
import org.idempierelbr.sped.contrib.bean.RC010;
import org.idempierelbr.sped.contrib.bean.RC100;
import org.idempierelbr.sped.contrib.bean.RC120;
import org.idempierelbr.sped.contrib.bean.RC501;
import org.idempierelbr.sped.contrib.bean.RC505;
import org.idempierelbr.sped.contrib.bean.RD010;
import org.idempierelbr.sped.contrib.bean.RD100;
import org.idempierelbr.sped.contrib.bean.RD101;
import org.idempierelbr.sped.contrib.bean.RD105;
import org.idempierelbr.sped.contrib.bean.RD501;
import org.idempierelbr.sped.contrib.bean.RD505;
import org.idempierelbr.sped.icmsipi.bean.I_R0150;
import org.idempierelbr.sped.icmsipi.bean.I_R0190;
import org.idempierelbr.sped.icmsipi.bean.I_R0200;
import org.idempierelbr.sped.icmsipi.bean.I_RC100;
import org.idempierelbr.sped.icmsipi.bean.I_RC490;
import org.idempierelbr.sped.icmsipi.bean.I_RC491;
import org.idempierelbr.sped.icmsipi.bean.I_RC495;
import org.idempierelbr.sped.icmsipi.bean.I_RC500;
import org.idempierelbr.sped.icmsipi.bean.I_RD100;
import org.idempierelbr.sped.icmsipi.bean.I_RD500;
import org.idempierelbr.sped.icmsipi.bean.RC170;
import org.idempierelbr.sped.utils.SPEDUtil;


/**
 * 	Model for LBR_FactFiscal
 * 
 * 	@author Pablo Boff Pigozzo
 * 
 *  Adapted for iDempiereLBR by
 *  @author Claudemir Todo Bom <claudemir@todobom.com>
 *  @author Arthur Melo <aomelo@live.com>
 */
public class MLBRFactFiscal extends X_LBR_FactFiscal
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3815825114834183520L;

	/**	
	 * Logger			
	 */
	private static CLogger log = CLogger.getCLogger(MLBRFactFiscal.class);
	
	/**
	 * 	Serial
	 */
	
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRFactFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRADI

	public static MLBRFactFiscal[] get(Properties ctx, int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		return get (ctx, null, null, null, null, LBR_NotaFiscal_ID, trxName);
	}
	
	/**
	 * Retornar Fatos Fiscais de acorodo com os parâmetros abaixo
	 * 
	 * @param ctx
	 * @param DateFrom
	 * @param DateTo 
	 * @param AD_Org_ID Organização ou NULL para todas
	 * @param IsSOTrx Transação de Venda/Compra ou NULL para amabas
	 * @param TrxName transação do BD 
	 * @return
	 */
	public static MLBRFactFiscal[] get(Properties ctx, Timestamp DateFrom, Timestamp DateTo, Integer AD_Org_ID, Boolean IsSOTrx, String trxName) throws Exception
	{
		return get (ctx, DateFrom, DateTo, new Integer[]{AD_Org_ID}, IsSOTrx, -1, trxName); 
	}	//	MLBRFactFiscal
	
	/**
	 * Retornar Fatos Fiscais de acordo com os parâmetros abaixo
	 * 
	 * @param ctx
	 * @param DateFrom
	 * @param DateTo 
	 * @param AD_Org_IDs Array com um conjunto de organizações ou NULL para todas
	 * @param IsSOTrx Transação de Venda/Compra ou NULL para amabas
	 * @param TrxName transação do BD 
	 * @return
	 */
	public static MLBRFactFiscal[] get (Properties ctx, Timestamp DateFrom, Timestamp DateTo, Integer[] AD_Org_IDs, Boolean IsSOTrx, int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		log.info("init MLBRFactFiscal[] get");
	    //	Client
		String whereClause = " AD_Client_ID = ? ";
		
 		//	Organizações (2000000, 2000001...) ou (2000000) ou TODAS(null)
		if (AD_Org_IDs != null && AD_Org_IDs.length > 0)
		{
			whereClause += " AND AD_Org_ID IN (";			
			for(int x = 0; x < AD_Org_IDs.length; x++)
			{
				// Ultimo elemento, fecha ()s
				if(x == AD_Org_IDs.length -1)
					whereClause += AD_Org_IDs[x] + ")";
				
				// senao só add novo ID e ,
				else 
					whereClause += AD_Org_IDs[x] + ",";
				
			}
		}
		
		//	Transação de Venda/Compra
		if (IsSOTrx != null)
		{
			whereClause += " AND lbr_nfe_operationtype = " + (IsSOTrx.booleanValue() ? "1" : "0"); 
			
		}
		
		//	Nota Fiscal
		if (LBR_NotaFiscal_ID > 0)
		{
			whereClause += " AND LBR_NotaFiscal_ID=" + LBR_NotaFiscal_ID; 
			
		}
		
		// 	Intervalo de Datas: se for venda, usa a DateDoc(mesma data contábil) 
		// 		senão a lbr_DateInOut(data da entrada efetiva do material no sistema e contabilidade)
		if (DateFrom != null && DateTo != null) {
			Calendar c = Calendar.getInstance(); 
			c.setTime(DateTo);
			c.add(Calendar.DATE, 1);
			Timestamp nextDateTo = new Timestamp ( c.getTime().getTime() );
			
			whereClause += " AND ( ";

			whereClause += " ( lbr_nfe_operationtype='1' AND DateDoc >= " 
					+ DB.TO_DATE (DateFrom) + " AND DateDoc < " + DB.TO_DATE (nextDateTo) + " ) ";
			
			whereClause += " OR " ;

			whereClause += " ( lbr_nfe_operationtype='0' AND DateDelivered >= " 
					+ DB.TO_DATE (DateFrom) + " AND DateDelivered < " + DB.TO_DATE (nextDateTo) + " ) ";
			
			whereClause += " ) ";

		
		}
		
		// 	Transação de venda só trazer nfe transmitida
		whereClause += " AND ((lbr_nfe_operationtype = '1' AND lbr_nfeid IS NOT NULL) OR lbr_nfe_operationtype='0') ";
		
		// 	Order By (Date, LBR_NotaFiscal_ID, DocumentNo)
		String orderBy = " (CASE WHEN lbr_nfe_operationtype='1' THEN DateDoc ELSE DateDelivered END), LBR_NotaFiscal_ID, Line, DocumentNo ";
		
		// 	Query
		MTable table = MTable.get(ctx, MLBRFactFiscal.Table_Name);
		Query q = new Query(ctx, table, whereClause.toString(), trxName);
		q.setOrderBy(orderBy);
		
		// 	Parametros
		q.setParameters(new Object[] { Env.getAD_Client_ID(ctx) });
		log.info(" whereclause = " + whereClause);
		// 	Convert to array
		List<MLBRFactFiscal> list = q.list();
		MLBRFactFiscal[] facts = new MLBRFactFiscal[list.size()];
		return list.toArray(facts);
	}	//	MLBRFactFiscal
	
	
	/**
	 * 		Monta o código do Produto concatenando o NCM,
	 * 	para os casos que o NCM é diferente para alguns fornecedores
	 */
	@Override
	public String getProductValue ()
	{
//		TODO: Verificar se a melhor forma é concatenar o NCM
//				para casos q a compra/venda foi feite com NCM
//				diferente do cadastro do produto.
//			  Solução atual foi modificar o comparador SPEDComparator
//		if (getlbr_NCMName() != null && !getlbr_NCMName().isEmpty())
//			return TextUtil.retiraEspecial (super.getProductValue()) + "-" + TextUtil.retiraEspecial (getlbr_NCMName());
		//
		return super.getProductValue();
	}	//	getProductValue
	
	/**
	 * 		Get the Search Key from Business Partner
	 * 
	 * 	@return BPartner Value
	 */
	public String getBPValue ()
	{
		if (getC_BPartner_ID() == 0)
			return "";
		return ( getLBR_CNPJ() != null && !getLBR_CNPJ().trim().isEmpty()) 
				? TextUtil.retiraEspecial (getLBR_CNPJ()) 
						: "EX-" + TextUtil.retiraEspecial (getC_BPartner().getValue ());
	}	//	getBPartnerValue
	
	/**
	 * 		IE - Inscrição Estadual
	 * 	Trata a informação nos casos de Isenção de IE
	 */
	public String getLBR_IE ()
	{
		String ie = super.getLBR_IE();
		if ( ie == null
				|| ie.isEmpty()
				|| ie.toUpperCase().indexOf("ISENT") > 0)
			return "";
		//
		return TextUtil.toNumeric (ie.trim());
	}	//	getlbr_BPIE
	
	/**
	 * 	Obs.: A partir de 01/01/2012 passará a ser:
	 * 	Indicador do tipo do frete:	
	 * 		<li>0- Por conta do emitente;
	 * 		<li>1- Por conta do destinatário/remetente;
	 *  	<li>2- Por conta de terceiros;
	 * 		<li>9- Sem cobrança de frete.
	 * 	@return	Indicador do tipo do frete
	 */
	private String getIND_FRT ()
	{
		if (getFreightAmt() != null && getFreightAmt().signum() == 1)
			return SPEDUtil.IND_FRT_DEST_REMT;
		//
		return SPEDUtil.IND_FRT_SEM;
	}	//	getIND_FRET
	
	/**
	 * 		Preenche os campos comuns do Registro 0150
	 * 
	 * 	@param ctx Contexto
	 * 	@param r0150 Registro 0150
	 * 	@param trxName Nome da Transação
	 * 	@return Interface for 0150
	 */
	public I_R0150 fillR0150 (Properties ctx, I_R0150 r0150, String trxName)
	{

		r0150.setCOD_PART(getBPValue());
		r0150.setNOME( getName() );
		r0150.setCOD_PAIS( getLBR_CountryCode() );
		
		//	FIXME: De acordo com o Tipo de Parceiro CPF/CNPJ
		if (TextUtil.toNumeric ( getLBR_CNPJ() ).length() == 11)
			r0150.setCPF (getLBR_CNPJ());
		else
			r0150.setCNPJ (getLBR_CNPJ());
		
		if (getLBR_IE().equals("ISENTO"))
			r0150.setIE("");
		else
			r0150.setIE(getLBR_IE());
		
		r0150.setCOD_MUN( getLBR_CityCode() );
		r0150.setSUFRAMA( getLBR_Suframa() );
		r0150.setEND( getAddress1() );
		r0150.setNUM( getAddress2());
		r0150.setCOMPL(getAddress4());
		r0150.setBAIRRO(getAddress3());
		//
		return r0150;
	}	//	fillR0150
	
	/**
	 * 		Preenche os campos comuns do Registro 0190
	 * 
	 * 	@param ctx Contexto
	 * 	@param r0190 Registro 0190
	 * 	@param trxName Nome da Transação
	 * 	@return Interface for 0190
	 */
	public I_R0190 fillR0190 (Properties ctx, I_R0190 r0190, String trxName)
	{
		r0190.setUNID(getUOMSymbol() == null ? "un" : getUOMSymbol());
		r0190.setDESCR(getLBR_UOM_Name() == null ? "Unidade" : getLBR_UOM_Name());
		//
		return r0190;
	}	//	fillR0190
	
	/**
	 * 		Preenche os campos comuns do Registro 0200
	 * 
	 * 	@param ctx Contexto
	 * 	@param r0200 Registro 0200
	 * 	@param trxName Nome da Transação
	 * 	@return Interface for 0200
	 */
	public I_R0200 fillR0200 (Properties ctx, I_R0200 r0200, String trxName)
	{
		//	Linha Inválida
		if (getProductValue() == null || getProductValue().isEmpty())
			return null;
		//
		r0200.setCOD_ITEM(getProductValue());
		r0200.setDESCR_ITEM(getProductName());
		r0200.setCOD_BARRA(getUPC());
		r0200.setUNID_INV(getUOMSymbol() == null ? "un" : getUOMSymbol());

		// FIXME: tipo de item
		// r0200.setTIPO_ITEM( getlbr_ItemTypeBR());
		
		r0200.setCOD_NCM(getLBR_NCM_Value());
		
		//	FIXME: Adicionar funcionalidades
		r0200.setCOD_ANT_ITEM(null);
		r0200.setEX_IPI(null);
		r0200.setCOD_GEN(null);
		r0200.setCOD_LST(null);
		r0200.setALIQ_ICMS(null);
		//
		return r0200;
	}	//	fillR0200
	
	/**
	 * 		Este registro tem o objetivo de identificar o estabelecimento da pessoa jurídica 
	 * 	a que se referem as operações e documentos fiscais informados neste bloco. Só devem 
	 * 	ser escriturados no Registro A010 os estabelecimentos que efetivamente tenham realizado 
	 * 	operações de prestação ou de contratação de serviços, mediante emissão de documento fiscal, 
	 * 	que devam ser escrituradas no Bloco A.
	 * 	
	 * 		O estabelecimento que não realizou operações passíveis de registro nesse bloco, 
	 * 	no período da escrituração, não deve ser identificado no Registro A010.
	 * 
	 * 		Para cada estabelecimento cadastrado em “A010”, deve ser informado nos registros 
	 * 	de nível inferior (Registros Filho) as operações próprias de prestação ou de contratação 
	 * 	de serviços, mediante emissão de documento fiscal, no mercado interno ou externo.
	 * 	
	 * 	@return Registro A010
	 */
	public RA010 getRA010 ()
	{
		RA010 rA010 = new RA010 ();
		rA010.setCNPJ (getLBR_CNPJ());
		return rA010;
	}	//	getRA010
	
	/**
	 * 		Deve ser gerado um Registro A100 para cada documento fiscal a ser relacionado na escrituração, 
	 * 	referente à prestação ou à contratação de serviços, que envolvam a emissão de documentos fiscais 
	 * 	estabelecidos pelos Municípios, eletrônicos ou em papel.
	 *		Para cada registro A100, obrigatoriamente deve ser apresentado, pelo menos, um registro A170.
	 * @param facts 
	 *
	 * 	@return Registro A100
	 * 	@throws Exception 
	 */
	public RA100 getRA100 (Properties ctx, MLBRFactFiscal[] facts, String trxName) throws Exception
	{
		RA100 rA100 = new RA100 ();

		rA100.setCOD_SIT(isCancelled() ? SPEDUtil.COD_SIT_CANCELADO : SPEDUtil.COD_SIT_REGULAR);
		rA100.setIND_OPER (getLBR_NFE_OperationType());
		rA100.setIND_EMIT (getLBR_NFE_OperationType());
		rA100.setSER(getLBR_NFeSerie());
		rA100.setCOD_PART (getBPValue());
		rA100.setNUM_DOC(getDocumentNo());
		rA100.setCHV_NFSE(getLBR_NFeID());
		
		if (rA100.getCOD_SIT().equals(SPEDUtil.COD_SIT_REGULAR))
		{
			rA100.setSUB("");	//	FIXME
			rA100.setDT_DOC(getDateDoc());
			rA100.setVL_DOC(getGrandTotal());
			rA100.setIND_PGTO(SPEDUtil.IND_PAGTO_VISTA);	//	FIXME
			rA100.setVL_BC_PIS(getLBR_PIS_TaxBaseAmt());		//	FIXME: Criar PIS_NFTaxBaseAmt
			rA100.setVL_PIS(getLBR_PIS_NFTaxAmt());
			rA100.setVL_BC_COFINS(getLBR_COFINS_TaxBaseAmt());	//	FIXME: Criar COFINS_NFTaxBaseAmt
			rA100.setVL_COFINS(getLBR_COFINS_NFTaxAmt());
			rA100.setVL_PIS_RET(null);
			rA100.setVL_COFINS_RET(null);
			rA100.setVL_ISS(Env.ZERO);	//	FIXME: Modificar VIEW
		}
		
		//	Process Lines
		//MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);
		
		if (rA100.getCOD_SIT().equals(SPEDUtil.COD_SIT_REGULAR))
		{
			for (MLBRFactFiscal line : facts)
			{
			    if (this.getLBR_NotaFiscal_ID()==line.getLBR_NotaFiscal_ID())
	                    {
				rA100.addA170 (line.getRA170 ());
	                    }
			}
		}
		//
		return rA100;
	}	//	getRA100
	
	/**
	 * 		Registro obrigatório para discriminar os itens da nota fiscal de serviço emitida 
	 * 	pela pessoa jurídica ou por terceiros. Não podem ser informados para um mesmo documento 
	 * 	fiscal, dois ou mais registros com o mesmo conteúdo no campo NUM_ITEM.
	 * 
	 * 	@return Registro A170
	 */
	private RA170 getRA170 ()
	{
		RA170 rA170 = new RA170 ();
		rA170.setNUM_ITEM ((getLine()));
		rA170.setCOD_ITEM (getProductValue());
		rA170.setDESCR_COMPL (getProductName());
		rA170.setVL_ITEM (getLineNetAmt());
		rA170.setVL_DESC (getDiscountAmt());
		rA170.setNAT_BC_CRED (null);	//	TODO: Não Obrigatório
		rA170.setIND_ORIG_CRED (null);	//	TODO: Não Obrigatório
		rA170.setCST_PIS (getLBR_PIS_TaxStatus());
		rA170.setVL_BC_PIS (getLBR_PIS_TaxBaseAmt());
		rA170.setALIQ_PIS (getLBR_PIS_TaxRate());
		rA170.setVL_PIS (getLBR_PIS_TaxAmt());
		rA170.setCST_COFINS (getLBR_COFINS_TaxStatus());
		rA170.setVL_BC_COFINS (getLBR_COFINS_TaxBaseAmt());
		rA170.setALIQ_COFINS (getLBR_COFINS_TaxRate());
		rA170.setVL_COFINS (getLBR_COFINS_TaxAmt());
		
		//	Não Obrigatório, porém o Adempiere pode ter regras diferentes para esta informação
		//		então não é possível preencher.
		rA170.setCOD_CTA (null);
		rA170.setCOD_CCUS (null);		//	TODO: Não Obrigatório
		//
		return rA170;
	}	//	getRA170
	
	/**
	 * 		Este registro tem o objetivo de identificar o estabelecimento da pessoa jurídica 
	 * 	a que se referem as operações e documentos fiscais informados neste bloco. Só devem 
	 * 	ser escriturados no Registro C010 os estabelecimentos que efetivamente tenham realizado 
	 * 	aquisição, venda ou devolução de mercadorias, bens e produtos, mediante emissão de documento 
	 * 	fiscal definido pela legislação do ICMS e do IPI, que devam ser escrituradas no Bloco C.
	 * 
	 * 		O estabelecimento que não realizou operações passíveis de registro nesse bloco, n
	 * 	o período da escrituração, não deve ser identificado no Registro C010.
	 * 
	 * 		Para cada estabelecimento cadastrado em “C010”, deve ser informado nos registros de 
	 * 	nível inferior (Registros Filho) as operações próprias de prestação ou de contratação de 
	 * 	serviços, mediante emissão de documento fiscal, no mercado interno ou externo.
	 * 
	 *	@return	Registro C010
	 *	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 * 	@throws NoSuchMethodException 
	 */
	public RC010 getRC010 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RC010 rC010 = new RC010 ();
		//
		PropertyUtils.copyProperties (rC010, getRA010 ());
		//
		if (rC010.getCNPJ() == null || rC010.getCNPJ().isEmpty())
			return null;
		//
		return rC010;
	}	//	getRC010
	
	/**
	 * 
	 * 	@param ctx
	 * 	@param rC100
	 * 	@param trxName
	 * 	@return
	 * 	@throws Exception
	 */
	public I_RC100 getRC100 (Properties ctx,MLBRFactFiscal[] facts, I_RC100 rC100, String trxName) throws Exception
	{
		/**
		 * 	Copia os dados comuns:
		 * 		IND_OPER, IND_EMIT, COD_PART, COD_SIT, SER, NUM_DOC, 
		 * 		DT_DOC, VL_DOC, IND_PGTO, VL_DESC, VL_PIS, VL_COFINS
		 */
		PropertyUtils.copyProperties (rC100, getRA100 (ctx,facts, trxName));
		//
		if (rC100.getNUM_DOC() == null || rC100.getNUM_DOC().isEmpty())
			return null;
		//
		rC100.setCOD_MOD (getLBR_NFeModel());
		rC100.setCHV_NFE (getLBR_NFeID());

		//		Não preencher todo o Documento e
		//	não gerar linhas para NF canceladas
		
		if (isCancelled())
		{
			rC100.setCOD_PART(null);
			rC100.setDT_DOC(null);
			rC100.setVL_DOC(null);
			rC100.setVL_DESC(null);
			rC100.setIND_PGTO(null);
			rC100.setVL_PIS(null);
			rC100.setVL_COFINS(null);
			return rC100;
		}
		
		rC100.setDT_E_S (getDateDelivered());
		rC100.setVL_MERC (getTotalLines());
		rC100.setIND_FRT (getIND_FRT());
		rC100.setVL_FRT (getFreightAmt());
		rC100.setVL_SEG (getInsuredAmount());
		rC100.setVL_OUT_DA(null);		//	TODO
		rC100.setVL_BC_ICMS(getLBR_ICMS_TaxBaseAmt());
		rC100.setVL_ICMS(getLBR_ICMS_NFTaxAmt());
		rC100.setVL_BC_ICMS_ST(getLBR_ICMSST_TaxBaseAmt());
		rC100.setVL_ICMS_ST(getLBR_ICMSST_NFTaxAmt());
		rC100.setVL_IPI(getLBR_IPI_NFTaxAmt());
		rC100.setVL_PIS_ST(null);		//	TODO
		rC100.setVL_COFINS_ST(null);	//	TODO
		
		//	Process Lines
		//MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);
		
		rC100.addRC120(getRC120(facts));
		
		for (MLBRFactFiscal line : facts)
		{
		    if (this.getLBR_NotaFiscal_ID()==line.getLBR_NotaFiscal_ID())
		    {
			rC100.addRC170 (line.getRC170 ());
		    }
		}
			
		return rC100;
	}	//	getRC100
	
	/**
         * 
         *      @param ctx
         *      @param rC490
         *      @param trxName
         *      @return
         *      @throws Exception
         */
        public I_RC490 getRC490 (Properties ctx,MLBRFactFiscal[] facts, I_RC490 rC490, String trxName) throws Exception
        {
                /**
                 *      Copia os dados comuns:
                 *              IND_OPER, IND_EMIT, COD_PART, COD_SIT, SER, NUM_DOC, 
                 *              DT_DOC, VL_DOC, IND_PGTO, VL_DESC, VL_PIS, VL_COFINS
                 */
                //PropertyUtils.copyProperties (rC490, getRC100 (ctx,facts, (I_RC100) new RC100(), trxName));
               
                //
                rC490.setCOD_MOD(getLBR_NFeModel());

                // Não preencher todo o Documento 
                // e não gerar registro para NF canceladas
                
                if (isCancelled()) {
                    rC490.setCOD_MOD(null);
                    rC490.setDT_DOC_INI(null);
                    rC490.setDT_DOC_FIN(null);
                    return rC490;
                }
                
                rC490.setDT_DOC_INI(getDateDoc());
                rC490.setDT_DOC_FIN(getDateDoc());

                        
                return rC490;
        }       //      getRC490
        
        /**
         * 
         *      @param ctx
         *      @param rC491
         *      @param trxName
         *      @return
         *      @throws Exception
         */
        public I_RC491 getRC491 (Properties ctx,MLBRFactFiscal[] facts, I_RC491 rC491, String trxName) throws Exception
        {
                /**
                 *      Copia os dados comuns:
                 *              IND_OPER, IND_EMIT, COD_PART, COD_SIT, SER, NUM_DOC, 
                 *              DT_DOC, VL_DOC, IND_PGTO, VL_DESC, VL_PIS, VL_COFINS
                 */
                //PropertyUtils.copyProperties (rC491, getRC100 (ctx,facts, (I_RC100) new RC100(), trxName));

                // Não preencher todo o Documento 
                // e não gerar registro para NF canceladas
                
                if (isCancelled()) {
                   
                    rC491.setCOD_CTA (null);
                    rC491.setCFOP (null);
                    rC491.setCST_PIS (null);
                    rC491.setVL_ITEM (null);
                    rC491.setVL_BC_PIS (null);
                    rC491.setALIQ_PIS (null);
                    rC491.setQUANT_BC_PIS (Env.ZERO);
                    rC491.setALIQ_PIS_QUANT (null);
                    rC491.setVL_PIS (null);
                    return rC491;
                }
                rC491.setCOD_ITEM(getProductValue());
                
                //      Não Obrigatório, porém o Adempiere pode ter regras diferentes para esta informação
                //      então não é possível preencher.
                rC491.setCOD_CTA (null);
                rC491.setCFOP (getLBR_CFOP_Value());
                rC491.setCST_PIS (getLBR_PIS_TaxStatus());
                rC491.setVL_ITEM (getLineNetAmt());
                rC491.setVL_BC_PIS (getLBR_PIS_TaxBaseAmt());
                rC491.setALIQ_PIS (getLBR_PIS_TaxRate());
                rC491.setQUANT_BC_PIS (Env.ZERO);
                rC491.setALIQ_PIS_QUANT (null);
                rC491.setVL_PIS (getLBR_PIS_TaxAmt());
                        
                return rC491;                
        }       //      getRC491
        
        /**
         * 
         *      @param ctx
         *      @param rC495
         *      @param trxName
         *      @return
         *      @throws Exception
         */
        public I_RC495 getRC495 (Properties ctx,MLBRFactFiscal[] facts, I_RC495 rC495, String trxName) throws Exception
        {
                /**
                 *      Copia os dados comuns:
                 *              IND_OPER, IND_EMIT, COD_PART, COD_SIT, SER, NUM_DOC, 
                 *              DT_DOC, VL_DOC, IND_PGTO, VL_DESC, VL_PIS, VL_COFINS
                 */
                //PropertyUtils.copyProperties (rC490, getRC100 (ctx,facts, (I_RC100) new RC100(), trxName));

                // Não preencher todo o Documento 
                // e não gerar registro para NF canceladas
                
                if (isCancelled()) {
                    rC495.setCOD_CTA (null);
                    rC495.setCFOP (null);
                    rC495.setCST_COFINS (null);
                    rC495.setVL_ITEM (null);
                    rC495.setVL_BC_COFINS (null);
                    rC495.setALIQ_COFINS (null);
                    rC495.setQUANT_BC_COFINS (Env.ZERO);
                    rC495.setALIQ_COFINS_QUANT (null);
                    rC495.setVL_COFINS (null);
                    return rC495;
                }
                rC495.setCOD_ITEM(getProductValue());
                
                //      Não Obrigatório, porém o Adempiere pode ter regras diferentes para esta informação
                //      então não é possível preencher.
                rC495.setCOD_CTA (null);
                rC495.setCFOP (getLBR_CFOP_Value());
                rC495.setCST_COFINS (getLBR_COFINS_TaxStatus());
                rC495.setVL_ITEM (getLineNetAmt());
                rC495.setVL_BC_COFINS (getLBR_COFINS_TaxBaseAmt());
                rC495.setALIQ_COFINS (getLBR_COFINS_TaxRate());
                rC495.setQUANT_BC_COFINS (Env.ZERO);
                rC495.setALIQ_COFINS_QUANT (null);
                rC495.setVL_COFINS (getLBR_COFINS_TaxAmt());
                        
                return rC495;                
        }       //      getRC495
        
	private RC120 getRC120 (MLBRFactFiscal[] facts) throws Exception
	{
		RC120 rC120 = new RC120();
		
		/**
		 * 	Copia os dados comuns:
		 * 
		 * 	NUM_ITEM, COD_ITEM, DESCR_COMPL, VL_ITEM, VL_DESC, 
		 * 		CST_PIS, VL_BC_PIS, ALIQ_PIS, VL_PIS, VL_BC_COFINS, 
		 * 		ALIQ_COFINS, VL_COFINS, COD_CTA, 
		 */
		PropertyUtils.copyProperties (rC120, getRA100(getCtx(),facts, null));
		//
		rC120.setCOD_DOC_IMP("0");
		rC120.setNUM_DOC_IMP("123");
		rC120.setVL_COFINS_IMP(getLBR_COFINS_NFTaxAmt());
		rC120.setVL_PIS_IMP(getLBR_PIS_NFTaxAmt());
		//
		return rC120;
	}	//	getRC170
	
	private RC170 getRC170 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RC170 rC170 = new RC170();
		
		/**
		 * 	Copia os dados comuns:
		 * 
		 * 	NUM_ITEM, COD_ITEM, DESCR_COMPL, VL_ITEM, VL_DESC, 
		 * 		CST_PIS, VL_BC_PIS, ALIQ_PIS, VL_PIS, VL_BC_COFINS, 
		 * 		ALIQ_COFINS, VL_COFINS, COD_CTA, 
		 */
		PropertyUtils.copyProperties (rC170, getRA170 ());
		//
		rC170.setQTD (getQty());
		rC170.setUNID (getUOMSymbol());
		rC170.setIND_MOV(null);			//	TODO
		rC170.setCST_ICMS(getLBR_ICMS_TaxStatus());
		rC170.setCFOP(getLBR_CFOP_Value());
		rC170.setCOD_NAT(null);			//	TODO
		rC170.setVL_BC_ICMS(getLBR_ICMS_TaxBaseAmt());
		rC170.setALIQ_ICMS(getLBR_ICMS_TaxRate());
		rC170.setVL_ICMS(getLBR_ICMS_TaxAmt());
		rC170.setVL_BC_ICMS_ST(getLBR_ICMSST_TaxBaseAmt());
		rC170.setALIQ_ST(getLBR_ICMSST_TaxRate());
		rC170.setVL_ICMS_ST(getLBR_ICMSST_TaxAmt());
		rC170.setIND_APUR(SPEDUtil.IND_APUR_MENSAL);
		rC170.setCST_IPI(getLBR_IPI_TaxStatus());
		rC170.setCOD_ENQ(null);	//	TODO
		rC170.setVL_BC_IPI(getLBR_IPI_TaxBaseAmt());
		rC170.setALIQ_IPI(getLBR_IPI_TaxRate());
		rC170.setVL_IPI(getLBR_IPI_TaxAmt());
		//
		return rC170;
	}	//	getRC170
	
	public I_RC500 getRC500 (Properties ctx, MLBRFactFiscal[] facts, I_RC500 rC500, String trxName) throws Exception
	{
		
		PropertyUtils.copyProperties (rC500, getRC100 (ctx,facts, (I_RC100) new RC100(), trxName));
		rC500.addC501(getRC501(facts));
		rC500.addC505(getRC505(facts));
		return rC500;
	}	//	getRC500
	
	private RC501 getRC501 (MLBRFactFiscal[] facts) throws Exception
	{
		RC501 rC501 = new RC501();
		
		/**
		 * 	Copia os dados comuns:
		 * 
		 * 	NUM_ITEM, COD_ITEM, DESCR_COMPL, VL_ITEM, VL_DESC, 
		 * 		CST_PIS, VL_BC_PIS, ALIQ_PIS, VL_PIS, VL_BC_COFINS, 
		 * 		ALIQ_COFINS, VL_COFINS, COD_CTA, 
		 */
		PropertyUtils.copyProperties (rC501, getRA100(getCtx(),facts, null));
		//
		rC501.setCST_PIS(getLBR_PIS_TaxStatus ());
		rC501.setVL_ITEM(getLineNetAmt());
		rC501.setVL_BC_PIS(getLBR_PIS_TaxBaseAmt());
		rC501.setALIQ_PIS(getLBR_PIS_TaxRate());
		rC501.setVL_PIS(getLBR_PIS_TaxAmt());
		//
		return rC501;
	}	//	getRC170
	
	private RC505 getRC505 (MLBRFactFiscal[] facts) throws Exception
	{
		RC505 rC505 = new RC505();
		
		/**
		 * 	Copia os dados comuns:
		 * 
		 * 	NUM_ITEM, COD_ITEM, DESCR_COMPL, VL_ITEM, VL_DESC, 
		 * 		CST_PIS, VL_BC_PIS, ALIQ_PIS, VL_PIS, VL_BC_COFINS, 
		 * 		ALIQ_COFINS, VL_COFINS, COD_CTA, 
		 */
		PropertyUtils.copyProperties (rC505, getRA100(getCtx(),facts, null));
		//
		rC505.setCST_COFINS(getLBR_COFINS_TaxStatus ());
		rC505.setVL_ITEM(getLineNetAmt());
		rC505.setVL_BC_COFINS(getLBR_COFINS_TaxBaseAmt());
		rC505.setALIQ_COFINS(getLBR_COFINS_TaxRate());
		rC505.setVL_COFINS(getLBR_COFINS_TaxAmt());
		//
		return rC505;
	}	//	getRC170
	
	/**
	 * 		Este registro tem o objetivo de identificar o estabelecimento da pessoa jurídica a que 
	 * 	se referem as operações e documentos fiscais informados neste bloco. Só devem ser escriturados 
	 * 	no Registro D010 os estabelecimentos que efetivamente tenham realizado as operações especificadas 
	 * 	no Bloco D (prestação ou contratação), relativas a serviços de transporte de cargas e/ou de passageiros, 
	 * 	serviços de comunicação e de telecomunicação, mediante emissão de documento fiscal definido pela 
	 * 	legislação do ICMS e do IPI, que devam ser escrituradas no Bloco D. 
	 * 
	 * 		O estabelecimento que não realizou operações passíveis de registro nesse bloco, no período 
	 * 	da escrituração, não deve ser identificado no Registro D010. 
	 * 
	 * 		Para cada estabelecimento cadastrado em “D010”, deve ser informado nos registros de nível 
	 * 	inferior (Registros Filho) as operações próprias de prestação ou de contratação, mediante emissão 
	 * 	de documento fiscal, no mercado interno ou externo.
	 * 
	 * 	@return Registro D010
	 * 	@throws NoSuchMethodException 
	 * 	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 */
	public RD010 getRD010 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException 
	{
		RD010 rD010 = new RD010 ();
		//
		PropertyUtils.copyProperties (rD010, getRC010 ());
		//
		return rD010;
	}	//	getRD010
	
	/**
	 * 		Este registro deve ser apresentado por todos os contribuintes adquirentes dos serviços 
	 * 	relacionados, que utilizem os documentos previstos para este registro, cuja operação dê 
	 * 	direito à apuração de crédito à pessoa jurídica contratante, na forma da legislação tributária.
	 * 	
	 * 	@param ctx Contexto
	 * @param facts 
	 * 	@param rC100 Registro C100
	 * 	@param trxName	Transação
	 * 	@return Registro C100
	 * 	@throws Exception
	 */
	public I_RD100 getRD100 (Properties ctx, MLBRFactFiscal[] facts, I_RD100 rD100, String trxName) throws Exception
	{
		
		PropertyUtils.copyProperties (rD100, getRC100 (ctx,facts, (I_RC100) new RC100 (), trxName));
		if (!isCancelled())
		{
			rD100.setVL_SERV (getGrandTotal());
			
			//	Process Lines
			//MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);
			
			for (MLBRFactFiscal line : facts)
			{
			    if (this.getLBR_NotaFiscal_ID()==line.getLBR_NotaFiscal_ID())
	                    {
				rD100.addD101 (line.getRD101());
				rD100.addD105 (line.getRD105());
	                    }
			}
		}
		
		//
		return rD100;
	}	//	getRD100
	
	public RD101 getRD101 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD101 rD101 = new RD101 ();
		//
		PropertyUtils.copyProperties (rD101, getRC170 ());
		rD101.setIND_NAT_FRT (SPEDUtil.IND_FRT_SEM);		//	TODO
		//
		return rD101;
	}	//	getRD101
	
	public RD105 getRD105 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD105 rD105 = new RD105 ();
		//
		PropertyUtils.copyProperties (rD105, getRC170 ());
		rD105.setIND_NAT_FRT (SPEDUtil.IND_FRT_SEM);		//	TODO
		//
		return rD105;
	}	//	getRD105
	
	/**
	 * 		Neste registro deverá a pessoa jurídica informar as operações referentes à contratação de 
	 * 	serviços de comunicação ou de telecomunicação que, em função da natureza do serviço e da atividade 
	 * 	econômica desenvolvida pela pessoa jurídica, permita a apuração de créditos de PIS/Pasep e de Cofins, 
	 * 	na forma da legislação tributária.
	 * 
	 * 	@param ctx Contexto
	 * @param facts 
	 * 	@param rC100 Registro C100
	 * 	@param trxName	Transação
	 * 	@return Registro C100
	 * 	@throws Exception
	 */
	public I_RD500 getRD500 (Properties ctx, MLBRFactFiscal[] facts, I_RD500 rD500, String trxName) throws Exception
	{
		PropertyUtils.copyProperties (rD500, getRD100 (ctx,facts, (I_RD100) new RD100 (), trxName));
		rD500.setDT_A_P(getDateDelivered());

		//	Process Lines
		//MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);

		for (MLBRFactFiscal line : facts)
		{
		    if (this.getLBR_NotaFiscal_ID()==line.getLBR_NotaFiscal_ID())
                    {
			rD500.addD501 (line.getRD501(facts));
			rD500.addD505 (line.getRD505(facts));
                    }
		}
		
		return rD500;
	}	//	getRD500
	
	/**
	 * 		D501: COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 21 e 22) – PIS/PASEP
	 * @param facts 
	 * 
	 * 	@return Registro D501
	 * 	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 * 	@throws NoSuchMethodException 
	 */
	public RD501 getRD501 (MLBRFactFiscal[] facts) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD501 rD501 = new RD501 ();
		//
		PropertyUtils.copyProperties (rD501, getRD101 ());
		//
		return rD501;
	}	//	getRD501
	
	/**
	 * 		D505: COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 21 e 22) – COFINS
	 * @param facts 
	 * 	
	 * 	@return	Registro D505
	 * 	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 * 	@throws NoSuchMethodException 
	 */
	public RD505 getRD505 (MLBRFactFiscal[] facts) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD505 rD505 = new RD505 ();
		//
		PropertyUtils.copyProperties (rD505, getRD105 ());
		//
		return rD505;
	}	//	getRD505

	
	// Getters para campos não presentes no dicionário

	public boolean isCancelled() {
		// FIXME: verificar também a situação da NFe
		boolean isCancelled = ! ( getDocStatus().equals("CO") || getDocStatus().equals("CL") );
		
		return isCancelled;
	}

	public boolean isService() {
		
		return this.getProductType().equals( PRODUCTTYPE_Service )  || getC_Charge_ID() > 0;
	}

	public String getLBR_ItemTypeBR() {
		return getLBR_ItemTypeBR( getProductType() , isPurchased() , isSold() );
	}
	
	public static String getLBR_ItemTypeBR( MProduct product ) {
		return getLBR_ItemTypeBR( product.getProductType() , product.isPurchased() , product.isSold() );
	}
	
	public static String getLBR_ItemTypeBR( String productType , boolean purchased , boolean sold ) {

		if ( productType.equals(PRODUCTTYPE_Asset) )
			// imobilizado
			return "08";
		else if ( productType.equals(PRODUCTTYPE_Service) )
			// serviço
			return "09";
		else if ( productType.equals(PRODUCTTYPE_ExpenseType) )
			// uso e consumo
			return "07";
		else if ( productType.equals(PRODUCTTYPE_Item) ) {
			if ( purchased && sold ) 
				// revenda
				return "00";
			else if ( purchased && !sold )
				// matéria prima
				return "01";
			else if ( !purchased && sold )
				// FIXME: detectar "subproduto" (5)
				// acabado
				return "04";
			else {
				// FIXME: decidir entre "em processo" (3) e "intermediario" (6)
				return "06";
			}
		}
		// FIXME: detectar outras situações 

		// Outros
		return "99";

	}

	public BigDecimal getLineTotalAmt() {
		BigDecimal lineTotalAmt = getLineNetAmt()	// valor das mercadorias
				.add(getFreightAmt())				// frete
				.add(getInsuredAmount())			// seguro
				.add(getLBR_IPI_TaxAmt())			// IPI
				.add(getLBR_ICMSST_TaxAmt())		// ICMSST
				.add(getSurcharges());				// sobretaxas (outras despesas)
				
		// Para importação, incluir todos os impostos + siscomex
		if ( getLBR_CFOP_Value().startsWith("3") ) {
			lineTotalAmt = lineTotalAmt.add(getLBR_PIS_TaxAmt())
				.add(getLBR_COFINS_TaxAmt())
				.add(getLBR_ICMS_TaxAmt())
				.add(getLBR_II_TaxAmt())
				.add(this.getLBR_SiscomexAmt());
		}
		
		return (lineTotalAmt);
	}

}	//	MLBRFactFiscal
