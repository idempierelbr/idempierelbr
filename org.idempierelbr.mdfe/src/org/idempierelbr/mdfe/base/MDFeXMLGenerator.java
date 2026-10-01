package org.idempierelbr.mdfe.base;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MRegion;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.base.util.BPartnerUtil;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeAutXML;
import org.idempierelbr.mdfe.model.X_LBR_MDFeCIOT;
import org.idempierelbr.mdfe.model.X_LBR_MDFeComp;
import org.idempierelbr.mdfe.model.X_LBR_MDFeCondutor;
import org.idempierelbr.mdfe.model.X_LBR_MDFeContratante;
import org.idempierelbr.mdfe.model.X_LBR_MDFeDoc;
import org.idempierelbr.mdfe.model.X_LBR_MDFeInfPag;
import org.idempierelbr.mdfe.model.X_LBR_MDFeLacre;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunCarrega;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunDescarga;
import org.idempierelbr.mdfe.model.X_LBR_MDFePercurso;
import org.idempierelbr.mdfe.model.X_LBR_MDFePerigoso;
import org.idempierelbr.mdfe.model.X_LBR_MDFePrazo;
import org.idempierelbr.mdfe.model.X_LBR_MDFeReboque;
import org.idempierelbr.mdfe.model.X_LBR_MDFeSeg;
import org.idempierelbr.mdfe.model.X_LBR_MDFeValePed;
import org.idempierelbr.mdfe.util.MDFeUtil;
import org.idempierelbr.mdfe.util.MDFeXmlWriter;
import org.idempierelbr.mdfe.util.MDFeXsdValidator;

/**
 * Gera o XML do MDF-e (modelo 58, leiaute 3.00) a partir de um {@link MLBRMDFe}.
 *
 * <p>A ordem das chamadas segue o {@code xs:sequence} de
 * mdfeTiposBasico_v3.00.xsd e mdfeModalRodoviario_v3.00.xsd, versionados em
 * {@code mdfe/xsd/}. Cada bloco leva no comentario o nome do grupo do schema,
 * para que a conferencia contra o leiaute seja direta.
 *
 * <p>O XML sai <b>sem assinatura</b>: assinar e responsabilidade de quem chama
 * ({@code AssinaturaDigital.Assinar(xml, orgInfo, RECEPCAO_MDFE)}), porque a
 * assinatura vem depois da validacao de schema e antes do envio.
 */
public class MDFeXMLGenerator
{
	/** Versao do leiaute do MDF-e. */
	public static final String VERSAO = "3.00";

	/** Versao do leiaute do modal rodoviario. */
	public static final String VERSAO_MODAL = "3.00";

	/** Namespace do MDF-e. */
	public static final String NAMESPACE = "http://www.portalfiscal.inf.br/mdfe";

	/** Identificacao do software emissor, campo ide/verProc. */
	public static final String VER_PROC = "LBR-MDFe-1.0";

	/** Tolerancia da regra F58 na soma dos componentes do frete: um centavo. */
	private static final BigDecimal TOLERANCIA_CENTAVO = new BigDecimal("0.01");

	private final MLBRMDFe mdfe;
	private final String trxName;
	private final String timezone;

	public MDFeXMLGenerator(MLBRMDFe mdfe)
	{
		this.mdfe = mdfe;
		this.trxName = mdfe.get_TrxName();
		this.timezone = AdempiereLBR.getTimezone(mdfe.getAD_Client_ID(), mdfe.getAD_Org_ID());
	}

	/**
	 * Monta o XML do MDF-e, sem assinatura.
	 *
	 * <p>Valida o grupo do modal, mas <b>nao</b> o documento inteiro: em
	 * mdfeTiposBasico_v3.00.xsd o tipo TMDFe termina com
	 * {@code <xs:element ref="ds:Signature"/>} sem {@code minOccurs="0"}, ou
	 * seja, a assinatura e obrigatoria pelo schema. Validar antes de assinar
	 * daria sempre o erro "content of element 'MDFe' is not complete". Por isso
	 * o fluxo e: gerar, assinar, e so entao {@link #validarAssinado(String)}.
	 *
	 * @return o elemento {@code <MDFe>} pronto para assinar
	 */
	public String gerar()
	{
		if (isVazio(mdfe.getLBR_MDFeChave()))
			throw new AdempiereException("Gere a chave de acesso antes de montar o XML do MDF-e");

		validarCoerencia();

		MDFeXmlWriter w = new MDFeXmlWriter();

		w.open("MDFe", "xmlns", NAMESPACE);
		w.open("infMDFe", "versao", VERSAO, "Id", MDFeUtil.idDaChave(mdfe.getLBR_MDFeChave()));

		escreverIde(w);
		escreverEmit(w);
		escreverInfModal(w);
		escreverInfDoc(w);
		escreverSeg(w);
		escreverProdPred(w);
		escreverTot(w);
		escreverLacres(w);
		escreverAutXML(w);
		escreverInfAdic(w);
		escreverRespTec(w);

		w.close();  // infMDFe

		// infMDFeSupl e irmao de infMDFe, nao filho: fica entre ele e a
		// assinatura. Obrigatorio - sem o QR Code a SEFAZ rejeita com 480.
		w.open("infMDFeSupl");
		w.elReq("qrCodMDFe", MDFeUtil.montarQrCode(mdfe.getLBR_MDFeChave(), mdfe.getLBR_tpAmb()),
				"infMDFeSupl/qrCodMDFe");
		w.close();

		w.close();  // MDFe

		String xml = w.toString();

		// O modal ja da para validar agora, e vale a pena: o schema principal
		// declara infModal como <xs:any processContents="skip">, entao mesmo a
		// validacao pos-assinatura nunca olha dentro do <rodo>. Se nao for aqui,
		// nao e em lugar nenhum.
		MDFeXsdValidator.validarModalRodoviarioEx(xml);

		return xml;
	}

