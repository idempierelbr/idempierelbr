package org.idempierelbr.mdfe.damdfe;

import java.awt.image.BufferedImage;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MRegion;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeCondutor;
import org.idempierelbr.mdfe.model.X_LBR_MDFeLacre;
import org.idempierelbr.mdfe.model.X_LBR_MDFeReboque;
import org.idempierelbr.mdfe.model.X_LBR_MDFeValePed;
import org.idempierelbr.mdfe.util.MDFeUtil;

/**
 * Monta os dados do DAMDFE, no leiaute do MOC Anexo II (modal rodoviario).
 *
 * <p>Nada de SQL no relatorio: o Jasper so posiciona. Tudo que e derivado -
 * emitente, chave formatada, codigo de barras, QR Code, avisos de ambiente -
 * e calculado aqui, com os mesmos getters que produzem o XML. Assim o papel e o
 * XML nunca divergem.
 */
public class DAMDFEDados
{
	/** Consulta publica do MDF-e, a mesma que o DAMDFE manda imprimir. */
	public static final String URL_CONSULTA = "https://dfe-portal.svrs.rs.gov.br/MDFe/Consulta";

	/**
	 * Aviso obrigatorio em homologacao (MOC Anexo II, secao 2.5): caixa alta e
	 * centralizado, no lugar do protocolo.
	 */
	public static final String AVISO_HOMOLOGACAO =
			"EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL";

	/** Aviso obrigatorio em contingencia (MOC Anexo II, secao 2.4). */
	public static final String AVISO_CONTINGENCIA = "EMISSAO EM CONTINGENCIA";

	/** 3 x 9 cm a 300 dpi dao 1063 px de largura util; 297 modulos cabem com folga. */
	private static final int BARRA_LARGURA_MODULO = 3;

	/** Altura da barra entre 1,5 e 2,5 cm; 2 cm a 300 dpi. */
	private static final int BARRA_ALTURA = 236;

	private static final int QRCODE_LADO = 300;

	private final MLBRMDFe mdfe;

	public DAMDFEDados(MLBRMDFe mdfe)
	{
		this.mdfe = mdfe;
	}

	/** Parametros do relatorio. */
	public Map<String, Object> getParametros()
	{
		Map<String, Object> p = new HashMap<>();

		MBPartner emit = mdfe.getEmitente();
		MLocation loc = mdfe.getEnderecoEmitente();

		p.put("emit_nome", emit.getName());
		p.put("emit_endereco", enderecoEmitente(loc));
		p.put("emit_municipio", loc.getCity() + " - " + siglaUF(loc.getC_Region_ID()));
		p.put("emit_cep", formatarCEP(loc.getPostal()));
		p.put("emit_cnpj", formatarCNPJ(mdfe.getEmitenteCNPJ()));
		p.put("emit_ie", emit.get_ValueAsString("LBR_IE"));
		p.put("emit_rntrc", mdfe.getLBR_RNTRC());

		p.put("modelo", MDFeUtil.MODELO);
		p.put("serie", mdfe.getLBR_Serie());
		p.put("numero", mdfe.getDocumentNo());
		p.put("data_emissao", formatarDataHora(mdfe.getDateDoc()));
		p.put("uf_ini", siglaUF(mdfe.getLBR_UFIni_ID()));
		p.put("uf_fim", siglaUF(mdfe.getLBR_UFFim_ID()));

		p.put("qtd_cte", Integer.valueOf(mdfe.getLBR_QtyCTe()));
		p.put("qtd_nfe", Integer.valueOf(mdfe.getLBR_QtyNFe()));
		p.put("peso_total", mdfe.getLBR_QtyCargo() == null ? BigDecimal.ZERO : mdfe.getLBR_QtyCargo());

		p.put("chave", formatarChave(mdfe.getLBR_MDFeChave()));
		p.put("url_consulta", URL_CONSULTA);
		p.put("protocolo", textoDoProtocolo());
		p.put("aviso", avisoDeAmbiente());
		p.put("observacoes", observacoes());

		p.put("barcode", barcode());
		p.put("qrcode", qrcode());

		return p;
	}

