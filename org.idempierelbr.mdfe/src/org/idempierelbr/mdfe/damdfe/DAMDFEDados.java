package org.idempierelbr.mdfe.damdfe;

import java.awt.image.BufferedImage;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeCondutor;
import org.idempierelbr.mdfe.model.X_LBR_MDFeDoc;
import org.idempierelbr.mdfe.model.X_LBR_MDFeLacre;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunDescarga;
import org.idempierelbr.mdfe.model.X_LBR_MDFeReboque;
import org.idempierelbr.mdfe.model.X_LBR_MDFeSeg;
import org.idempierelbr.mdfe.model.X_LBR_MDFeValePed;
import org.idempierelbr.mdfe.util.MDFeUtil;

/**
 * Monta os dados do DAMDFE, no leiaute retrato do ACBr (modal rodoviario).
 *
 * <p>Nada de SQL no relatorio: o Jasper so posiciona. Tudo que e derivado -
 * emitente, chave formatada, codigo de barras, QR Code, avisos de ambiente -
 * e calculado aqui, com os mesmos getters que produzem o XML. Assim o papel e o
 * XML nunca divergem.
 *
 * <p>As colunas de veiculo, condutor, vale-pedagio e seguro sao texto com uma
 * linha por item, como os memos do ACBr: as linhas de colunas vizinhas ficam
 * alinhadas sem precisar de subrelatorio.
 */
public class DAMDFEDados
{
	/** Aviso do ambiente de homologacao, na caixa de observacao. */
	public static final String AVISO_HOMOLOGACAO = "AMBIENTE DE HOMOLOGAÇÃO - SEM VALOR FISCAL";

	/** Aviso de manifesto que ainda nao tem protocolo de autorizacao. */
	public static final String AVISO_NAO_ENVIADO = "MDF-E NÃO ENVIADO PARA SEFAZ";

	/** 3 x 9 cm a 300 dpi dao 1063 px de largura util; 297 modulos cabem com folga. */
	private static final int BARRA_LARGURA_MODULO = 3;

	/** Altura da barra entre 1,5 e 2,5 cm; 2 cm a 300 dpi. */
	private static final int BARRA_ALTURA = 236;

	private static final int QRCODE_LADO = 300;

	/** O ACBr separa o tipo da chave com espacos; aqui sao duas colunas. */
	private static final String[][] TIPOS_DE_DOCUMENTO = {
			{ X_LBR_MDFeDoc.LBR_DFETYPE_CT_E, "CT-e" },
			{ X_LBR_MDFeDoc.LBR_DFETYPE_NF_E, "NF-e" },
			{ X_LBR_MDFeDoc.LBR_DFETYPE_MDF_EDeTransporte, "MDF-e" } };

	private static final Locale PT_BR = new Locale("pt", "BR");

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

		p.put("emit_nome", emit.getName());
		p.put("emit_linhas", linhasDoEmitente(emit));

		p.put("modelo", MDFeUtil.MODELO);
		p.put("serie", zeros(mdfe.getLBR_Serie(), 3));
		p.put("numero", formatarNumero(mdfe.getDocumentNo()));
		p.put("data_emissao", formatarDataHora(mdfe.getDateDoc()));
		p.put("uf_ini", siglaUF(mdfe.getLBR_UFIni_ID()));
		p.put("uf_fim", siglaUF(mdfe.getLBR_UFFim_ID()));

		p.put("chave", formatarChave(mdfe.getLBR_MDFeChave()));
		p.put("protocolo", textoDoProtocolo());
		p.put("barcode", barcode());
		p.put("qrcode", qrcode());

		preencherVeiculos(p);
		preencherCondutores(p);
		preencherValePedagio(p);
		preencherSeguro(p);

		p.put("qtd_cte", String.valueOf(mdfe.getLBR_QtyCTe()));
		p.put("qtd_nfe", String.valueOf(mdfe.getLBR_QtyNFe()));
		p.put("qtd_mdfe", String.valueOf(mdfe.getLBR_QtyMDFe()));
		p.put("peso_rotulo", X_LBR_MDFe.LBR_CUNID_TON.equals(mdfe.getLBR_cUnid())
				? "PESO TOTAL (Ton)" : "PESO TOTAL (Kg)");
		p.put("peso_total", decimal(mdfe.getLBR_QtyCargo(), "#,##0.0000"));
		p.put("valor_carga", decimal(mdfe.getLBR_ValueCargo(), "#,##0.00"));