	/**
	 * Valida o MDF-e ja assinado contra o schema completo.
	 *
	 * <p>Chamar depois de {@code AssinaturaDigital.Assinar(...)} e antes de
	 * transmitir: pegar um campo fora de formato aqui custa milissegundos, pela
	 * SEFAZ custa uma ida e volta e uma rejeicao que nao diz a linha do erro.
	 */
	public static void validarAssinado(String xmlAssinado)
	{
		MDFeXsdValidator.validarEx(xmlAssinado, MDFeXsdValidator.XSD_MDFE);
	}

	/** Regra F54 do MOC: quem precisa declarar o produto predominante. */
	private boolean exigeProdutoPredominante()
	{
		String tpEmit = mdfe.getLBR_tpEmit();

		return X_LBR_MDFe.LBR_TPEMIT_PrestadorDeServicoDeTransporte.equals(tpEmit)
				|| X_LBR_MDFe.LBR_TPEMIT_PrestadorQueEmitiraCT_EGlobalizado.equals(tpEmit)
				|| (X_LBR_MDFe.LBR_TPEMIT_TransportadorDeCargaPropria.equals(tpEmit)
						&& !isVazio(mdfe.getLBR_tpTransp()));
	}

	/**
	 * IE e UF do proprietario: um par, nao dois campos soltos.
	 *
	 * <p>No schema os dois vivem dentro de {@code <xs:sequence minOccurs="0">},
	 * entao ou vao juntos ou nao vao. Proprietario isento de inscricao estadual
	 * simplesmente omite os dois.
	 */
	private void escreverIeUfDoProp(MDFeXmlWriter w, String ie, int C_Region_ID, String onde)
	{
		String inscricao = MDFeUtil.soDigitos(ie);

		if (isVazio(inscricao))
			return;

		w.el("IE", inscricao);
		w.elReq("UF", siglaUF(C_Region_ID), onde + "/prop/UF");
	}

	/**
	 * Regras que cruzam campos, cobradas aqui para nao gastar uma ida a SEFAZ.
	 *
	 * <p>O schema nao pega nenhuma delas: sao regras de validacao do MOC, e a
	 * SEFAZ so as aplica depois de receber, assinar e processar o documento. A
	 * mensagem repete o numero da rejeicao, para quem for procurar no manual
	 * achar o mesmo texto.
	 */
	private void validarCoerencia()
	{
		// Rejeicao 745. tpTransp (ETC, TAC, CTC) descreve o transportador
		// contratado, e so faz sentido quando o veiculo de tracao e de outro
		// dono. Transportando carga propria em veiculo proprio, o campo fica
		// vazio - nao existe transportador contratado para classificar.
		if (!isVazio(mdfe.getLBR_tpTransp()) && !mdfe.isLBR_IsOwnerNotEmitter())
			throw new AdempiereException(
					"Tipo de transportador so pode ser informado quando o veiculo de tracao"
					+ " tem proprietario diferente do emitente (rejeicao 745)."
					+ " Deixe o campo em branco, ou marque que o veiculo tem outro"
					+ " proprietario e preencha os dados dele.");

		// Rejeicao 740. O grupo prop existe para dizer "este veiculo nao e meu".
		// Apontar o proprio emitente ali e contradicao: se o veiculo e da
		// empresa, o grupo nao vai.
		if (mdfe.isLBR_IsOwnerNotEmitter()
				&& MDFeUtil.soDigitos(mdfe.getLBR_PropCNPJ()).equals(MDFeUtil.soDigitos(mdfe.getEmitenteCNPJ())))
			throw new AdempiereException(
					"O proprietario do veiculo de tracao tem que ser diferente do emitente"
					+ " (rejeicao 740). Se o veiculo e da propria empresa, desmarque"
					+ " \"veiculo de terceiro\".");

		// Rejeicao 725. O produto predominante deixa de ser facultativo para
		// prestador de servico, para quem emite CT-e globalizado, e para o
		// transportador proprio que informa o tipo de transportador.
		if (isVazio(mdfe.getLBR_ProdPred()) && exigeProdutoPredominante())
			throw new AdempiereException(
					"Informe o produto predominante e o tipo de carga (rejeicao 725):"
					+ " sao obrigatorios para prestador de servico de transporte, para"
					+ " emitente de CT-e globalizado, e para transportador proprio que"
					+ " informa o tipo de transportador.");

		// O XSD do modal rodoviario limita placa e capacidades por padrao. Sem
		// conferir aqui, o operador so descobre na transmissao, e a mensagem que
		// volta e de schema - "cvc-pattern-valid ... #AnonType_placaveicTracao" -
		// que nao diz o campo nem a aba. O manual pede o contrario: mensagem
		// local, com o nome do campo.
		validarVeiculo("de tracao", mdfe.getLBR_Placa(), mdfe.getLBR_Tara(),
				mdfe.getLBR_CapKG(), mdfe.getLBR_CapM3());

		for (X_LBR_MDFeReboque reb : this.<X_LBR_MDFeReboque>filhos(X_LBR_MDFeReboque.Table_Name))
			validarVeiculo("reboque de placa " + reb.getLBR_Placa(), reb.getLBR_Placa(),
					reb.getLBR_Tara(), reb.getLBR_CapKG(), reb.getLBR_CapM3());

		// Rejeicao 523. Cavalo mecanico e so a unidade tratora: sozinho nao
		// carrega nada. Se o rodado e cavalo mecanico, a composicao tem que ter
		// pelo menos um semirreboque.
		if (X_LBR_MDFe.LBR_TPROD_CavaloMecanico.equals(mdfe.getLBR_tpRod())
				&& filhos(X_LBR_MDFeReboque.Table_Name).isEmpty())
			throw new AdempiereException(
					"Transporte com cavalo mecanico exige pelo menos um reboque na"
					+ " composicao (rejeicao 523). Acrescente o reboque na aba"
					+ " Rodoviario, ou corrija o tipo de rodado.");
	}

	// ------------------------------------------------------------------ ide