	/**
	 * Veiculos do manifesto: tracao primeiro, reboques depois.
	 *
	 * <p>O leiaute do DAMDFE tem uma lista so, sem distinguir os dois - e o que
	 * a fiscalizacao confere contra a composicao parada na estrada.
	 */
	public List<Map<String, ?>> getVeiculos()
	{
		List<Map<String, ?>> linhas = new ArrayList<>();

		if (mdfe.getLBR_Placa() != null && !mdfe.getLBR_Placa().trim().isEmpty())
			linhas.add(veiculo(mdfe.getLBR_Placa(),
					mdfe.isLBR_IsOwnerNotEmitter() ? mdfe.getLBR_PropRNTRC() : mdfe.getLBR_RNTRC()));

		for (X_LBR_MDFeReboque reb : filhos(X_LBR_MDFeReboque.Table_Name, X_LBR_MDFeReboque.class))
			linhas.add(veiculo(reb.getLBR_Placa(),
					reb.isLBR_IsOwnerNotEmitter() ? reb.getLBR_PropRNTRC() : mdfe.getLBR_RNTRC()));

		return linhas;
	}

	public List<Map<String, ?>> getCondutores()
	{
		List<Map<String, ?>> linhas = new ArrayList<>();

		for (X_LBR_MDFeCondutor cond : filhos(X_LBR_MDFeCondutor.Table_Name, X_LBR_MDFeCondutor.class))
		{
			Map<String, Object> linha = new LinkedHashMap<>();
			linha.put("cpf", formatarCPF(cond.getLBR_CPF()));
			linha.put("nome", cond.getName());
			linhas.add(linha);
		}

		return linhas;
	}

	public List<Map<String, ?>> getValePedagio()
	{
		List<Map<String, ?>> linhas = new ArrayList<>();

		for (X_LBR_MDFeValePed vp : filhos(X_LBR_MDFeValePed.Table_Name, X_LBR_MDFeValePed.class))
		{
			Map<String, Object> linha = new LinkedHashMap<>();
			linha.put("responsavel", formatarCpfOuCnpj(vp.getLBR_CPFPg(), vp.getLBR_CNPJPg()));
			linha.put("fornecedor", formatarCNPJ(vp.getLBR_CNPJForn()));
			linha.put("comprovante", vp.getLBR_NCompra());
			linhas.add(linha);
		}

		return linhas;
	}

	// ------------------------------------------------------------- derivados

	/**
	 * O que vai no lugar do protocolo.
	 *
	 * <p>Em contingencia o manual manda escrever "EMISSAO EM CONTINGENCIA"
	 * exatamente aqui, e nao o protocolo - que ainda nao existe.
	 */
	private String textoDoProtocolo()
	{
		if (!X_LBR_MDFe.LBR_TPEMIS_Normal.equals(mdfe.getLBR_tpEmis()))
			return AVISO_CONTINGENCIA;

		if (mdfe.getLBR_Protocol() == null || mdfe.getLBR_Protocol().trim().isEmpty())
			return "";

		return mdfe.getLBR_Protocol() + " - " + formatarDataHora(mdfe.getLBR_DateProtocol());
	}

	private String avisoDeAmbiente()
	{
		return X_LBR_MDFe.LBR_TPAMB_Homologacao.equals(mdfe.getLBR_tpAmb()) ? AVISO_HOMOLOGACAO : "";
	}

	/** Observacoes: o que o emitente escreveu, mais os lacres, que o fisco confere. */
	private String observacoes()
	{
		StringBuilder sb = new StringBuilder();

		if (mdfe.getLBR_InfCpl() != null)
			sb.append(mdfe.getLBR_InfCpl().trim());

		List<X_LBR_MDFeLacre> lacres = filhos(X_LBR_MDFeLacre.Table_Name, X_LBR_MDFeLacre.class);

		if (!lacres.isEmpty())
		{
			if (sb.length() > 0)
				sb.append('\n');

			sb.append("Lacres: ");

			for (int i = 0; i < lacres.size(); i++)
				sb.append(i > 0 ? ", " : "").append(lacres.get(i).getLBR_NLacre());
		}

		return sb.toString();
	}

