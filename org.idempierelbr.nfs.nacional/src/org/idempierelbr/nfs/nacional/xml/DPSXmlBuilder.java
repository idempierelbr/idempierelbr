package org.idempierelbr.nfs.nacional.xml;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.idempierelbr.base.model.MLBRDocLineDetailsNFS;
import org.idempierelbr.base.model.MLBRDocLineISSQN;
import org.idempierelbr.base.model.MLBRNFS;
import org.idempierelbr.base.model.X_LBR_DocLine_ISSQN;

/**
 * Le os dados de uma {@link MLBRNFS} e monta o DPS conforme o schema nacional
 * v1.01 (DPS_v1.01.xsd / tiposComplexos_v1.01.xsd). O XML em si e' gerado por
 * {@link DPSXmlWriter}, que ja foi validado contra os XSDs oficiais.
 *
 * Convencoes do LBR usadas no mapeamento (as mesmas do modulo NF-e):
 *  - C_Location: Address1 = logradouro, Address2 = numero, Address3 = bairro,
 *    Address4 = complemento; municipio via C_City.LBR_CityCode (IBGE)
 *  - CNPJ/CPF: colunas LBR_CNPJ / LBR_CPF do C_BPartner
 *  - Inscricao municipal: LBR_CCM do C_BPartner
 *  - Regime: MSysConfig LBR_ICMS_REGIME (SN = Simples, TN = normal)
 *  - Ambiente: coluna LBR_NFeEnv do C_DocType (1 = producao, 2 = homologacao)
 *  - Servico/ISSQN: MLBRDocLineISSQN da linha (LBR_DocLine_Details)
 */
public class DPSXmlBuilder {

	private static final DateTimeFormatter DH_EMI = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ssxxx");

	private final MLBRNFS nfs;

	public DPSXmlBuilder(MLBRNFS nfs) {
		this.nfs = nfs;
	}

	/** Gera o XML do DPS, ainda SEM assinatura. */
	public String build() {
		return DPSXmlWriter.toXml(buildData());
	}

	public DPSData buildData() {

		DPSData d = new DPSData();

		// ---- ambiente ----
		MDocType docType = MDocType.get(nfs.getCtx(), nfs.getC_DocType_ID());
		String env = docType.get_ValueAsString("LBR_NFeEnv");
		if (!"1".equals(env) && !"2".equals(env))
			throw new AdempiereException("Ambiente (LBR_NFeEnv) do tipo de documento deve ser 1 (producao) ou 2 (homologacao)");
		d.tpAmb = env;

		// ---- identificacao ----
		// Data/hora recuada 1 minuto para evitar rejeicao por relogio local adiantado
		d.dhEmi = OffsetDateTime.now().withNano(0).minusMinutes(1).format(DH_EMI);
		d.verAplic = "idempierelbr-nfs-nac-1.0";
		d.serie = digits(nfs.getLBR_RPSSerie());
		if (d.serie.isEmpty() || d.serie.length() > 5)
			throw new AdempiereException("Serie do DPS (LBR_RPSSerie) deve ter de 1 a 5 digitos");
		d.nDPS = digits(nfs.getLBR_RPSNumero()).replaceFirst("^0+", "");
		if (!d.nDPS.matches("[1-9][0-9]{0,14}"))
			throw new AdempiereException("Numero do DPS (LBR_RPSNumero) invalido: deve ser numerico, sem zeros a esquerda, ate 15 digitos");
		d.dCompet = nfs.getDateDoc().toLocalDateTime().toLocalDate().toString();
		d.tpEmit = "1"; // emitido pelo prestador

		// ---- prestador ----
		MOrgInfo orgInfo = MOrgInfo.get(nfs.getCtx(), nfs.getAD_Org_ID(), nfs.get_TrxName());
		d.cLocEmi = cityCode(new MLocation(nfs.getCtx(), orgInfo.getC_Location_ID(), nfs.get_TrxName()),
				"Prestador");

		MBPartner prestador = nfs.getPrestador();
		String cnpj = digits(prestador.get_ValueAsString("LBR_CNPJ"));
		String cpf = digits(prestador.get_ValueAsString("LBR_CPF"));
		String inscricaoPrestador;
		String tipoInscricao;
		if (cnpj.length() == 14) {
			d.prestCNPJ = cnpj;
			inscricaoPrestador = cnpj;
			tipoInscricao = "2"; // TODO confirmar codigo (assumido 1 = CPF, 2 = CNPJ)
		} else if (cpf.length() == 11) {
			d.prestCPF = cpf;
			inscricaoPrestador = cpf;
			tipoInscricao = "1";
		} else
			throw new AdempiereException("Prestador sem CNPJ/CPF valido (LBR_CNPJ / LBR_CPF)");

		String im = prestador.get_ValueAsString("LBR_CCM").replaceAll("[^0-9A-Za-z]", "");
		if (!im.isEmpty())
			d.prestIM = im.length() > 15 ? im.substring(0, 15) : im;

		// Nao enviamos xNome/end/fone/email do prestador: sao opcionais no schema
		// e, quando o prestador emite, o ADN os obtem do cadastro nacional.

		String regime = MSysConfig.getValue("LBR_ICMS_REGIME", "TN", nfs.getAD_Client_ID(), nfs.getAD_Org_ID());
		if ("SN".equals(regime)) {
			d.opSimpNac = "3";   // ME/EPP (LBR nao distingue MEI)
			d.regApTribSN = "1"; // tributos federais e municipal apurados pelo SN
		} else
			d.opSimpNac = "1";   // nao optante
		d.regEspTrib = "0";      // nenhum

		d.id = DPSXmlWriter.buildId(d.cLocEmi, tipoInscricao, inscricaoPrestador, d.serie, d.nDPS);

		// ---- substituicao (se a nota indicar qual NFS-e esta substituindo) ----
		String chSubstda = digits(nfs.getLBR_NFSeSubstituida());
		if (chSubstda.length() == 50) {
			d.chSubstda = chSubstda;
			// TODO: nao existe hoje um campo proprio no LBR_NFS para escolher o
			// codigo de justificativa (01 a 05, ou 99). Ate' existir, fica fixo
			// em "99 - Outros" e o texto obrigatorio (>=15 caracteres) reaproveita
			// LBR_MotivoCancelamentoNFS, que e' o campo de texto livre mais
			// proximo disso hoje no cadastro.
			d.substCMotivo = "99";
			String motivo = nfs.getLBR_MotivoCancelamentoNFS();
			if (motivo == null || motivo.trim().length() < 15)
				throw new AdempiereException(
						"Substituicao de NFS-e: informe uma justificativa com pelo menos 15 caracteres (hoje reaproveitando LBR_MotivoCancelamentoNFS)");
			d.substXMotivo = motivo.length() > 255 ? motivo.substring(0, 255) : motivo;
		}

		// ---- tomador ----
		fillTomador(d);

		// ---- servico e valores ----
		fillServicoValores(d);

		return d;
	}

