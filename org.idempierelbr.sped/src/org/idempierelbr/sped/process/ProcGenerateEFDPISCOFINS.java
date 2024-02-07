/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.idempierelbr.sped.process;

import java.io.File;
import java.sql.Timestamp;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.sped.contrib.bean.Bloco0;
import org.idempierelbr.sped.contrib.bean.Bloco1;
import org.idempierelbr.sped.contrib.bean.Bloco9;
import org.idempierelbr.sped.contrib.bean.BlocoA;
import org.idempierelbr.sped.contrib.bean.BlocoC;
import org.idempierelbr.sped.contrib.bean.BlocoD;
import org.idempierelbr.sped.contrib.bean.BlocoF;
import org.idempierelbr.sped.contrib.bean.BlocoM;
import org.idempierelbr.sped.contrib.bean.R0000;
import org.idempierelbr.sped.contrib.bean.R0100;
import org.idempierelbr.sped.contrib.bean.SPEDContrib;
import org.idempierelbr.sped.icmsipi.util.CounterSped;
import org.idempierelbr.sped.icmsipi.util.SPEDComparator;
import org.idempierelbr.sped.model.MLBRFactFiscal;
import org.idempierelbr.sped.model.MLBRTaxAssessment;
import org.idempierelbr.sped.model.X_LBR_SPED;
import org.idempierelbr.sped.utils.SPEDUtil;


/**
 * Processo para validar e gerar os Registros do SPED Contribuicoes
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: ProcGenerateEFDPISCOFINS.java, v1.0 2015/12/04 11:22:13 AM,
 *          arthurmelo $
 */
public class ProcGenerateEFDPISCOFINS extends SvrProcess {
    /**
     * Context & Trx
     */
    private Properties ctx;
    private String trxName;

    /**
     * Periods
     */
    private int p_C_Period_ID = 0;
    private Timestamp dateFrom;
    private Timestamp dateTo;

    /**
     * Organization
     */
    private int p_AD_Org_ID = 0;
    private MOrgInfo orgInfo;

    /**
     * Cód. SPED
     */
    private String p_CodFin = "0";
    private String p_RecAnterior = "";

    /**
     * SPED
     */
    private int p_LBR_SPED_ID = 0;
    private X_LBR_SPED SPED;
    /**
     * Log
     */
    private CLogger log = CLogger.getCLogger(ProcGenerateEFDPISCOFINS.class);
    /**
     * filename do arquivo sped gerado.
     */
    private String p_filename;

    /**
     * Prepare, get Parameters.
     */
    protected void prepare() {

        ProcessInfoParameter[] para = getParameter();
        for (int i = 0; i < para.length; i++) {
            /* parametros para futuro desvinculo com janela lbr_sped*/
            String name = para[i].getParameterName();
            if (para[i].getParameter() == null)
                ;
            else if (name.equals(MPeriod.COLUMNNAME_C_Period_ID)) {
                p_C_Period_ID = para[i].getParameterAsInt();
            } else if (name.equals(MOrgInfo.COLUMNNAME_AD_Org_ID)) {
                p_AD_Org_ID = para[i].getParameterAsInt();
            } else if (name.equals("p_CodFin")) //
            {
                p_CodFin = (String) para[i].getParameter();
            } else if (name.equals("p_RecAnterior")) //
            {
                p_RecAnterior = (String) para[i].getParameter();
            } else
                log.log(Level.SEVERE, "Unknown Parameter: " + name);
        }
        //

    } // prepare