	private BufferedImage barcode()
	{
		return Code128C.gerar(mdfe.getLBR_MDFeChave(), BARRA_LARGURA_MODULO, BARRA_ALTURA);
	}

	/**
	 * QR Code do texto que foi para o XML.
	 *
	 * <p>Regenerar o texto aqui daria margem a divergir do que foi autorizado;
	 * por isso le a coluna, e so cai no calculo quando ela esta vazia (MDF-e
	 * ainda nao transmitido).
	 */
	private BufferedImage qrcode()
	{
		String texto = mdfe.getLBR_QrCodMDFe();

		if (texto == null || texto.trim().isEmpty())
			texto = MDFeUtil.montarQrCode(mdfe.getLBR_MDFeChave(), mdfe.getLBR_tpAmb());

		return QrCodeImagem.gerar(texto, QRCODE_LADO);
	}

	// -------------------------------------------------------------- formatos

	/** Chave em blocos de 4, como o modelo do manual mostra. */
	public static String formatarChave(String chave)
	{
		if (chave == null || chave.length() != MDFeUtil.TAMANHO_CHAVE)
			return (chave == null) ? "" : chave;

		StringBuilder sb = new StringBuilder(55);

		for (int i = 0; i < MDFeUtil.TAMANHO_CHAVE; i += 4)
			sb.append(i > 0 ? " " : "").append(chave, i, i + 4);

		return sb.toString();
	}

	public static String formatarCNPJ(String cnpj)
	{
		String d = MDFeUtil.soDigitos(cnpj);

		if (d.length() != 14)
			return d;

		return d.substring(0, 2) + "." + d.substring(2, 5) + "." + d.substring(5, 8)
				+ "/" + d.substring(8, 12) + "-" + d.substring(12);
	}

	public static String formatarCPF(String cpf)
	{
		String d = MDFeUtil.soDigitos(cpf);

		if (d.length() != 11)
			return d;

		return d.substring(0, 3) + "." + d.substring(3, 6) + "." + d.substring(6, 9)
				+ "-" + d.substring(9);
	}

	private static String formatarCpfOuCnpj(String cpf, String cnpj)
	{
		return MDFeUtil.soDigitos(cnpj).isEmpty() ? formatarCPF(cpf) : formatarCNPJ(cnpj);
	}

	private static String formatarCEP(String cep)
	{
		String d = MDFeUtil.soDigitos(cep);
		return (d.length() == 8) ? d.substring(0, 5) + "-" + d.substring(5) : d;
	}

	private static String formatarDataHora(java.util.Date data)
	{
		return (data == null) ? "" : new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(data);
	}

	private static String enderecoEmitente(MLocation loc)
	{
		StringBuilder sb = new StringBuilder();
		sb.append(vazio(loc.getAddress1()) ? "" : loc.getAddress1());

		if (!vazio(loc.getAddress2()))
			sb.append(", ").append(loc.getAddress2());

		if (!vazio(loc.getAddress3()))
			sb.append(" - ").append(loc.getAddress3());

		return sb.toString();
	}

	private static String siglaUF(int C_Region_ID)
	{
		return (C_Region_ID <= 0) ? "" : MRegion.get(Env.getCtx(), C_Region_ID).getName();
	}

	private static Map<String, Object> veiculo(String placa, String rntrc)
	{
		Map<String, Object> linha = new LinkedHashMap<>();
		linha.put("placa", placa);
		linha.put("rntrc", rntrc);
		return linha;
	}

	private <T extends PO> List<T> filhos(String tableName, Class<T> tipo)
	{
		if (mdfe.get_ID() <= 0)
			throw new AdempiereException("MDF-e nao gravado");

		return new Query(mdfe.getCtx(), tableName, "LBR_MDFe_ID=?", mdfe.get_TrxName())
				.setParameters(mdfe.getLBR_MDFe_ID())
				.setOnlyActiveRecords(true)
				.setOrderBy("Line, " + tableName + "_ID")
				.<T>list();
	}

	private static boolean vazio(String s)
	{
		return s == null || s.trim().isEmpty();
	}

}