	private void escreverIde(MDFeXmlWriter w)
	{
		w.open("ide");
		w.elReq("cUF", mdfe.getEmitenteCodigoUF(), "UF do emitente");
		w.elReq("tpAmb", mdfe.getLBR_tpAmb(), "ide/tpAmb");
		w.elReq("tpEmit", mdfe.getLBR_tpEmit(), "ide/tpEmit");
		w.el("tpTransp", mdfe.getLBR_tpTransp());
		w.el("mod", MDFeUtil.MODELO);
		w.elReq("serie", mdfe.getLBR_Serie(), "ide/serie");
		w.elReq("nMDF", mdfe.getDocumentNo(), "ide/nMDF");
		w.elReq("cMDF", mdfe.getLBR_cMDF(), "ide/cMDF");
		w.elReq("cDV", mdfe.getLBR_cDV(), "ide/cDV");
		w.elReq("modal", mdfe.getLBR_Modal(), "ide/modal");
		w.elDateTime("dhEmi", mdfe.getDateDoc(), timezone);
		w.elReq("tpEmis", mdfe.getLBR_tpEmis(), "ide/tpEmis");
		w.elReq("procEmi", mdfe.getLBR_procEmi(), "ide/procEmi");
		w.el("verProc", VER_PROC);
		w.elReq("UFIni", siglaUF(mdfe.getLBR_UFIni_ID()), "ide/UFIni");
		w.elReq("UFFim", siglaUF(mdfe.getLBR_UFFim_ID()), "ide/UFFim");

		// infMunCarrega: 1..50
		List<X_LBR_MDFeMunCarrega> carregas = filhos(X_LBR_MDFeMunCarrega.Table_Name);

		if (carregas.isEmpty())
			throw new AdempiereException("Informe ao menos um municipio de carregamento (ide/infMunCarrega)");

		for (X_LBR_MDFeMunCarrega mun : carregas)
		{
			w.open("infMunCarrega");
			w.elReq("cMunCarrega", mun.getLBR_cMun(), "infMunCarrega/cMunCarrega");
			w.elReq("xMunCarrega", mun.getLBR_xMun(), "infMunCarrega/xMunCarrega");
			w.close();
		}

		// infPercurso: 0..25
		for (X_LBR_MDFePercurso per : this.<X_LBR_MDFePercurso>filhos(X_LBR_MDFePercurso.Table_Name))
		{
			w.open("infPercurso");
			w.elReq("UFPer", siglaUF(per.getC_Region_ID()), "infPercurso/UFPer");
			w.close();
		}

		w.elDateTime("dhIniViagem", mdfe.getLBR_DateIniViagem(), timezone);

		if (mdfe.isLBR_IndCanalVerde())
			w.el("indCanalVerde", "1");

		if (mdfe.isLBR_IndCargaPosterior())
			w.el("indCarregaPosterior", "1");

		w.close();
	}

	// ----------------------------------------------------------------- emit

	private void escreverEmit(MDFeXmlWriter w)
	{
		MBPartner bp = mdfe.getEmitente();
		MLocation loc = mdfe.getEnderecoEmitente();

		w.open("emit");
		w.elReq("CNPJ", mdfe.getEmitenteCNPJ(), "emit/CNPJ");
		w.el("IE", MDFeUtil.soDigitos(bp.get_ValueAsString("LBR_IE")));
		w.elReq("xNome", bp.getName(), "emit/xNome");
		w.el("xFant", bp.getName2(), 60);

		w.open("enderEmit");
		w.elReq("xLgr", loc.getAddress1(), "enderEmit/xLgr");
		w.elReq("nro", loc.getAddress2(), "enderEmit/nro");
		w.el("xCpl", loc.getAddress4(), 60);
		w.elReq("xBairro", loc.getAddress3(), "enderEmit/xBairro");
		w.elReq("cMun", codigoMunicipio(loc), "enderEmit/cMun");
		w.elReq("xMun", loc.getCity(), "enderEmit/xMun");
		w.el("CEP", MDFeUtil.soDigitos(loc.getPostal()));
		w.elReq("UF", siglaUF(loc.getC_Region_ID()), "enderEmit/UF");
		w.close();

		w.close();
	}

	// -------------------------------------------------------------- infModal

	private void escreverInfModal(MDFeXmlWriter w)
	{
		w.open("infModal", "versaoModal", VERSAO_MODAL);
		w.open("rodo");

		escreverInfANTT(w);
		escreverVeicTracao(w);

		// veicReboque: 0..3
		for (X_LBR_MDFeReboque reb : this.<X_LBR_MDFeReboque>filhos(X_LBR_MDFeReboque.Table_Name))
		{
			w.open("veicReboque");
			w.el("cInt", reb.getLBR_cInt());
			w.elReq("placa", soLetrasEDigitos(reb.getLBR_Placa()), "veicReboque/placa");
			w.el("RENAVAM", MDFeUtil.soDigitos(reb.getLBR_Renavam()));
			w.el("tara", Integer.valueOf(reb.getLBR_Tara()));
			w.el("capKG", Integer.valueOf(reb.getLBR_CapKG()));

			if (reb.getLBR_CapM3() > 0)
				w.el("capM3", Integer.valueOf(reb.getLBR_CapM3()));

			if (reb.isLBR_IsOwnerNotEmitter())
			{
				w.open("prop");
				escreverCpfOuCnpj(w, reb.getLBR_PropCPF(), reb.getLBR_PropCNPJ());
				w.elReq("RNTRC", MDFeUtil.soDigitos(reb.getLBR_PropRNTRC()), "veicReboque/prop/RNTRC");
				w.elReq("xNome", reb.getLBR_PropName(), "veicReboque/prop/xNome");
				escreverIeUfDoProp(w, reb.getLBR_PropIE(), reb.getLBR_PropUF_ID(), "veicReboque");
				w.elReq("tpProp", reb.getLBR_tpProp(), "veicReboque/prop/tpProp");
				w.close();
			}

			w.elReq("tpCar", reb.getLBR_tpCar(), "veicReboque/tpCar");
			w.el("UF", siglaUF(reb.getLBR_VeicUF_ID()));
			w.close();
		}

		// codAgPorto vem depois dos reboques e antes dos lacres (leiaute 87/88)
		w.el("codAgPorto", mdfe.getLBR_CodAgPorto());

		// lacRodo: lacre do modal rodoviario - e onde a fiscalizacao de transito
		// procura. Nao confundir com o grupo lacres, no nivel do MDF-e, que sai
		// mais adiante; o leiaute tem os dois e eles nao sao intercambiaveis.
		for (X_LBR_MDFeLacre lacre : lacres(X_LBR_MDFeLacre.LBR_LACRESCOPE_ModalRodoviarioLacRodo))
		{
			w.open("lacRodo");
			w.elReq("nLacre", lacre.getLBR_NLacre(), "lacRodo/nLacre");
			w.close();
		}

		w.close();  // rodo
		w.close();  // infModal
	}