		p.put("observacoes", observacoes());
		p.put("aviso", aviso());
		p.put("data_impressao", new SimpleDateFormat("dd/MM/yyyy HH:mm").format(new java.util.Date()));

		return p;
	}

	/**
	 * Linhas da relacao de documentos: um municipio de descarga por grupo, dois
	 * documentos por linha.
	 *
	 * <p>Como no ACBr, dentro do municipio os documentos se alternam entre a
	 * coluna da esquerda e a da direita, na ordem do XML: CT-e, NF-e e MDF-e.
	 */
	public List<Map<String, ?>> getDocumentos()
	{
		List<Map<String, ?>> linhas = new ArrayList<>();

		for (X_LBR_MDFeMunDescarga mun : filhos(X_LBR_MDFeMunDescarga.Table_Name, X_LBR_MDFeMunDescarga.class))
		{
			List<X_LBR_MDFeDoc> docs = new Query(mdfe.getCtx(), X_LBR_MDFeDoc.Table_Name,
					"LBR_MDFeMunDescarga_ID=?", mdfe.get_TrxName())
					.setParameters(mun.getLBR_MDFeMunDescarga_ID())
					.setOnlyActiveRecords(true)
					.setOrderBy("Line, LBR_MDFeDoc_ID")
					.list();

			List<String[]> emOrdem = new ArrayList<>();

			for (String[] tipo : TIPOS_DE_DOCUMENTO)
				for (X_LBR_MDFeDoc doc : docs)
					if (tipo[0].equals(doc.getLBR_DFeType()))
						emOrdem.add(new String[] { tipo[1], formatarChave(doc.getLBR_DFeChave()) });

			for (int i = 0; i < emOrdem.size(); i += 2)
			{
				String[] dir = (i + 1 < emOrdem.size()) ? emOrdem.get(i + 1) : new String[] { null, null };

				Map<String, Object> linha = new LinkedHashMap<>();
				linha.put("municipio_id", Integer.valueOf(mun.getLBR_MDFeMunDescarga_ID()));
				linha.put("municipio", mun.getLBR_xMun());
				linha.put("tipo_esq", emOrdem.get(i)[0]);
				linha.put("chave_esq", emOrdem.get(i)[1]);
				linha.put("tipo_dir", dir[0]);
				linha.put("chave_dir", dir[1]);
				linhas.add(linha);
			}
		}

		return linhas;
	}

	// ------------------------------------------------------------- colunas

	/** Tracao primeiro, reboques depois; "placa - UF" e o RNTRC de cada um. */
	private void preencherVeiculos(Map<String, Object> p)
	{
		List<String> placas = new ArrayList<>();
		List<String> rntrcs = new ArrayList<>();

		if (!vazio(mdfe.getLBR_Placa()))
		{
			placas.add(formatarPlaca(mdfe.getLBR_Placa()) + " - " + siglaUF(mdfe.getLBR_VeicUF_ID()));
			rntrcs.add(mdfe.isLBR_IsOwnerNotEmitter() ? texto(mdfe.getLBR_PropRNTRC()) : texto(mdfe.getLBR_RNTRC()));
		}

		for (X_LBR_MDFeReboque reb : filhos(X_LBR_MDFeReboque.Table_Name, X_LBR_MDFeReboque.class))
		{
			placas.add(formatarPlaca(reb.getLBR_Placa()) + " - " + siglaUF(reb.getLBR_VeicUF_ID()));
			rntrcs.add(reb.isLBR_IsOwnerNotEmitter() ? texto(reb.getLBR_PropRNTRC()) : texto(mdfe.getLBR_RNTRC()));
		}

		p.put("placas", String.join("\n", placas));
		p.put("rntrcs", String.join("\n", rntrcs));
	}

	private void preencherCondutores(Map<String, Object> p)
	{
		List<String> cpfs = new ArrayList<>();
		List<String> nomes = new ArrayList<>();

		for (X_LBR_MDFeCondutor cond : filhos(X_LBR_MDFeCondutor.Table_Name, X_LBR_MDFeCondutor.class))
		{
			cpfs.add(formatarCPF(cond.getLBR_CPF()));
			nomes.add(texto(cond.getName()));
		}

		p.put("cpfs", String.join("\n", cpfs));
		p.put("nomes", String.join("\n", nomes));
	}

	private void preencherValePedagio(Map<String, Object> p)
	{
		List<String> responsaveis = new ArrayList<>();
		List<String> fornecedores = new ArrayList<>();
		List<String> comprovantes = new ArrayList<>();

		for (X_LBR_MDFeValePed vp : filhos(X_LBR_MDFeValePed.Table_Name, X_LBR_MDFeValePed.class))
		{
			responsaveis.add(formatarCpfOuCnpj(vp.getLBR_CPFPg(), vp.getLBR_CNPJPg()));
			fornecedores.add(formatarCNPJ(vp.getLBR_CNPJForn()));
			comprovantes.add(texto(vp.getLBR_NCompra()));
		}

		p.put("vp_responsaveis", String.join("\n", responsaveis));
		p.put("vp_fornecedores", String.join("\n", fornecedores));
		p.put("vp_comprovantes", String.join("\n", comprovantes));
	}

	/** O responsavel e o do primeiro seguro, como no ACBr. */
	private void preencherSeguro(Map<String, Object> p)
	{
		List<X_LBR_MDFeSeg> seguros = filhos(X_LBR_MDFeSeg.Table_Name, X_LBR_MDFeSeg.class);
		List<String> seguradoras = new ArrayList<>();
		List<String> apolices = new ArrayList<>();

		for (X_LBR_MDFeSeg seg : seguros)
		{
			seguradoras.add(texto(seg.getLBR_SegName()));
			apolices.add(texto(seg.getLBR_NApol()));
		}

		String responsavel = "";

		if (!seguros.isEmpty())
			responsavel = X_LBR_MDFeSeg.LBR_RESPSEG_ContratanteDoServicoDeTransporte.equals(seguros.get(0).getLBR_RespSeg())
					? "Contratante" : "Emitente";

		p.put("seg_responsavel", responsavel);
		p.put("seguradoras", String.join("\n", seguradoras));
		p.put("apolices", String.join("\n", apolices));
	}

	// ------------------------------------------------------------- derivados

	/**
	 * Endereco, CNPJ, IE e telefone do emitente, uma informacao por linha.
	 *
	 * <p>Os campos do endereco sao os mesmos do grupo enderEmit do XML.
	 */
	private String linhasDoEmitente(MBPartner emit)
	{
		MLocation loc = mdfe.getEnderecoEmitente();
		MOrgInfo info = MOrgInfo.get(mdfe.getCtx(), mdfe.getAD_Org_ID(), mdfe.get_TrxName());

		StringBuilder rua = new StringBuilder(texto(loc.getAddress1()));

		if (!vazio(loc.getAddress2()))
			rua.append(", ").append(loc.getAddress2());

		if (!vazio(loc.getAddress4()))
			rua.append(" - ").append(loc.getAddress4());

		return rua
				+ "\n" + texto(loc.getAddress3())
				+ "\nCEP: " + formatarCEP(loc.getPostal()) + " - " + texto(loc.getCity())
						+ " - " + siglaUF(loc.getC_Region_ID())
				+ "\nCNPJ: " + formatarCNPJ(mdfe.getEmitenteCNPJ())
				+ "\nINSCRIÇÃO ESTADUAL: " + texto(emit.get_ValueAsString("LBR_IE"))
				+ "\nTELEFONE: " + (info == null ? "" : texto(info.getPhone()));
	}

	/**
	 * O que vai no lugar do protocolo.
	 *
	 * <p>Sem protocolo, um manifesto em contingencia leva o texto do ACBr com o
	 * prazo de 168 horas para a autorizacao.
	 */
	private String textoDoProtocolo()
	{
		if (!vazio(mdfe.getLBR_Protocol()))
			return mdfe.getLBR_Protocol() + "   " + formatarDataHora(mdfe.getLBR_DateProtocol());

		if (!X_LBR_MDFe.LBR_TPEMIS_Normal.equals(mdfe.getLBR_tpEmis()))
			return "EMISSÃO EM CONTINGÊNCIA. Obrigatória a autorização em 168 horas após esta Emissão ("
					+ (mdfe.getDateDoc() == null ? "" : new SimpleDateFormat("dd/MM/yyyy HH:mm").format(mdfe.getDateDoc()))
					+ ")";

		return "";
	}

	/** Aviso em destaque na caixa de observacao. */
	private String aviso()
	{
		if (X_LBR_MDFe.LBR_TPAMB_Homologacao.equals(mdfe.getLBR_tpAmb()))
			return AVISO_HOMOLOGACAO;

		if (vazio(mdfe.getLBR_Protocol()) && X_LBR_MDFe.LBR_TPEMIS_Normal.equals(mdfe.getLBR_tpEmis()))
			return AVISO_NAO_ENVIADO;

		return "";
	}

	/**
	 * Observacoes: o que o emitente escreveu, com {@code <BR>} virando quebra de
	 * linha como no ACBr, mais os lacres, que o fisco confere.
	 */
	private String observacoes()
	{
		StringBuilder sb = new StringBuilder();

		if (mdfe.getLBR_InfCpl() != null)
			sb.append(mdfe.getLBR_InfCpl().trim().replaceAll("(?i)<BR>|&lt;BR&gt;", "\n"));

		List<X_LBR_MDFeLacre> lacres = filhos(X_LBR_MDFeLacre.Table_Name, X_LBR_MDFeLacre.class);

		if (!lacres.isEmpty())
		{
			if (sb.length() > 0)
				sb.append('\n');

			sb.append("Lacres: ");

			for (int i = 0; i < lacres.size(); i++)
				sb.append(i > 0 ? ", " : "").append(texto(lacres.get(i).getLBR_NLacre()));
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

	/** Numero com nove digitos em grupos de tres: 272 vira 000.000.272. */
	public static String formatarNumero(String numero)
	{
		String d = zeros(MDFeUtil.soDigitos(numero), 9);

		if (d.length() != 9)
			return texto(numero);

		return d.substring(0, 3) + "." + d.substring(3, 6) + "." + d.substring(6);
	}

	/** Placa de sete caracteres com o hifen depois das letras: KQY4I41 vira KQY-4I41. */
	public static String formatarPlaca(String placa)
	{
		String p = texto(placa).replaceAll("[^A-Za-z0-9]", "").toUpperCase(Locale.ROOT);

		return (p.length() == 7) ? p.substring(0, 3) + "-" + p.substring(3) : p;
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

	/** Decimal no formato brasileiro; vazio vale zero, como no ACBr. */
	private static String decimal(BigDecimal valor, String padrao)
	{
		DecimalFormat formato = new DecimalFormat(padrao, DecimalFormatSymbols.getInstance(PT_BR));
		// O DecimalFormat arredonda o 5 para o par e o XML arredonda para cima:
		// sem isto 10,005 saia 10,00 no papel e 10.01 no XML.
		formato.setRoundingMode(RoundingMode.HALF_UP);

		return formato.format(valor == null ? BigDecimal.ZERO : valor);
	}

	/** Zeros a esquerda ate o tamanho; texto maior volta como esta. */
	private static String zeros(String valor, int tamanho)
	{
		String v = texto(valor).trim();

		while (v.length() < tamanho)
			v = "0" + v;

		return v;
	}

	private static String siglaUF(int C_Region_ID)
	{
		return (C_Region_ID <= 0) ? "" : MRegion.get(Env.getCtx(), C_Region_ID).getName();
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

	/** Nulo vira vazio: o relatorio nunca imprime "null". */
	private static String texto(String s)
	{
		return (s == null) ? "" : s;
	}

	private static boolean vazio(String s)
	{
		return s == null || s.trim().isEmpty();
	}

}
