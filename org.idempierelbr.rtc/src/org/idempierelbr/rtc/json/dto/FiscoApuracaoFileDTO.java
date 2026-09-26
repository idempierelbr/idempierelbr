package org.idempierelbr.rtc.json.dto;

import java.math.BigDecimal;
import java.util.List;

import com.google.gson.annotations.SerializedName;

/**
 * Arquivo baixado da URL assinada das APIs de apuração da CBS, conforme a
 * documentação da Receita de 17/09/2026 (versão 1.1). A mesma estrutura serve
 * aos quatro serviços; cada um preenche o seu grupo dentro de
 * {@code apuracao[]}:
 *
 * <ul>
 * <li>débitos: {@code apuracao[].debitos[]};
 * <li>créditos: {@code apuracao[].creditos[]};
 * <li>pagamentos e recolhimentos: {@code apuracao[].pagamentos[]}.
 * </ul>
 *
 * <p>Campos que a Receita venha a acrescentar são ignorados na leitura; o
 * arquivo original fica anexado à solicitação.
 *
 * @author Alan Lescano
 */
public class FiscoApuracaoFileDTO {

	public String tiqueteSolicitacao;
	/** CNPJ base do contribuinte, 8 dígitos */
	public String ni;
	public String niConsumidor;
	public String geradoEm;
	public List<Periodo> apuracao;

	/** Um período de apuração (débitos e créditos) ou uma data de arrecadação (pagamentos) */
	public static class Periodo {
		/** {@code MM/AAAA} */
		public String pa;
		public List<Documento> debitos;
		public List<Documento> creditos;

		public String dataArrecadacao;
		public List<Pagamento> pagamentos;
	}

	/** Documento fiscal apurado, de débito ou de crédito */
	public static class Documento {
		public Integer origem;
		/** Modelo do documento: 55 = NF-e, 65 = NFC-e, 57 = CT-e... */
		public Integer documento;
		public String chave;
		public String emissao;
		public String registro;
		public String atualizacao;
		public Valores cbs;
	}

	/**
	 * Valores da CBS de um documento. Débito e crédito usam grupos diferentes:
	 * o débito traz {@code excedente}, {@code inexigivel}, {@code suspenso},
	 * {@code extinto} e {@code saldoDevedor}; o crédito traz
	 * {@code excedentes} e o grupo {@code apropriacao}.
	 */
	public static class Valores {
		public BigDecimal apurado;

		/** Débito */
		public BigDecimal excedente;
		/** Crédito */
		public BigDecimal excedentes;

		public BigDecimal inexigivel;
		public BigDecimal suspenso;
		public BigDecimal extinto;
		public BigDecimal saldoDevedor;

		public Apropriacao apropriacao;

		/** O excedente, venha ele no singular (débito) ou no plural (crédito) */
		public BigDecimal getExcedente() {
			return excedente != null ? excedente : excedentes;
		}
	}

	/** Apropriação de um crédito */
	public static class Apropriacao {
		public BigDecimal inapropriavel;
		public BigDecimal suspenso;
		public BigDecimal prescrito;
		public BigDecimal aApropriar;
		public BigDecimal apropriado;
		public Utilizacao utilizacao;
	}

	/** Utilização de um crédito apropriado */
	public static class Utilizacao {
		public BigDecimal inutilizavel;
		public BigDecimal utilizado;
		public BigDecimal restabelecido;
		public NaoUtilizado naoUtilizado;
	}

	/** Parte não utilizada de um crédito */
	public static class NaoUtilizado {
		public BigDecimal saldoCredor;
		public BigDecimal pedidoRessarcimento;
	}

	/** Pagamento (DARF) — serviços de pagamentos e recolhimentos */
	public static class Pagamento {
		public String numeroDARF;
		public Integer tipo;
		/** Só no serviço de pagamentos */
		public String niAdquirente;
		public List<Composicao> composicao;
	}

	/** Item da composição de um pagamento */
	public static class Composicao {
		public Integer sequencial;
		public String pa;
		public String vencimento;
		/** Só no serviço de pagamentos */
		@SerializedName("ni_contribuinte")
		public String niContribuinte;
		/** Só no serviço de recolhimentos */
		public String niFornecedor;
		public String chaveDFE;
		public BigDecimal principal;
		public BigDecimal multa;
		public BigDecimal juros;
		public BigDecimal total;
	}
}