	private void escreverInfANTT(MDFeXmlWriter w)
	{
		String rntrc = mdfe.getLBR_RNTRC();
		List<X_LBR_MDFeCIOT> ciots = filhos(X_LBR_MDFeCIOT.Table_Name);
		List<X_LBR_MDFeValePed> vales = filhos(X_LBR_MDFeValePed.Table_Name);
		List<X_LBR_MDFeContratante> contratantes = filhos(X_LBR_MDFeContratante.Table_Name);

		if (isVazio(rntrc) && ciots.isEmpty() && vales.isEmpty() && contratantes.isEmpty()
				&& !mdfe.isLBR_IsOwnerNotEmitter())
			return;

		w.open("infANTT");
		w.el("RNTRC", MDFeUtil.soDigitos(rntrc));

		for (X_LBR_MDFeCIOT ciot : ciots)
		{
			w.open("infCIOT");
			w.el("CIOT", MDFeUtil.soDigitos(ciot.getLBR_CIOT()));
			escreverCpfOuCnpj(w, ciot.getLBR_CPF(), ciot.getLBR_CNPJ());
			w.close();
		}

		if (!vales.isEmpty())
		{
			w.open("valePed");
			for (X_LBR_MDFeValePed vp : vales)
			{
				w.open("disp");
				w.elReq("CNPJForn", MDFeUtil.soDigitos(vp.getLBR_CNPJForn()), "valePed/disp/CNPJForn");
				// CNPJPg e CPFPg sao xs:choice - so um dos dois
				escreverCpfOuCnpj(w, vp.getLBR_CPFPg(), vp.getLBR_CNPJPg(), "CPFPg", "CNPJPg");
				w.el("nCompra", MDFeUtil.soDigitos(vp.getLBR_NCompra()));
				w.el("vValePed", vp.getLBR_ValueValePed(), 2);
				w.el("tpValePed", vp.getLBR_tpValePed());
				w.close();
			}

			// Obrigatoria quando o grupo do vale-pedagio existe (regra F95).
			w.elReq("categCombVeic", mdfe.getLBR_CategCombVeic(), "valePed/categCombVeic");
			w.close();
		}

		// Rejeicao 741. Informado proprietario do veiculo de tracao, o grupo
		// contratante e obrigatorio, com uma unica ocorrencia, e tem que ser o
		// proprio emitente. Como o valor e inteiramente determinado pela regra,
		// sai daqui em vez de virar mais um campo para o operador digitar (e
		// errar).
		if (contratantes.isEmpty() && mdfe.isLBR_IsOwnerNotEmitter())
		{
			MBPartner emit = mdfe.getEmitente();

			w.open("infContratante");
			w.el("xNome", emit.getName(), 60);
			w.el("CNPJ", MDFeUtil.soDigitos(mdfe.getEmitenteCNPJ()));
			w.close();
		}

		for (X_LBR_MDFeContratante ct : contratantes)
		{
			w.open("infContratante");
			w.el("xNome", ct.getName(), 60);

			// CPF, CNPJ e idEstrangeiro sao xs:choice: exatamente um.
			if (!isVazio(ct.getLBR_IdEstrangeiro()))
				w.el("idEstrangeiro", ct.getLBR_IdEstrangeiro());
			else
				escreverCpfOuCnpj(w, ct.getLBR_CPF(), ct.getLBR_CNPJ());

			if (!isVazio(ct.getLBR_NroContrato()))
			{
				w.open("infContrato");
				w.el("NroContrato", ct.getLBR_NroContrato());
				w.el("vContratoGlobal", ct.getLBR_ValueContract(), 2);
				w.close();
			}
			w.close();
		}

		w.close();
	}

	private void escreverVeicTracao(MDFeXmlWriter w)
	{
		w.open("veicTracao");
		w.el("cInt", mdfe.getLBR_cInt());
		w.elReq("placa", soLetrasEDigitos(mdfe.getLBR_Placa()), "veicTracao/placa");
		w.el("RENAVAM", MDFeUtil.soDigitos(mdfe.getLBR_Renavam()));
		w.el("tara", Integer.valueOf(mdfe.getLBR_Tara()));

		if (mdfe.getLBR_CapKG() > 0)
			w.el("capKG", Integer.valueOf(mdfe.getLBR_CapKG()));

		if (mdfe.getLBR_CapM3() > 0)
			w.el("capM3", Integer.valueOf(mdfe.getLBR_CapM3()));

		if (mdfe.isLBR_IsOwnerNotEmitter())
		{
			w.open("prop");
			escreverCpfOuCnpj(w, mdfe.getLBR_PropCPF(), mdfe.getLBR_PropCNPJ());
			w.elReq("RNTRC", MDFeUtil.soDigitos(mdfe.getLBR_PropRNTRC()), "veicTracao/prop/RNTRC");
			w.elReq("xNome", mdfe.getLBR_PropName(), "veicTracao/prop/xNome");
			escreverIeUfDoProp(w, mdfe.getLBR_PropIE(), mdfe.getLBR_PropUF_ID(), "veicTracao");
			w.elReq("tpProp", mdfe.getLBR_tpProp(), "veicTracao/prop/tpProp");
			w.close();
		}

		List<X_LBR_MDFeCondutor> condutores = filhos(X_LBR_MDFeCondutor.Table_Name);

		if (condutores.isEmpty())
			throw new AdempiereException("Informe ao menos um condutor (veicTracao/condutor)");

		for (X_LBR_MDFeCondutor cond : condutores)
		{
			w.open("condutor");
			w.elReq("xNome", cond.getName(), "condutor/xNome");
			w.elReq("CPF", MDFeUtil.soDigitos(cond.getLBR_CPF()), "condutor/CPF");
			w.close();
		}

		w.elReq("tpRod", mdfe.getLBR_tpRod(), "veicTracao/tpRod");
		w.elReq("tpCar", mdfe.getLBR_tpCar(), "veicTracao/tpCar");
		w.el("UF", siglaUF(mdfe.getLBR_VeicUF_ID()));
		w.close();
	}