	private void fillTomador(DPSData d) {

		MBPartner bp = new MBPartner(nfs.getCtx(), nfs.getC_BPartner_ID(), nfs.get_TrxName());
		String cnpj = digits(bp.get_ValueAsString("LBR_CNPJ"));
		String cpf = digits(bp.get_ValueAsString("LBR_CPF"));

		if (cnpj.length() == 14)
			d.tomaCNPJ = cnpj;
		else if (cpf.length() == 11)
			d.tomaCPF = cpf;
		else
			return; // tomador sem documento: bloco toma e' opcional no schema

		d.tomaNome = bp.getName();

		if (nfs.getC_BPartner_Location_ID() > 0) {
			MLocation loc = new MBPartnerLocation(nfs.getCtx(), nfs.getC_BPartner_Location_ID(), nfs.get_TrxName())
					.getLocation(false);

			if (loc.getC_Country_ID() != MLBRNFS.BRAZIL)
				throw new AdempiereException("Tomador no exterior ainda nao suportado (endExt/NIF)");

			DPSData.Endereco e = new DPSData.Endereco();
			e.cMun = cityCode(loc, "Tomador");
			e.cep = digits(loc.getPostal());
			e.xLgr = required(loc.getAddress1(), "Tomador: logradouro (Address1)");
			e.nro = required(loc.getAddress2(), "Tomador: numero (Address2)");
			e.xBairro = required(loc.getAddress3(), "Tomador: bairro (Address3)");
			e.xCpl = loc.getAddress4() == null || loc.getAddress4().trim().isEmpty() ? null : loc.getAddress4().trim();
			if (e.cep.length() != 8)
				throw new AdempiereException("Tomador: CEP deve ter 8 digitos");
			d.tomaEnd = e;
		}
	}

