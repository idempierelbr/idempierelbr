package org.idempierelbr.mdfe.base;

import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.X_C_City;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.base.util.BPartnerUtil;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeEvento;
import org.idempierelbr.mdfe.util.MDFeUtil;
import org.idempierelbr.mdfe.util.MDFeXmlWriter;
import org.idempierelbr.mdfe.util.MDFeXsdValidator;

/**
 * XML dos eventos do MDF-e (MOC 3.00b, capitulo 6).
 *
 * <p>Todo evento tem o mesmo envelope - {@code infEvento} com orgao, ambiente,
 * emitente, chave, data, tipo e sequencial - e difere so no {@code detEvento},
 * que o schema principal declara como {@code <xs:any processContents="skip">}.
 * Por isso o conteudo de cada evento e montado a parte e validado contra o seu
 * proprio schema.
 */
public class MDFeEventoXMLGenerator
{
	public static final String VERSAO = "3.00";

	/** Descricoes fixas que os schemas exigem, por enumeracao. */
	public static final String DESC_CANCELAMENTO = "Cancelamento";
	public static final String DESC_ENCERRAMENTO = "Encerramento";

	/** Sem o "de": o schema enumera exatamente "Inclusao Condutor". */
	public static final String DESC_INC_CONDUTOR = "Inclusao Condutor";

	/** Codigo de UF do exterior, na tabela estendida do IBGE. */
	public static final String CUF_EXTERIOR = "99";

	/**
	 * Municipio obrigatorio quando o encerramento e no exterior (regra K04).
	 *
	 * <p>Vem do BPartnerUtil do LBR, que ja usa esse mesmo codigo para endereco
	 * no exterior - repetir o literal daria duas fontes para a mesma verdade.
	 */
	public static final String CMUN_EXTERIOR = BPartnerUtil.EXTCOD;

	private final MLBRMDFe mdfe;
	private final X_LBR_MDFeEvento evento;
	private final String timezone;

	public MDFeEventoXMLGenerator(MLBRMDFe mdfe, X_LBR_MDFeEvento evento)
	{
		this.mdfe = mdfe;
		this.evento = evento;
		this.timezone = AdempiereLBR.getTimezone(mdfe.getAD_Client_ID(), mdfe.getAD_Org_ID());
	}

	/**
	 * Identificador do evento: "ID" + tpEvento + chave + sequencial em 2 digitos.
	 *
	 * <p>E o que a SEFAZ usa para detectar duplicidade (regra J08: orgao +
	 * tpEvento + chave + nSeqEvento).
	 */
	public static String idDoEvento(String tpEvento, String chave, int nSeqEvento)
	{
		return "ID" + tpEvento + chave + String.format("%02d", Integer.valueOf(nSeqEvento));
	}

	/** XML do evento, sem assinatura. */
	public String gerar()
	{
		exigirChave();

		MDFeXmlWriter w = new MDFeXmlWriter();

		w.open("eventoMDFe", "xmlns", MDFeXMLGenerator.NAMESPACE, "versao", VERSAO);
		w.open("infEvento", "Id",
				idDoEvento(evento.getLBR_EventType(), mdfe.getLBR_MDFeChave(), evento.getLBR_NSeqEvento()));

		// cOrgao e a UF que recebe o evento: a do emitente, pela tabela do IBGE.
		w.elReq("cOrgao", mdfe.getEmitenteCodigoUF(), "infEvento/cOrgao");
		w.elReq("tpAmb", mdfe.getLBR_tpAmb(), "infEvento/tpAmb");
		w.elReq("CNPJ", MDFeUtil.soDigitos(mdfe.getEmitenteCNPJ()), "infEvento/CNPJ");
		w.elReq("chMDFe", mdfe.getLBR_MDFeChave(), "infEvento/chMDFe");
		w.elDateTime("dhEvento", dataDoEvento(), timezone);
		w.elReq("tpEvento", evento.getLBR_EventType(), "infEvento/tpEvento");
		w.elReq("nSeqEvento", String.valueOf(evento.getLBR_NSeqEvento()), "infEvento/nSeqEvento");

		w.open("detEvento", "versaoEvento", VERSAO);
		escreverDetalhe(w);
		w.close();

		w.close();  // infEvento
		w.close();  // eventoMDFe

		String xml = w.toString();
		validarDetalhe(xml);

		return xml;
	}

	/** Valida o documento ja assinado contra o schema do envelope de evento. */
	public static void validarAssinado(String xmlAssinado)
	{
		MDFeXsdValidator.validarEx(xmlAssinado, MDFeXsdValidator.XSD_EVENTO);
	}

	// ------------------------------------------------------------------------