    /**
     * Perform process.
     * 
     * @return Message (variables are parsed)
     * @throws Exception
     *             if not successful e.g.
     */
    protected String doIt() throws Exception {

        ctx = getCtx();
        trxName = get_TrxName();
        long start = System.currentTimeMillis();
        /*
         * Obtem o id do sped na janela SPED
         */
        p_LBR_SPED_ID = getRecord_ID();

        /*
         * Objeto do Sped
         */
        SPED = new X_LBR_SPED(ctx, p_LBR_SPED_ID, trxName);

        p_C_Period_ID = SPED.getC_Period_ID();
        p_AD_Org_ID = SPED.getAD_Org_ID();

        /**
         * Check Parameters
         */
        if (p_C_Period_ID <= 0)
            throw new IllegalArgumentException("@FillMandatory@  @C_Period_ID@");

        if (p_AD_Org_ID == 0)
            throw new IllegalArgumentException("@AD_Org_ID@ @Mandatory@");

        /*
         * Carregar Período e datas
         */
        MPeriod period = new MPeriod(ctx, p_C_Period_ID, trxName);

        dateFrom = period.getStartDate();
        dateTo = period.getEndDate();
        //
        orgInfo = MOrgInfo.get(ctx, p_AD_Org_ID, trxName);

        //DB.executeUpdate("Drop table lbr_factfiscal", null);
        //DB.executeUpdate("CREATE TABLE lbr_factfiscal AS SELECT * FROM lbr_factfiscalBase", null);

        try {
            genSPEDContrib();
        } catch (AdempiereException e) {
            // Erro já tratado no gerador
            throw e;
        } catch (Exception e) {
            e.printStackTrace();

            // Erro genérico
            throw new AdempiereException("Unkown Error: " + e.getLocalizedMessage());
        }

        /*
         * Tempo Final
         */
        long end = System.currentTimeMillis();          
        String tempoDecorrido = AdempiereLBR.executionTime(start, end);
        
        /*
         * Retorno
         */
        return "Arquivo(s) Gerado(s) com  " + (p_filename.equals(null) ? Msg.getMsg(Env.getAD_Language(ctx), "Error") : "Sucesso: "+p_filename) + 
               " ** Tempo decorrido: " + tempoDecorrido ;
    } // doIt