	// --------------------------------------------------------------- infDoc

	private void escreverInfDoc(MDFeXmlWriter w)
	{
		List<X_LBR_MDFeMunDescarga> descargas = filhos(X_LBR_MDFeMunDescarga.Table_Name);

		if (descargas.isEmpty())
			throw new AdempiereException("Informe ao menos um municipio de descarregamento (infDoc/infMunDescarga)");

		w.open("infDoc");

		for (X_LBR_MDFeMunDescarga mun : descargas)
		{
			w.open("infMunDescarga");
			w.elReq("cMunDescarga", mun.getLBR_cMun(), "infMunDescarga/cMunDescarga");
			w.elReq("xMunDescarga", mun.getLBR_xMun(), "infMunDescarga/xMunDescarga");

			List<X_LBR_MDFeDoc> docs = new Query(mdfe.getCtx(), X_LBR_MDFeDoc.Table_Name,
					"LBR_MDFeMunDescarga_ID=?", trxName)
					.setParameters(mun.getLBR_MDFeMunDescarga_ID())
					.setOnlyActiveRecords(true)
					.setOrderBy("Line, LBR_MDFeDoc_ID")
					.list();

			if (docs.isEmpty())
				throw new AdempiereException("O municipio de descarregamento " + mun.getLBR_xMun()
						+ " esta sem documento fiscal vinculado");

			// o schema pede infCTe, depois infNFe, depois infMDFeTransp
			escreverDocs(w, docs, X_LBR_MDFeDoc.LBR_DFETYPE_CT_E, "infCTe", "chCTe");
			escreverDocs(w, docs, X_LBR_MDFeDoc.LBR_DFETYPE_NF_E, "infNFe", "chNFe");
			escreverDocs(w, docs, X_LBR_MDFeDoc.LBR_DFETYPE_MDF_EDeTransporte, "infMDFeTransp", "chMDFe");

			w.close();
		}

		w.close();
	}

	private void escreverDocs(MDFeXmlWriter w, List<X_LBR_MDFeDoc> docs, String tipo,
			String elemento, String elementoChave)
	{
		for (X_LBR_MDFeDoc doc : docs)
		{
			if (!tipo.equals(doc.getLBR_DFeType()))
				continue;

			w.open(elemento);
			w.elReq(elementoChave, doc.getLBR_DFeChave(), elemento + "/" + elementoChave);

			// SegCodBarra so existe em infCTe e infNFe, nao em infMDFeTransp
			if (!X_LBR_MDFeDoc.LBR_DFETYPE_MDF_EDeTransporte.equals(tipo))
				w.el("SegCodBarra", doc.getLBR_SegCodBarra());

			if (doc.isLBR_IndReentrega())
				w.el("indReentrega", "1");

			escreverPerigosos(w, doc);

			w.close();
		}
	}

	/**
	 * Produtos perigosos do documento (grupo peri).
	 *
	 * <p>Opcional no schema, obrigatorio pela legislacao de transporte quando a
	 * carga tem produto classificado - e a omissao e infracao, nao rejeicao.
	 * Nao existe em infMDFeTransp; so em infCTe e infNFe.
	 */
	private void escreverPerigosos(MDFeXmlWriter w, X_LBR_MDFeDoc doc)
	{
		List<X_LBR_MDFePerigoso> perigosos = new Query(mdfe.getCtx(),
				X_LBR_MDFePerigoso.Table_Name, "LBR_MDFeDoc_ID=?", trxName)
				.setParameters(doc.getLBR_MDFeDoc_ID())
				.setOnlyActiveRecords(true)
				.setOrderBy("Line, LBR_MDFePerigoso_ID")
				.list();

		for (X_LBR_MDFePerigoso peri : perigosos)
		{
			w.open("peri");
			w.elReq("nONU", peri.getLBR_NONU(), "peri/nONU");
			w.el("xNomeAE", peri.getLBR_XNomeAE(), 150);
			w.el("xClaRisco", peri.getLBR_XClaRisco(), 40);
			w.el("grEmb", peri.getLBR_GrEmb());
			w.elReq("qTotProd", peri.getLBR_QTotProd(), "peri/qTotProd");
			w.el("qVolTipo", peri.getLBR_QVolTipo(), 60);
			w.close();
		}
	}

	// ------------------------------------------------------------------ seg

	private void escreverSeg(MDFeXmlWriter w)
	{
		for (X_LBR_MDFeSeg seg : this.<X_LBR_MDFeSeg>filhos(X_LBR_MDFeSeg.Table_Name))
		{
			w.open("seg");

			w.open("infResp");
			w.elReq("respSeg", seg.getLBR_RespSeg(), "seg/infResp/respSeg");
			escreverCpfOuCnpj(w, seg.getLBR_RespCPF(), seg.getLBR_RespCNPJ());
			w.close();

			if (!isVazio(seg.getLBR_SegName()) || !isVazio(seg.getLBR_SegCNPJ()))
			{
				w.open("infSeg");
				w.elReq("xSeg", seg.getLBR_SegName(), "seg/infSeg/xSeg");
				w.elReq("CNPJ", MDFeUtil.soDigitos(seg.getLBR_SegCNPJ()), "seg/infSeg/CNPJ");
				w.close();
			}

			w.el("nApol", seg.getLBR_NApol());

			for (PO aver : new Query(mdfe.getCtx(), "LBR_MDFeAverb", "LBR_MDFeSeg_ID=?", trxName)
					.setParameters(seg.getLBR_MDFeSeg_ID())
					.setOnlyActiveRecords(true)
					.setOrderBy("Line, LBR_MDFeAverb_ID")
					.<PO>list())
			{
				w.el("nAver", aver.get_ValueAsString("LBR_NAver"));
			}

			w.close();
		}
	}