	private void fillServicoValores(DPSData d) {

		MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS.getOfPO(nfs);
		if (details == null)
			throw new AdempiereException("NFS sem detalhes de linha (LBR_DocLine_Details)");
		MLBRDocLineISSQN[] issqns = MLBRDocLineISSQN.getOfDetails(details);
		if (issqns.length == 0)
			throw new AdempiereException("NFS sem ISSQN calculado (LBR_DocLine_ISSQN)");
		MLBRDocLineISSQN issqn = issqns[0];

		// -- local da prestacao: municipio de incidencia, ou o do prestador
		d.cLocPrestacao = d.cLocEmi;
		if (issqn.getLBR_IncidenceCity_ID() > 0) {
			String code = new MCity(nfs.getCtx(), issqn.getLBR_IncidenceCity_ID(), nfs.get_TrxName())
					.get_ValueAsString("LBR_CityCode");
			if (code != null && !code.trim().isEmpty())
				d.cLocPrestacao = leftPad(digits(code), 7);
		}

		// -- codigo de tributacao nacional (6 digitos)
		d.cTribNac = digits(issqn.getLBR_ServiceCode());
		if (d.cTribNac.length() != 6)
			d.cTribNac = digits(issqn.getLBR_ServiceType());
		if (d.cTribNac.length() != 6)
			throw new AdempiereException("Informe o codigo de tributacao nacional (6 digitos: item + subitem + desdobro da LC 116) "
					+ "em LBR_ServiceCode (ISSQN da linha)");

		String cTribMun = digits(issqn.getLBR_ServiceCodeOfCity());
		if (cTribMun.matches("[0-9]{3}"))
			d.cTribMun = cTribMun;
		String nbs = digits(issqn.getLBR_CodigoNBS());
		if (nbs.length() == 9)
			d.cNBS = nbs;

		String desc = nfs.getDescription();
		if (desc == null || desc.trim().isEmpty()) {
			if (nfs.getM_Product_ID() > 0)
				desc = new MProduct(nfs.getCtx(), nfs.getM_Product_ID(), nfs.get_TrxName()).getName();
		}
		desc = required(desc, "Descricao do servico");
		d.xDescServ = desc.length() > 2000 ? desc.substring(0, 2000) : desc;

		// -- valores
		BigDecimal gross = details.getLBR_GrossAmt();
		if (gross == null || gross.signum() <= 0)
			gross = nfs.getTotalLines();
		if (gross == null || gross.signum() <= 0)
			throw new AdempiereException("Valor do servico deve ser maior que zero");
		d.vServ = money(gross);
		if (issqn.getLBR_UncondDiscountAmt() != null && issqn.getLBR_UncondDiscountAmt().signum() > 0)
			d.vDescIncond = money(issqn.getLBR_UncondDiscountAmt());
		if (issqn.getLBR_CondDiscountAmt() != null && issqn.getLBR_CondDiscountAmt().signum() > 0)
			d.vDescCond = money(issqn.getLBR_CondDiscountAmt());

		// -- tributacao do ISSQN
		String charge = issqn.getLBR_ISS_Chargeability();
		if (X_LBR_DocLine_ISSQN.LBR_ISS_CHARGEABILITY_Exigivel.equals(charge))
			d.tribISSQN = "1";
		else if (X_LBR_DocLine_ISSQN.LBR_ISS_CHARGEABILITY_NaoIncidencia.equals(charge))
			d.tribISSQN = "4";
		else if (X_LBR_DocLine_ISSQN.LBR_ISS_CHARGEABILITY_Exportacao.equals(charge))
			d.tribISSQN = "3";
		else
			throw new AdempiereException("Exigibilidade do ISS (LBR_ISS_Chargeability = " + charge
					+ ") ainda nao mapeada para o padrao nacional (imunidade, isencao e exigibilidade suspensa exigem dados adicionais)");

		// -- retencao
		if (!issqn.isLBR_HasWithHold())
			d.tpRetISSQN = "1";
		else if (X_LBR_DocLine_ISSQN.LBR_RESPONSAVELRETENCAO_Tomador.equals(issqn.getLBR_ResponsavelRetencao()))
			d.tpRetISSQN = "2";
		else if (X_LBR_DocLine_ISSQN.LBR_RESPONSAVELRETENCAO_Intermediário.equals(issqn.getLBR_ResponsavelRetencao()))
			d.tpRetISSQN = "3";
		else
			throw new AdempiereException("ISS retido: informe o responsavel pela retencao (LBR_ResponsavelRetencao)");

		// -- aliquota (nao informada quando o ISSQN e' apurado dentro do Simples Nacional)
		boolean issNoSimples = "3".equals(d.opSimpNac) && "1".equals(d.regApTribSN);
		if ("1".equals(d.tribISSQN) && !issNoSimples) {
			BigDecimal rate = issqn.getLBR_TaxRate();
			if (rate == null || rate.signum() <= 0 || rate.compareTo(BigDecimal.TEN) >= 0)
				throw new AdempiereException("Aliquota do ISS (LBR_TaxRate) deve estar entre 0,01 e 9,99");
			d.pAliq = money(rate);
		}
	}

	// ------------------------------------------------------------------

	private String cityCode(MLocation loc, String quem) {
		if (loc.getC_City_ID() <= 0)
			throw new AdempiereException(quem + ": cidade (C_City) nao definida no endereco");
		String code = digits(new MCity(nfs.getCtx(), loc.getC_City_ID(), nfs.get_TrxName())
				.get_ValueAsString("LBR_CityCode"));
		if (code.isEmpty())
			throw new AdempiereException(quem + ": cidade sem codigo IBGE (LBR_CityCode)");
		return leftPad(code, 7);
	}

	private static String required(String s, String campo) {
		if (s == null || s.trim().isEmpty())
			throw new AdempiereException(campo + " nao informado");
		return s.trim();
	}

	private static String money(BigDecimal v) {
		return v.setScale(2, RoundingMode.HALF_UP).toPlainString();
	}

	private static String digits(String s) {
		return s == null ? "" : s.replaceAll("[^0-9]", "");
	}

	private static String leftPad(String s, int size) {
		StringBuilder sb = new StringBuilder();
		for (int i = s.length(); i < size; i++)
			sb.append('0');
		return sb.append(s).toString();
	}

}