    /**
     * Gera o Arquivo do SPED
     * 
     * @throws AdempiereException
     *             , Exception
     */
    private void genSPEDContrib() throws AdempiereException, Exception {
        
        //Zerar Contadores (estaticos)
        CounterSped.clear();
        
        SPEDUtil.processFacts(ctx, MLBRFactFiscal.get(ctx, dateFrom, dateTo, p_AD_Org_ID, null, null), SPEDUtil.TYPE_CONTRIB, trxName);
        //MLBRFactFiscal.get(getCtx(), dateFrom, dateTo, p_AD_Org_ID, null, null);
        
        // Inicio do Arquivo
        Bloco0 b0 = new Bloco0();
        BlocoA bA = new BlocoA();
        BlocoC bC = new BlocoC();
        BlocoD bD = new BlocoD();
        BlocoF bF = new BlocoF();
        BlocoM bM = new BlocoM();
        Bloco1 b1 = new Bloco1();
        Bloco9 b9 = new Bloco9();

        // Registro 0000
        b0.setR0000(SPEDUtil.fillR0000(new R0000(), ctx, dateFrom, dateTo, p_CodFin, orgInfo, "", p_RecAnterior, trxName));
        // Registro 0100
        b0.setR0100((R0100) SPEDUtil.fillR0100(new R0100(), ctx, orgInfo, trxName));
        // Registro 0110
        b0.setR0110(SPEDUtil.getR0110(SPEDUtil.COD_INC_TRIB_CUM, SPEDUtil.IND_APRO_CRED_DIRETA, SPEDUtil.COD_TIPO_CONT_ALIQ_BASICA, ""));
        // Registro 0140
        b0.setR0140(SPEDUtil.getR0140(ctx, new MOrgInfo[] { orgInfo }, trxName));
        // Registro 0150
        b0.setR0150(SPEDUtil.getR0150());
        // Registro 0190
        b0.setR0190(SPEDUtil.getR0190());
        // Registro 0200
        b0.setR0200(SPEDUtil.getR0200());

        // Registro A010
        bA.setRA010(SPEDUtil.getRA010());
        // Registro A100
        bA.setRA100(SPEDUtil.getRA100());

        // Registro C010
        bC.setRC010(SPEDUtil.getRC010());
        // Registro C100
        bC.setRC100(SPEDUtil.getRC100());
        // Registro C490
        bC.setRC490(SPEDUtil.getRC490());
        // Registro C491
        bC.setRC491(SPEDUtil.getRC491());
        // Registro C495
        bC.setRC495(SPEDUtil.getRC495());
        // Registro C500
        bC.setRC500(SPEDUtil.getRC500());

        // Registro D010
        bD.setRD010(SPEDUtil.getRD010());
        // Registro D100
        bD.setRD100(SPEDUtil.getRD100());
        // Registro D500
        bD.setRD500(SPEDUtil.getRD500());

        // Registro M100
        // bM.setRM100(SPEDUtil.getRM100 (p_C_Period_ID, orgInfo.getAD_Org_ID()));
        // Registro M200
        bM.setRM200(SPEDUtil.getRM200());

        /**
         * PIS - M205
         */

        MLBRTaxAssessment m_taxAssessmentPIS = MLBRTaxAssessment.get(getCtx(), p_AD_Org_ID, "PISPROD", p_C_Period_ID, null);
        if (m_taxAssessmentPIS != null && m_taxAssessmentPIS.get_ID() > 0) {
            bM.getRM200().setRM205(SPEDUtil.getRM205(m_taxAssessmentPIS));
        }

        // Registro M400
        bM.setRM400(SPEDUtil.getRM400());
        // Registro M500
        // bM.setRM500(SPEDUtil.getRM500 (p_C_Period_ID, orgInfo.getAD_Org_ID()));
        // Registro M600
        bM.setRM600(SPEDUtil.getRM600());

        /**
         * COFINS - M605
         */

        MLBRTaxAssessment m_taxAssessmentCOFINS = MLBRTaxAssessment.get(getCtx(), p_AD_Org_ID, "COFINSPROD", p_C_Period_ID, null);
        if (m_taxAssessmentCOFINS != null && m_taxAssessmentCOFINS.get_ID() > 0) {
            bM.getRM600().setRM605(SPEDUtil.getRM605(m_taxAssessmentCOFINS));
        }

        // Registro M800
        bM.setRM800(SPEDUtil.getRM800());
        /*
         * Nome do arquivo
         * 
         * EDF_Contrib_CNPJ_DATA.txt
         */

        Properties ctx = getCtx();
        String trx = get_TrxName();
        MOrg org = new MOrg(ctx, p_AD_Org_ID, trx);
        MBPartner bpLinked2Org = new MBPartner(ctx, org.getLinkedC_BPartner_ID(trx), trx);
        p_filename = "EFD_Contrib_" + TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")) + "_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
        SPEDContrib sped = new SPEDContrib();
        sped.setB0((Bloco0) b0.get(SPEDUtil.TYPE_CONTRIB));
        sped.setBA((BlocoA) bA.get(SPEDUtil.TYPE_CONTRIB));
        sped.setBC((BlocoC) bC.get(SPEDUtil.TYPE_CONTRIB));
        sped.setBD((BlocoD) bD.get(SPEDUtil.TYPE_CONTRIB));
        sped.setBF((BlocoF) bF.get(SPEDUtil.TYPE_CONTRIB));
        sped.setBM((BlocoM) bM.get(SPEDUtil.TYPE_CONTRIB));
        sped.setB1((Bloco1) b1.get(SPEDUtil.TYPE_CONTRIB));

        // Registro 9
        Map<String, Integer> regCount = new TreeMap<String, Integer>(SPEDComparator.get());
        sped.getCount(regCount);

        b9.setR9900(SPEDUtil.getR9900(SPEDUtil.TYPE_CONTRIB, regCount));
        b9.setR9999(SPEDUtil.getR9999(SPEDUtil.TYPE_CONTRIB, regCount));
        sped.setB9((Bloco9) b9.get(SPEDUtil.TYPE_CONTRIB));

        /*
         * Gerar Arquivo no disco
         */
        File file = new File(TextUtil.generateFile(sped.toString(), p_filename));

        try {
            // Anexa o XML na NF
            MAttachment attachNFe = SPED.createAttachment();
            attachNFe.addEntry(file);
            attachNFe.save(null);
        } catch (Exception e) {
            log.log(Level.SEVERE, "Error saving SPED", e);
        }

    } // genSPEDContrib

} // ProcGenerateEFDPISCOFINS