	// ------------------------------------------------------------- prodPred

	private void escreverProdPred(MDFeXmlWriter w)
	{
		if (isVazio(mdfe.getLBR_ProdPred()))
			return;

		w.open("prodPred");
		w.elReq("tpCarga", mdfe.getLBR_tpCarga(), "prodPred/tpCarga");
		w.elReq("xProd", mdfe.getLBR_ProdPred(), "prodPred/xProd");
		w.el("cEAN", mdfe.getLBR_EAN());
		w.el("NCM", mdfe.getLBR_NCM());
		escreverLotacao(w);
		escreverPagamentos(w);

		w.close();
	}

	/**
	 * Pagamento do frete (grupo infPag), usado quando o frete e contratado.
	 *
	 * <p>A soma dos componentes tem que fechar com o valor do contrato - regra
	 * F58, rejeicao 746, com tolerancia de um centavo. Conferir aqui poupa a
	 * viagem ate a SEFAZ, e a conta e a mesma.
	 */
	private void escreverPagamentos(MDFeXmlWriter w)
	{
		for (X_LBR_MDFeInfPag pag : this.<X_LBR_MDFeInfPag>filhos(X_LBR_MDFeInfPag.Table_Name))
		{
			List<X_LBR_MDFeComp> componentes = new Query(mdfe.getCtx(), X_LBR_MDFeComp.Table_Name,
					"LBR_MDFeInfPag_ID=?", trxName)
					.setParameters(pag.getLBR_MDFeInfPag_ID())
					.setOnlyActiveRecords(true)
					.setOrderBy("Line, LBR_MDFeComp_ID")
					.list();

			if (componentes.isEmpty())
				throw new AdempiereException("O pagamento do frete precisa de ao menos um"
						+ " componente (infPag/Comp)");

			conferirSomaDosComponentes(pag, componentes);

			w.open("infPag");
			w.el("xNome", pag.getName(), 60);

			// CPF, CNPJ e idEstrangeiro sao xs:choice: exatamente um.
			if (!isVazio(pag.getLBR_IdEstrangeiro()))
				w.el("idEstrangeiro", pag.getLBR_IdEstrangeiro());
			else
				escreverCpfOuCnpj(w, pag.getLBR_CPF(), pag.getLBR_CNPJ());

			for (X_LBR_MDFeComp comp : componentes)
			{
				w.open("Comp");
				w.elReq("tpComp", comp.getLBR_TpComp(), "Comp/tpComp");
				w.el("vComp", comp.getLBR_ValueComp(), 2);
				w.el("xComp", comp.getLBR_XComp(), 60);
				w.close();
			}

			w.el("vContrato", pag.getLBR_ValueContract(), 2);

			// As tres tags abaixo so existem quando valem "1"; o schema nao tem
			// "0" para elas, entao nao informar e o jeito de dizer que nao.
			if (pag.isLBR_IndAltoDesemp())
				w.el("indAltoDesemp", "1");

			w.elReq("indPag", pag.getLBR_IndPag(), "infPag/indPag");

			boolean aPrazo = X_LBR_MDFeInfPag.LBR_INDPAG_APrazo.equals(pag.getLBR_IndPag());

			if (aPrazo)
				w.el("vAdiant", pag.getLBR_ValueAdiant(), 2);

			if (pag.isLBR_IndAntecipa())
				w.el("indAntecipaAdiant", "1");

			if (aPrazo)
				escreverParcelas(w, pag);

			w.el("tpAntecip", pag.getLBR_TpAntecip());
			escreverInfBanc(w, pag);
			w.close();
		}
	}

	private void conferirSomaDosComponentes(X_LBR_MDFeInfPag pag, List<X_LBR_MDFeComp> componentes)
	{
		BigDecimal soma = BigDecimal.ZERO;

		for (X_LBR_MDFeComp comp : componentes)
			if (comp.getLBR_ValueComp() != null)
				soma = soma.add(comp.getLBR_ValueComp());

		BigDecimal contrato = (pag.getLBR_ValueContract() == null)
				? BigDecimal.ZERO : pag.getLBR_ValueContract();

		// A tolerancia de um centavo e da propria regra F58, nao invencao nossa.
		if (soma.subtract(contrato).abs().compareTo(TOLERANCIA_CENTAVO) > 0)
			throw new AdempiereException("A soma dos componentes do frete (" + soma
					+ ") tem que ser igual ao valor do contrato (" + contrato
					+ ") - rejeicao 746.");
	}

	private void escreverParcelas(MDFeXmlWriter w, X_LBR_MDFeInfPag pag)
	{
		List<X_LBR_MDFePrazo> parcelas = new Query(mdfe.getCtx(), X_LBR_MDFePrazo.Table_Name,
				"LBR_MDFeInfPag_ID=?", trxName)
				.setParameters(pag.getLBR_MDFeInfPag_ID())
				.setOnlyActiveRecords(true)
				.setOrderBy("Line, LBR_MDFePrazo_ID")
				.list();

		for (X_LBR_MDFePrazo parcela : parcelas)
		{
			w.open("infPrazo");
			w.elReq("nParcela", parcela.getLBR_NParcela(), "infPrazo/nParcela");
			w.elDate("dVenc", parcela.getLBR_DateDue());
			w.el("vParcela", parcela.getLBR_ValueParcela(), 2);
			w.close();
		}
	}

