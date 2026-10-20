package org.idempierelbr.nfs.nacional.xml;

import static org.idempierelbr.nfs.nacional.xml.XmlText.el;
import static org.idempierelbr.nfs.nacional.xml.XmlText.leftPad;

/**
 * Serializa um {@link DPSData} em XML respeitando a ORDEM dos elementos
 * definida em tiposComplexos_v1.01.xsd (TCDPS, TCInfDPS, TCInfoPrestador,
 * TCInfoPessoa, TCEndereco, TCServ, TCCServ, TCInfoValores, TCInfoTributacao,
 * TCTribMunicipal, TCTribTotal).
 *
 * Nao gera a assinatura: ela e' adicionada depois como filha de DPS (irma de
 * infDPS), referenciando o atributo Id de infDPS.
 */
public class DPSXmlWriter {

	public static final String NAMESPACE = "http://www.sped.fazenda.gov.br/nfse";

	public static String toXml(DPSData d) {

		StringBuilder x = new StringBuilder();
		x.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		x.append("<DPS xmlns=\"").append(NAMESPACE).append("\" versao=\"").append(d.versao).append("\">");
		x.append("<infDPS Id=\"").append(d.id).append("\">");

		el(x, "tpAmb", d.tpAmb);
		el(x, "dhEmi", d.dhEmi);
		el(x, "verAplic", d.verAplic);
		el(x, "serie", d.serie);
		el(x, "nDPS", d.nDPS);
		el(x, "dCompet", d.dCompet);
		el(x, "tpEmit", d.tpEmit);
		el(x, "cLocEmi", d.cLocEmi);

		// subst (TCSubstituicao) - so' quando ha' uma NFS-e sendo substituida.
		// Vem antes de "prest" na ordem do schema.
		if (d.chSubstda != null && !d.chSubstda.isEmpty()) {
			x.append("<subst>");
			el(x, "chSubstda", d.chSubstda);
			el(x, "cMotivo", d.substCMotivo);
			el(x, "xMotivo", d.substXMotivo);
			x.append("</subst>");
		}

		// prest (TCInfoPrestador): choice(CNPJ|CPF), CAEPF?, IM?, xNome?, end?, fone?, email?, regTrib
		x.append("<prest>");
		el(x, "CNPJ", d.prestCNPJ);
		el(x, "CPF", d.prestCPF);
		el(x, "IM", d.prestIM);
		x.append("<regTrib>");
		el(x, "opSimpNac", d.opSimpNac);
		el(x, "regApTribSN", d.regApTribSN);
		el(x, "regEspTrib", d.regEspTrib);
		x.append("</regTrib>");
		x.append("</prest>");

		// toma (TCInfoPessoa): choice(CNPJ|CPF), CAEPF?, IM?, xNome, end?, fone?, email?
		if (d.tomaNome != null) {
			x.append("<toma>");
			el(x, "CNPJ", d.tomaCNPJ);
			el(x, "CPF", d.tomaCPF);
			el(x, "xNome", d.tomaNome);
			if (d.tomaEnd != null) {
				DPSData.Endereco e = d.tomaEnd;
				// TCEndereco: choice(endNac|endExt), xLgr, nro, xCpl?, xBairro
				x.append("<end>");
				x.append("<endNac>");
				el(x, "cMun", e.cMun);
				el(x, "CEP", e.cep);
				x.append("</endNac>");
				el(x, "xLgr", e.xLgr);
				el(x, "nro", e.nro);
				el(x, "xCpl", e.xCpl);
				el(x, "xBairro", e.xBairro);
				x.append("</end>");
			}
			x.append("</toma>");
		}

		// serv (TCServ): locPrest, cServ, ...
		x.append("<serv>");
		x.append("<locPrest>");
		el(x, "cLocPrestacao", d.cLocPrestacao);
		x.append("</locPrest>");
		x.append("<cServ>");
		el(x, "cTribNac", d.cTribNac);
		el(x, "cTribMun", d.cTribMun);
		el(x, "xDescServ", d.xDescServ);
		el(x, "cNBS", d.cNBS);
		x.append("</cServ>");
		x.append("</serv>");

		// valores (TCInfoValores): vServPrest, vDescCondIncond?, vDedRed?, trib
		x.append("<valores>");
		x.append("<vServPrest>");
		el(x, "vServ", d.vServ);
		x.append("</vServPrest>");
		if (d.vDescIncond != null || d.vDescCond != null) {
			x.append("<vDescCondIncond>");
			el(x, "vDescIncond", d.vDescIncond);
			el(x, "vDescCond", d.vDescCond);
			x.append("</vDescCondIncond>");
		}
		// trib (TCInfoTributacao): tribMun, tribFed?, totTrib
		x.append("<trib>");
		x.append("<tribMun>");
		el(x, "tribISSQN", d.tribISSQN);
		el(x, "tpImunidade", d.tpImunidade);
		el(x, "tpRetISSQN", d.tpRetISSQN);
		el(x, "pAliq", d.pAliq);
		x.append("</tribMun>");
		x.append("<totTrib>");
		el(x, "indTotTrib", d.indTotTrib);
		x.append("</totTrib>");
		x.append("</trib>");
		x.append("</valores>");

		x.append("</infDPS>");
		x.append("</DPS>");
		return x.toString();
	}

	/**
	 * Id do DPS (TSIdDPS): "DPS" + Cod.Mun (7) + Tipo de Inscricao Federal (1)
	 * + Inscricao Federal (14; CPF completado com zeros a esquerda) + Serie (5)
	 * + Numero do DPS (15).
	 *
	 * @param tipoInscricao valor do "Tipo de Inscricao Federal". O XSD nao
	 *                      lista os codigos; a convencao usada aqui (1 = CPF,
	 *                      2 = CNPJ) deve ser confirmada no manual/homologacao.
	 */
	public static String buildId(String cLocEmi, String tipoInscricao, String inscricaoFederal,
			String serie, String nDPS) {
		return "DPS" + leftPad(cLocEmi, 7) + tipoInscricao + leftPad(inscricaoFederal, 14)
				+ leftPad(serie, 5) + leftPad(nDPS, 15);
	}
}
