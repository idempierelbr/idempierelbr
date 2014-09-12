package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoImpressao;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TitulosEmCobrancaSegmentoS extends RegistroDeDetalhe {
	private TipoImpressao tipoImpressao;
	private Controle controle;
	private Servico4 servico;
	//TODO MELHORAR ISSO!
	private String infoImpressao;

	public TitulosEmCobrancaSegmentoS(TipoImpressao tipoImpressao) {
		setTipoImpressao(tipoImpressao);
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("S");
/*		if(tipoImpressao.equals(TipoImpressao.FRENTE_DO_BLOQUETO) || tipoImpressao.equals(TipoImpressao.VERSO_DO_BLOQUETO)){
			
		}else if(tipoImpressao.equals(TipoImpressao.CORPO_INSTRICUES_FICHA_COMPENSACAO__DO_BLOQUETO)){
			
		}*/
	}
	
	public void setTipoImpressao(TipoImpressao tipoImpressao) {
		this.tipoImpressao = tipoImpressao;
	}
	
	public TipoImpressao getTipoImpressao() {
		return tipoImpressao;
	}
	
	public void setTipoImpressao3(TipoImpressao3 tipoImpressao3) {
		StringBuilder sb = new StringBuilder(223);
		sb.append(ArquivoUtils.getCampoNumerico(tipoImpressao3.tipoImpressao.getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(tipoImpressao3.informacao5, 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(tipoImpressao3.informacao6, 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(tipoImpressao3.informacao7, 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(tipoImpressao3.informacao8, 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(tipoImpressao3.informacao9, 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico("", 22));
		this.infoImpressao = sb.toString();
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(infoImpressao, 223));
		
		return sb.toString();
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico4 getServico() {
		return servico;
	}

	public void setServico(Servico4 servico) {
		this.servico = servico;
	}

	public class TipoImpressao1E2 {
		public TipoImpressao tipoImpressao;
		public int numeroLinha;
		public String mensagem;
		public String tipoDeFonte;
		public String campoExclusivoCNAB;
	}

	public class TipoImpressao3{
		public TipoImpressao tipoImpressao;
		public String informacao5;
		public String informacao6;
		public String informacao7;
		public String informacao8;
		public String informacao9;
		public String campoExclusivoCNAB;
	}

}