	/** infBanc e xs:choice: banco+agencia, CNPJ do IPEF, ou chave PIX. */
	private void escreverInfBanc(MDFeXmlWriter w, X_LBR_MDFeInfPag pag)
	{
		boolean temBanco = !isVazio(pag.getLBR_CodBanco()) && !isVazio(pag.getLBR_CodAgencia());
		boolean temIpef = !isVazio(pag.getLBR_CNPJIPEF());
		boolean temPix = !isVazio(pag.getLBR_PIX());

		if (!temBanco && !temIpef && !temPix)
			throw new AdempiereException("Informe a forma de recebimento do frete:"
					+ " banco e agencia, CNPJ da instituicao de pagamento, ou chave PIX"
					+ " (infPag/infBanc).");

		w.open("infBanc");

		if (temBanco)
		{
			w.el("codBanco", MDFeUtil.soDigitos(pag.getLBR_CodBanco()));
			w.el("codAgencia", MDFeUtil.soDigitos(pag.getLBR_CodAgencia()));
		}
		else if (temIpef)
		{
			w.el("CNPJIPEF", MDFeUtil.soDigitos(pag.getLBR_CNPJIPEF()));
		}
		else
		{
			w.el("PIX", pag.getLBR_PIX());
		}

		w.close();
	}

	/** Lacres do MDF-e (grupo lacres), distintos dos lacres do modal. */
	private void escreverLacres(MDFeXmlWriter w)
	{
		List<X_LBR_MDFeLacre> doManifesto = lacres(X_LBR_MDFeLacre.LBR_LACRESCOPE_MDF_ELacres);

		if (doManifesto.isEmpty())
			return;

		w.open("lacres");

		for (X_LBR_MDFeLacre lacre : doManifesto)
			w.elReq("nLacre", lacre.getLBR_NLacre(), "lacres/nLacre");

		w.close();
	}

	private List<X_LBR_MDFeLacre> lacres(String escopo)
	{
		List<X_LBR_MDFeLacre> escolhidos = new ArrayList<>();

		for (X_LBR_MDFeLacre lacre : this.<X_LBR_MDFeLacre>filhos(X_LBR_MDFeLacre.Table_Name))
		{
			// Lacre gravado antes da coluna de escopo existir e rodoviario, que
			// era o unico comportamento ate entao.
			String dele = isVazio(lacre.getLBR_LacreScope())
					? X_LBR_MDFeLacre.LBR_LACRESCOPE_ModalRodoviarioLacRodo
					: lacre.getLBR_LacreScope();

			if (escopo.equals(dele))
				escolhidos.add(lacre);
		}

		return escolhidos;
	}

	/**
	 * Grupo da carga lotacao: onde a carga foi pega e onde sera entregue.
	 *
	 * <p>Cada local e um {@code xs:choice} - ou o CEP, ou o par de coordenadas.
	 * O CEP tem preferencia por ser o que o operador tem a mao; as coordenadas
	 * atendem carregamento em lugar sem CEP, tipico de fazenda e de porto.
	 */
	private void escreverLotacao(MDFeXmlWriter w)
	{
		boolean temCarrega = !isVazio(mdfe.getLBR_CarregaCEP()) || temCoordenadas(
				mdfe.getLBR_CarregaLatitude(), mdfe.getLBR_CarregaLongitude());
		boolean temDescarrega = !isVazio(mdfe.getLBR_DescarregaCEP()) || temCoordenadas(
				mdfe.getLBR_DescarregaLatitude(), mdfe.getLBR_DescarregaLongitude());

		if (!temCarrega && !temDescarrega)
			return;

		// Os dois locais sao obrigatorios dentro do grupo: informar so um lado
		// geraria XML invalido pelo schema.
		if (!temCarrega || !temDescarrega)
			throw new AdempiereException(
					"Carga lotacao: informe o local de carregamento e o de descarregamento,"
					+ " cada um com CEP ou com latitude e longitude.");

		w.open("infLotacao");

		w.open("infLocalCarrega");
		escreverLocal(w, mdfe.getLBR_CarregaCEP(),
				mdfe.getLBR_CarregaLatitude(), mdfe.getLBR_CarregaLongitude());
		w.close();

		w.open("infLocalDescarrega");
		escreverLocal(w, mdfe.getLBR_DescarregaCEP(),
				mdfe.getLBR_DescarregaLatitude(), mdfe.getLBR_DescarregaLongitude());
		w.close();

		w.close();
	}

	private void escreverLocal(MDFeXmlWriter w, String cep, BigDecimal lat, BigDecimal lon)
	{
		String limpo = MDFeUtil.soDigitos(cep);

		if (!isVazio(limpo))
		{
			w.el("CEP", limpo);
			return;
		}

		w.el("latitude", lat, 6);
		w.el("longitude", lon, 6);
	}

	private boolean temCoordenadas(BigDecimal lat, BigDecimal lon)
	{
		return lat != null && lat.signum() != 0 && lon != null && lon.signum() != 0;
	}

	/**
	 * Responsavel tecnico pelo sistema emissor.
	 *
	 * <p>Opcional no leiaute e so validado quando informado (regra F121), mas
	 * os quatro campos vao juntos: informar so o CNPJ nao passa no schema.
	 */
	private void escreverRespTec(MDFeXmlWriter w)
	{
		if (isVazio(mdfe.getLBR_RespTecCNPJ()))
			return;

		w.open("infRespTec");
		w.elReq("CNPJ", MDFeUtil.soDigitos(mdfe.getLBR_RespTecCNPJ()), "infRespTec/CNPJ");
		w.elReq("xContato", mdfe.getLBR_RespTecContact(), "infRespTec/xContato");
		w.elReq("email", mdfe.getLBR_RespTecEMail(), "infRespTec/email");
		w.elReq("fone", MDFeUtil.soDigitos(mdfe.getLBR_RespTecPhone()), "infRespTec/fone");
		w.close();
	}

	// ------------------------------------------------------------------ tot

