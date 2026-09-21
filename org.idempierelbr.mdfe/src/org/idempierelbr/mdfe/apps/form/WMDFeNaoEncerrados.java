package org.idempierelbr.mdfe.apps.form;

import java.util.List;
import java.util.Vector;

import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.Dialog;
import org.compiere.util.DB;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Center;
import org.zkoss.zul.Hbox;
import org.zkoss.zul.North;
import org.zkoss.zul.South;

import org.idempierelbr.mdfe.util.MDFeConsultas;
import org.idempierelbr.mdfe.util.MDFeUtil;

/**
 * Lista os MDF-e que a SEFAZ tem em aberto para o emitente.
 *
 * <p>Enquanto um manifesto fica nao encerrado, a SEFAZ recusa novos manifestos
 * para a mesma placa. Sem esta tela, isso so aparece na recusa - com o caminhao
 * carregado esperando. Aqui aparece antes, e a coluna "no sistema" diz se o
 * manifesto pendente e um que temos aqui (e da para encerrar) ou um emitido por
 * outro meio.
 */
public class WMDFeNaoEncerrados extends Window implements EventListener<Event>
{
	private static final long serialVersionUID = 1L;

	private static final int COL_CHAVE = 0;

	private final WListbox tabela = ListboxFactory.newDataTable();
	private final Button abrirButton = new Button();
	private final Button fecharButton = new Button();
	private final Label resumoLabel = new Label();

	private int escolhido = 0;

	public WMDFeNaoEncerrados(MDFeConsultas.Resposta resposta)
	{
		montar();
		carregar(resposta);
	}

	/** MDF-e escolhido para abrir no formulario, ou zero. */
	public int getEscolhido()
	{
		return escolhido;
	}

	private void montar()
	{
		setTitle("MDF-e nao encerrados na SEFAZ");
		setBorder("normal");
		setClosable(true);
		setSizable(true);
		ZKUpdateUtil.setWindowWidthX(this, 780);
		ZKUpdateUtil.setWindowHeightX(this, 420);

		abrirButton.setLabel("Abrir no formulario");
		abrirButton.setImage(ThemeManager.getThemeResource("images/Ok16.png"));
		abrirButton.addActionListener(this);

		fecharButton.setLabel("Fechar");
		fecharButton.setImage(ThemeManager.getThemeResource("images/Cancel16.png"));
		fecharButton.addActionListener(this);

		tabela.addEventListener(Events.ON_DOUBLE_CLICK, this);
		ZKUpdateUtil.setVflex(tabela, "1");
		ZKUpdateUtil.setHflex(tabela, "1");

		Hbox rodape = new Hbox();
		rodape.setPack("end");
		rodape.appendChild(abrirButton);
		rodape.appendChild(fecharButton);

		Borderlayout layout = new Borderlayout();
		ZKUpdateUtil.setVflex(layout, "1");
		ZKUpdateUtil.setHflex(layout, "1");

		North norte = new North();
		norte.appendChild(resumoLabel);
		layout.appendChild(norte);

		Center centro = new Center();
		ZKUpdateUtil.setVflex(centro, "1");
		centro.appendChild(tabela);
		layout.appendChild(centro);

		South sul = new South();
		sul.appendChild(rodape);
		layout.appendChild(sul);

		appendChild(layout);
	}

	private void carregar(MDFeConsultas.Resposta resposta)
	{
		resumoLabel.setValue(resposta.resumo() + "  -  "
				+ resposta.naoEncerrados.size() + " manifesto(s) em aberto");

		Vector<String> colunas = new Vector<>();
		colunas.add("Chave de acesso");
		colunas.add("Protocolo");
		colunas.add("No sistema");

		Vector<Vector<Object>> dados = new Vector<>();

		for (MDFeConsultas.NaoEncerrado ne : resposta.naoEncerrados)
		{
			Vector<Object> linha = new Vector<>();
			linha.add(ne.chMDFe);
			linha.add(ne.nProt);
			linha.add(numeroLocal(ne.chMDFe));
			dados.add(linha);
		}

		tabela.setData(new ListModelTable(dados), colunas);

		for (int i = 0; i < colunas.size(); i++)
			tabela.setColumnClass(i, String.class, true);

		tabela.autoSize();
	}

	/**
	 * Numero do MDF-e aqui, quando a chave pendente corresponde a um manifesto
	 * nosso. Manifesto emitido por outro sistema aparece como desconhecido.
	 */
	private String numeroLocal(String chave)
	{
		String numero = DB.getSQLValueString(null,
				"SELECT DocumentNo FROM LBR_MDFe WHERE LBR_MDFeChave=?", chave);

		return (numero == null) ? "nao esta neste sistema" : numero;
	}

	private void abrirSelecionado()
	{
		int linha = tabela.getSelectedRow();

		if (linha < 0)
			return;

		String chave = (String) tabela.getValueAt(linha, COL_CHAVE);
		int id = DB.getSQLValue(null, "SELECT LBR_MDFe_ID FROM LBR_MDFe WHERE LBR_MDFeChave=?", chave);

		escolhido = Math.max(id, 0);
		fechar();
	}

	private void fechar()
	{
		// O detach ja dispara ON_WINDOW_CLOSE.
		detach();
	}

	@Override
	public void onEvent(Event event) throws Exception
	{
		Object alvo = event.getTarget();

		try
		{
			if (alvo == abrirButton || alvo == tabela)
				abrirSelecionado();
			else if (alvo == fecharButton)
				fechar();
		}
		catch (Exception e)
		{
			Dialog.error(0, null, MDFeUtil.mensagem(e));
		}
	}
}
