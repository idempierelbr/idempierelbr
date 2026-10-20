package org.idempierelbr.nfs.nacional.xml;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
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
 *  - Regime: MSysConfig LBR_ICMS_REGIME (SN = Simples, TN = normal), com
 *    ajustes especificos do padrao nacional (todos opcionais, por org):
 *      LBR_NFSE_NAC_OPSIMPNAC   1 nao optante, 2 MEI, 3 ME/EPP (sobrepoe o LBR_ICMS_REGIME)
 *      LBR_NFSE_NAC_REGAPTRIBSN 1, 2 ou 3 (so' para ME/EPP; padrao 1)
 *      LBR_NFSE_NAC_REGESPTRIB  0 a 6 (regime especial de tributacao; padrao 0)
 *  - Ambiente: coluna LBR_NFeEnv do tipo de documento (1 = producao, 2 = homologacao)
 *  - Substituicao: colunas opcionais do LBR_NFS, lidas so' se existirem:
 *      LBR_NFSeSubstMotivo        codigo da justificativa (01-05, 99; padrao 99)
 *      LBR_NFSeSubstJustificativa texto (na falta, usa LBR_MotivoCancelamentoNFS)
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
		d.tpAmb = getAmbiente(nfs);

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

		MBPartner prestador = getPrestador(nfs);
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

		fillRegime(d);

		d.id = DPSXmlWriter.buildId(d.cLocEmi, tipoInscricao, inscricaoPrestador, d.serie, d.nDPS);

		// ---- substituicao (se a nota indicar qual NFS-e esta substituindo) ----
		String chSubstda = digits(nfs.getLBR_NFSeSubstituida());
		if (!chSubstda.isEmpty() && chSubstda.length() != 50)
			throw new AdempiereException("Chave da NFS-e substituida (LBR_NFSeSubstituida) deve ter 50 digitos");
		if (chSubstda.length() == 50) {
			d.chSubstda = chSubstda;

			// Codigo da justificativa: coluna opcional; sem ela, "99 - Outros"
			String cMotivo = digits(optionalColumn(nfs, "LBR_NFSeSubstMotivo"));
			if (cMotivo.isEmpty())
				cMotivo = "99";
			else if (cMotivo.length() == 1)
				cMotivo = "0" + cMotivo;
			if (!cMotivo.matches("0[1-5]|99"))
				throw new AdempiereException("Codigo da justificativa de substituicao (LBR_NFSeSubstMotivo) deve ser 01 a 05 ou 99");
			d.substCMotivo = cMotivo;

			// Texto: coluna opcional; sem ela, reaproveita LBR_MotivoCancelamentoNFS
			String motivo = optionalColumn(nfs, "LBR_NFSeSubstJustificativa");
			if (motivo == null || motivo.trim().isEmpty())
				motivo = nfs.getLBR_MotivoCancelamentoNFS();
			if (motivo == null || motivo.trim().length() < 15)
				throw new AdempiereException(
						"Substituicao de NFS-e: informe uma justificativa com pelo menos 15 caracteres (LBR_NFSeSubstJustificativa ou LBR_MotivoCancelamentoNFS)");
			motivo = motivo.trim();
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
		// O DPS descreve um unico servico (um cTribNac, uma aliquota). Varias
		// linhas de ISSQN so' sao aceitas se forem a mesma tributacao.
		MLBRDocLineISSQN issqn = issqns[0];
		for (int i = 1; i < issqns.length; i++) {
			MLBRDocLineISSQN o = issqns[i];
			if (!Objects.equals(o.getLBR_ServiceCode(), issqn.getLBR_ServiceCode())
					|| !Objects.equals(o.getLBR_ServiceType(), issqn.getLBR_ServiceType())
					|| !Objects.equals(o.getLBR_ISS_Chargeability(), issqn.getLBR_ISS_Chargeability())
					|| o.isLBR_HasWithHold() != issqn.isLBR_HasWithHold()
					|| !Objects.equals(o.getLBR_ResponsavelRetencao(), issqn.getLBR_ResponsavelRetencao())
					|| o.getLBR_IncidenceCity_ID() != issqn.getLBR_IncidenceCity_ID()
					|| compare(o.getLBR_TaxRate(), issqn.getLBR_TaxRate()) != 0)
				throw new AdempiereException("O DPS do padrao nacional comporta um unico servico, mas as linhas de ISSQN "
						+ "desta NFS tem tributacoes diferentes (codigo de servico, exigibilidade, retencao, municipio de "
						+ "incidencia ou aliquota). Emita uma NFS-e para cada servico.");
		}

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
		BigDecimal descIncond = BigDecimal.ZERO;
		BigDecimal descCond = BigDecimal.ZERO;
		for (MLBRDocLineISSQN i : issqns) {
			if (i.getLBR_UncondDiscountAmt() != null)
				descIncond = descIncond.add(i.getLBR_UncondDiscountAmt());
			if (i.getLBR_CondDiscountAmt() != null)
				descCond = descCond.add(i.getLBR_CondDiscountAmt());
		}
		if (descIncond.signum() > 0)
			d.vDescIncond = money(descIncond);
		if (descCond.signum() > 0)
			d.vDescCond = money(descCond);

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

		// -- aliquota (nao informada quando o ISSQN e' apurado dentro do Simples Nacional / MEI)
		boolean issNoSimples = "2".equals(d.opSimpNac) || ("3".equals(d.opSimpNac) && "1".equals(d.regApTribSN));
		if ("1".equals(d.tribISSQN) && !issNoSimples) {
			BigDecimal rate = issqn.getLBR_TaxRate();
			if (rate == null || rate.signum() <= 0 || rate.compareTo(BigDecimal.TEN) >= 0)
				throw new AdempiereException("Aliquota do ISS (LBR_TaxRate) deve estar entre 0,01 e 9,99");
			d.pAliq = money(rate);
		}
	}

	/** Regime de tributacao do prestador (regTrib) */
	private void fillRegime(DPSData d) {

		int client = nfs.getAD_Client_ID();
		int org = nfs.getAD_Org_ID();

		String opSimpNac = MSysConfig.getValue("LBR_NFSE_NAC_OPSIMPNAC", "", client, org).trim();
		if (opSimpNac.isEmpty()) {
			String regime = MSysConfig.getValue("LBR_ICMS_REGIME", "TN", client, org);
			opSimpNac = "SN".equals(regime) ? "3" : "1"; // ME/EPP ou nao optante
		}
		if (!opSimpNac.matches("[123]"))
			throw new AdempiereException("LBR_NFSE_NAC_OPSIMPNAC deve ser 1 (nao optante), 2 (MEI) ou 3 (ME/EPP)");
		d.opSimpNac = opSimpNac;

		if ("3".equals(opSimpNac)) {
			String regAp = MSysConfig.getValue("LBR_NFSE_NAC_REGAPTRIBSN", "1", client, org).trim();
			if (!regAp.matches("[123]"))
				throw new AdempiereException("LBR_NFSE_NAC_REGAPTRIBSN deve ser 1, 2 ou 3");
			d.regApTribSN = regAp;
		}

		String regEsp = MSysConfig.getValue("LBR_NFSE_NAC_REGESPTRIB", "0", client, org).trim();
		if (!regEsp.matches("[0-6]"))
			throw new AdempiereException("LBR_NFSE_NAC_REGESPTRIB deve ser de 0 a 6");
		d.regEspTrib = regEsp;
	}

	// ------------------------------------------------------------------

	/**
	 * Ambiente (1 = producao, 2 = homologacao), da coluna LBR_NFeEnv do tipo
	 * de documento - o mesmo campo usado pelo NF-e. Usa o tipo de documento
	 * alvo (o mesmo de {@link MLBRNFS#getNFSConfig()}), pois o C_DocType_ID
	 * pode ainda nao estar preenchido num documento em rascunho.
	 */
	public static String getAmbiente(MLBRNFS nfs) {
		int docTypeId = nfs.getC_DocTypeTarget_ID() > 0 ? nfs.getC_DocTypeTarget_ID() : nfs.getC_DocType_ID();
		if (docTypeId <= 0)
			throw new AdempiereException("NFS sem tipo de documento definido");
		String env = MDocType.get(nfs.getCtx(), docTypeId).get_ValueAsString("LBR_NFeEnv");
		if (!"1".equals(env) && !"2".equals(env))
			throw new AdempiereException("Ambiente (LBR_NFeEnv) do tipo de documento deve ser 1 (producao) ou 2 (homologacao)");
		return env;
	}

	/** Parceiro vinculado a organizacao (prestador), com mensagem clara se faltar */
	public static MBPartner getPrestador(MLBRNFS nfs) {
		MBPartner prestador = nfs.getPrestador();
		if (prestador == null)
			throw new AdempiereException("Organizacao sem parceiro de negocio vinculado (prestador). "
					+ "Vincule um parceiro a organizacao para emitir a NFS-e.");
		return prestador;
	}

	/** Valor de uma coluna que pode nao existir na tabela (null se nao existir) */
	public static String optionalColumn(PO po, String columnName) {
		if (po.get_ColumnIndex(columnName) < 0)
			return null;
		Object v = po.get_Value(columnName);
		return v == null ? null : v.toString();
	}

	private static int compare(BigDecimal a, BigDecimal b) {
		return (a == null ? BigDecimal.ZERO : a).compareTo(b == null ? BigDecimal.ZERO : b);
	}

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

	public static String digits(String s) {
		return s == null ? "" : s.replaceAll("[^0-9]", "");
	}

	private static String leftPad(String s, int size) {
		StringBuilder sb = new StringBuilder();
		for (int i = s.length(); i < size; i++)
			sb.append('0');
		return sb.append(s).toString();
	}

}