	private void escreverTot(MDFeXmlWriter w)
	{
		w.open("tot");

		if (mdfe.getLBR_QtyCTe() > 0)
			w.el("qCTe", Integer.valueOf(mdfe.getLBR_QtyCTe()));

		if (mdfe.getLBR_QtyNFe() > 0)
			w.el("qNFe", Integer.valueOf(mdfe.getLBR_QtyNFe()));

		if (mdfe.getLBR_QtyMDFe() > 0)
			w.el("qMDFe", Integer.valueOf(mdfe.getLBR_QtyMDFe()));

		w.el("vCarga", mdfe.getLBR_ValueCargo(), 2);
		w.elReq("cUnid", mdfe.getLBR_cUnid(), "tot/cUnid");
		w.el("qCarga", mdfe.getLBR_QtyCargo(), 4);
		w.close();
	}

	// --------------------------------------------------------- autXML/infAdic

	private void escreverAutXML(MDFeXmlWriter w)
	{
		for (X_LBR_MDFeAutXML aut : this.<X_LBR_MDFeAutXML>filhos(X_LBR_MDFeAutXML.Table_Name))
		{
			w.open("autXML");
			escreverCpfOuCnpj(w, aut.getLBR_CPF(), aut.getLBR_CNPJ());
			w.close();
		}
	}

	private void escreverInfAdic(MDFeXmlWriter w)
	{
		if (isVazio(mdfe.getLBR_InfAdFisco()) && isVazio(mdfe.getLBR_InfCpl()))
			return;

		w.open("infAdic");
		w.el("infAdFisco", mdfe.getLBR_InfAdFisco(), 2000);
		w.el("infCpl", mdfe.getLBR_InfCpl(), 5000);
		w.close();
	}

	// ------------------------------------------------------------- helpers

	/**
	 * CPF e CNPJ sao {@code xs:choice} em todos os grupos do MDF-e: informar os
	 * dois invalida o schema. CNPJ tem precedencia por ser o caso da pessoa
	 * juridica, que e o normal.
	 */
	private void escreverCpfOuCnpj(MDFeXmlWriter w, String cpf, String cnpj)
	{
		escreverCpfOuCnpj(w, cpf, cnpj, "CPF", "CNPJ");
	}

	private void escreverCpfOuCnpj(MDFeXmlWriter w, String cpf, String cnpj,
			String elCpf, String elCnpj)
	{
		if (!isVazio(cnpj))
			w.el(elCnpj, soLetrasEDigitos(cnpj));
		else if (!isVazio(cpf))
			w.el(elCpf, MDFeUtil.soDigitos(cpf));
	}

	/** Filhos diretos deste MDF-e, na ordem de Line. */
	private <T extends PO> List<T> filhos(String tableName)
	{
		return new Query(mdfe.getCtx(), tableName, "LBR_MDFe_ID=?", trxName)
				.setParameters(mdfe.getLBR_MDFe_ID())
				.setOnlyActiveRecords(true)
				.setOrderBy("Line, " + tableName + "_ID")
				.list();
	}

	/** Sigla da UF a partir do C_Region. */
	private String siglaUF(int C_Region_ID)
	{
		if (C_Region_ID < 1)
			return null;

		return new MRegion(mdfe.getCtx(), C_Region_ID, trxName).getName();
	}

	/** Codigo IBGE do municipio do endereco. */
	private String codigoMunicipio(MLocation loc)
	{
		X_C_City city = BPartnerUtil.getX_C_City(mdfe.getCtx(), loc, trxName);

		if (city == null || city.get_Value("LBR_CityCode") == null)
			throw new AdempiereException("O municipio " + loc.getCity()
					+ " esta sem codigo IBGE (C_City.LBR_CityCode)");

		return city.get_ValueAsString("LBR_CityCode");
	}


	private static String soLetrasEDigitos(String valor)
	{
		return (valor == null) ? null : valor.replaceAll("[^A-Za-z0-9]", "").toUpperCase();
	}

	private static boolean isVazio(String s)
	{
		return s == null || s.trim().isEmpty();
	}
	/** Formato de placa aceito pelo XSD (TPlaca do mdfeModalRodoviario). */
	private static final java.util.regex.Pattern PLACA =
			java.util.regex.Pattern.compile("[A-Z]{2,3}[0-9]{4}|[A-Z]{3,4}[0-9]{3}|[A-Z0-9]{7}");

	/**
	 * Confere placa e capacidades contra os limites do XSD, com mensagem que
	 * nomeia o campo e a aba.
	 *
	 * <p>Os limites nao sao arbitrarios: o schema descreve tara e capKG como
	 * {@code 0|[1-9]{1}[0-9]{0,5}} - ate seis digitos - e capM3 como
	 * {@code 0|[1-9]{1}[0-9]{0,2}}, tres digitos. A coluna no dicionario e
	 * Inteiro(10) nos tres casos, entao a tela aceita valores que a SEFAZ
	 * recusa.
	 */
	private void validarVeiculo(String qual, String placa, int tara, int capKG, int capM3)
	{
		String limpa = soLetrasEDigitos(placa);

		if (!isVazio(limpa) && !PLACA.matcher(limpa).matches())
			throw new AdempiereException("Placa do veiculo " + qual + " invalida: \"" + placa
					+ "\". O formato aceito e ABC1234, ABC123 ou sete caracteres entre"
					+ " letras e numeros (Mercosul). Aba Rodoviario.");

		if (tara > 999999)
			throw new AdempiereException("Tara do veiculo " + qual + " tem " + tara
					+ ": o limite do layout e 999999 kg. Aba Rodoviario.");

		if (capKG > 999999)
			throw new AdempiereException("Capacidade em KG do veiculo " + qual + " tem " + capKG
					+ ": o limite do layout e 999999 kg. Aba Rodoviario.");

		if (capM3 > 999)
			throw new AdempiereException("Capacidade em M3 do veiculo " + qual + " tem " + capM3
					+ ": o limite do layout e 999 m3. Aba Rodoviario.");
	}

}