	private void escreverDetalhe(MDFeXmlWriter w)
	{
		if (X_LBR_MDFeEvento.LBR_EVENTTYPE_Cancelamento.equals(evento.getLBR_EventType()))
		{
			w.open("evCancMDFe");
			w.el("descEvento", DESC_CANCELAMENTO);
			w.elReq("nProt", mdfe.getLBR_Protocol(), "evCancMDFe/nProt");
			w.elReq("xJust", evento.getLBR_Justification(), "evCancMDFe/xJust");
			w.close();
			return;
		}

		if (X_LBR_MDFeEvento.LBR_EVENTTYPE_Encerramento.equals(evento.getLBR_EventType()))
		{
			w.open("evEncMDFe");
			w.el("descEvento", DESC_ENCERRAMENTO);
			w.elReq("nProt", mdfe.getLBR_Protocol(), "evEncMDFe/nProt");
			w.elDate("dtEnc", dataDeEncerramento());
			w.elReq("cUF", codigoUFDeEncerramento(), "evEncMDFe/cUF");
			w.elReq("cMun", codigoMunicipioDeEncerramento(), "evEncMDFe/cMun");
			w.close();
			return;
		}

		if (X_LBR_MDFeEvento.LBR_EVENTTYPE_InclusaoDeCondutor.equals(evento.getLBR_EventType()))
		{
			w.open("evIncCondutorMDFe");
			w.el("descEvento", DESC_INC_CONDUTOR);
			w.open("condutor");
			w.elReq("xNome", evento.getDescription(), "condutor/xNome");
			w.elReq("CPF", MDFeUtil.soDigitos(evento.getLBR_Justification()), "condutor/CPF");
			w.close();
			w.close();
			return;
		}

		throw new AdempiereException("Evento ainda nao implementado: "
				+ evento.getLBR_EventType());
	}

	private Timestamp dataDeEncerramento()
	{
		if (evento.getLBR_DateEncerra() == null)
			throw new AdempiereException("Informe a data de encerramento");

		return evento.getLBR_DateEncerra();
	}

	/**
	 * UF de encerramento, em codigo IBGE.
	 *
	 * <p>Sai do municipio escolhido, nao de um campo separado: a regra K03
	 * (rejeicao 614) exige que as duas primeiras posicoes do codigo do municipio
	 * sejam a UF, e derivar de um lugar so torna a divergencia impossivel.
	 */
	private String codigoUFDeEncerramento()
	{
		String cMun = codigoMunicipioDeEncerramento();

		return CMUN_EXTERIOR.equals(cMun) ? CUF_EXTERIOR : cMun.substring(0, 2);
	}

	private String codigoMunicipioDeEncerramento()
	{
		if (evento.getC_City_ID() <= 0)
			throw new AdempiereException("Informe o municipio de encerramento");

		X_C_City city = new X_C_City(mdfe.getCtx(), evento.getC_City_ID(), mdfe.get_TrxName());
		String cMun = city.get_ValueAsString("LBR_CityCode");

		if (cMun == null || cMun.trim().length() != 7)
			throw new AdempiereException("O municipio de encerramento esta sem codigo IBGE"
					+ " (C_City.LBR_CityCode)");

		return cMun.trim();
	}

	/**
	 * Valida o grupo do evento contra o schema proprio dele.
	 *
	 * <p>O envelope declara detEvento como {@code xs:any processContents="skip"},
	 * entao a validacao do documento inteiro passa por cima do conteudo. Se nao
	 * for aqui, nao e em lugar nenhum - o mesmo problema do infModal.
	 */
	private void validarDetalhe(String xml)
	{
		String grupo;
		String xsd;

		if (X_LBR_MDFeEvento.LBR_EVENTTYPE_Cancelamento.equals(evento.getLBR_EventType()))
		{
			grupo = "evCancMDFe";
			xsd = MDFeXsdValidator.XSD_EV_CANCELAMENTO;
		}
		else if (X_LBR_MDFeEvento.LBR_EVENTTYPE_Encerramento.equals(evento.getLBR_EventType()))
		{
			grupo = "evEncMDFe";
			xsd = MDFeXsdValidator.XSD_EV_ENCERRAMENTO;
		}
		else if (X_LBR_MDFeEvento.LBR_EVENTTYPE_InclusaoDeCondutor.equals(evento.getLBR_EventType()))
		{
			grupo = "evIncCondutorMDFe";
			xsd = MDFeXsdValidator.XSD_EV_INC_CONDUTOR;
		}
		else
		{
			return;
		}

		int ini = xml.indexOf("<" + grupo + ">");
		int fim = xml.indexOf("</" + grupo + ">");

		if (ini < 0 || fim < 0)
			throw new AdempiereException("Grupo <" + grupo + "> nao encontrado no XML do evento");

		String det = xml.substring(ini, fim + grupo.length() + 3)
				.replaceFirst("<" + grupo + ">",
						"<" + grupo + " xmlns=\"" + MDFeXMLGenerator.NAMESPACE + "\">");

		MDFeXsdValidator.validarEx(det, xsd);
	}

	private Timestamp dataDoEvento()
	{
		return (evento.getLBR_DateEvent() != null) ? evento.getLBR_DateEvent()
				: new Timestamp(System.currentTimeMillis());
	}

	private void exigirChave()
	{
		if (mdfe.getLBR_MDFeChave() == null
				|| mdfe.getLBR_MDFeChave().length() != MDFeUtil.TAMANHO_CHAVE)
			throw new AdempiereException("MDF-e sem chave de acesso: nao ha o que eventar");

		if (!X_LBR_MDFe.LBR_TPAMB_Homologacao.equals(mdfe.getLBR_tpAmb())
				&& !X_LBR_MDFe.LBR_TPAMB_Producao.equals(mdfe.getLBR_tpAmb()))
			throw new AdempiereException("Ambiente do MDF-e nao definido");
	}

}
