package org.idempierelbr.mdfe.apps.form;

import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.List;
import java.util.Vector;

import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Textbox;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.Dialog;
import org.compiere.util.CLogger;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Center;
import org.zkoss.zul.Hbox;
import org.zkoss.zul.North;
import org.zkoss.zul.South;
import org.idempierelbr.mdfe.util.MDFeUtil;

/**
 * Escolhe um MDF-e ja gravado para reabrir no formulario de emissao.
 *
 * <p>Janela modal simples: um campo de busca, a lista e o botao de abrir. Quem
 * consome le {@link #getEscolhido()} no fechamento - zero se o operador desistiu.
 */
public class WMDFeLocalizar extends Window implements EventListener<Event>
{
	private static final long serialVersionUID = 1L;

	/** Colunas da lista. A primeira e o ID e fica escondida do operador. */
	private static final int COL_ID = 0;

	private static final CLogger log = CLogger.getCLogger(WMDFeLocalizar.class);

	private final int windowNo;
	private final MDFeEmissao emissao;

	private int escolhido = 0;

	private final Textbox filtroField = new Textbox();
	private final Button procurarButton = new Button();
	private final Button abrirButton = new Button();
	private final Button cancelarButton = new Button();
	private final WListbox tabela = ListboxFactory.newDataTable();

	public WMDFeLocalizar(int windowNo, MDFeEmissao emissao)
	{
		this.windowNo = windowNo;
		this.emissao = emissao;

		montar();
		procurar();
	}

	/** O MDF-e escolhido, ou zero se a janela foi fechada sem escolha. */
	public int getEscolhido()
	{
		return escolhido;
	}

	private void montar()
	{
		setTitle("Localizar MDF-e");
		setBorder("normal");
		setClosable(true);
		setSizable(true);
		setMaximizable(true);
		ZKUpdateUtil.setWindowWidthX(this, 900);
		ZKUpdateUtil.setWindowHeightX(this, 520);

		filtroField.setPlaceholder("Numero, chave, placa ou " + emissao.rotuloOrigemBusca().toLowerCase());
		ZKUpdateUtil.setWidth(filtroField, "340px");
		filtroField.addEventListener(Events.ON_OK, this);

		procurarButton.setLabel("Procurar");
		procurarButton.setImage(ThemeManager.getThemeResource("images/Find16.png"));
		procurarButton.addActionListener(this);

		abrirButton.setLabel("Abrir");
		abrirButton.setImage(ThemeManager.getThemeResource("images/Ok16.png"));
		abrirButton.addActionListener(this);

		cancelarButton.setLabel("Cancelar");
		cancelarButton.setImage(ThemeManager.getThemeResource("images/Cancel16.png"));
		cancelarButton.addActionListener(this);

		Hbox topo = new Hbox();
		topo.setPack("start");
		topo.appendChild(filtroField);
		topo.appendChild(procurarButton);

		Hbox rodape = new Hbox();
		rodape.setPack("end");
		rodape.appendChild(abrirButton);
		rodape.appendChild(cancelarButton);

		// Duplo clique na linha abre direto: e o gesto que todo mundo tenta antes
		// de procurar o botao.
		tabela.addEventListener(Events.ON_DOUBLE_CLICK, this);
		ZKUpdateUtil.setVflex(tabela, "1");
		ZKUpdateUtil.setHflex(tabela, "1");

		Borderlayout layout = new Borderlayout();
		ZKUpdateUtil.setVflex(layout, "1");
		ZKUpdateUtil.setHflex(layout, "1");

		North norte = new North();
		norte.appendChild(topo);
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

	private void procurar()
	{
		List<MDFeEmissao.LinhaBusca> linhas = emissao.localizar(filtroField.getValue());

		Vector<String> colunas = new Vector<>();
		colunas.add("ID");
		colunas.add("Numero");
		colunas.add("Serie");
		colunas.add("Situacao");
		colunas.add("Data");
		colunas.add("Placa");
		colunas.add(emissao.rotuloOrigemBusca());
		colunas.add("Chave de acesso");

		Vector<Vector<Object>> dados = new Vector<>();

		for (MDFeEmissao.LinhaBusca l : linhas)
		{
			Vector<Object> linha = new Vector<>();
			linha.add(Integer.valueOf(l.LBR_MDFe_ID));
			linha.add(l.numero);
			linha.add(l.serie);
			linha.add(l.situacao);
			linha.add(l.data);
			linha.add(l.placa);
			linha.add(l.origem);
			linha.add(l.chave);
			dados.add(linha);
		}

		tabela.setData(new ListModelTable(dados), colunas);
		tabela.setColumnClass(COL_ID, Integer.class, true);
		tabela.setColumnClass(1, String.class, true);
		tabela.setColumnClass(2, String.class, true);
		tabela.setColumnClass(3, String.class, true);
		tabela.setColumnClass(4, Timestamp.class, true);
		tabela.setColumnClass(5, String.class, true);
		tabela.setColumnClass(6, String.class, true);
		tabela.setColumnClass(7, String.class, true);
		tabela.autoSize();

		if (linhas.isEmpty())
			Dialog.info(windowNo, null, "Nenhum MDF-e encontrado");
		else if (linhas.size() >= MDFeEmissao.LIMITE_BUSCA)
			Dialog.info(windowNo, null, "Mostrando os " + MDFeEmissao.LIMITE_BUSCA
					+ " mais recentes. Refine a busca para achar os mais antigos.");
	}

	private void abrirSelecionado()
	{
		int linha = tabela.getSelectedRow();

		if (linha < 0)
		{
			Dialog.info(windowNo, null, "Selecione o MDF-e na lista");
			return;
		}

		escolhido = ((Integer) tabela.getValueAt(linha, COL_ID)).intValue();
		fechar();
	}

	private void fechar()
	{
		// O Window do iDempiere ja dispara ON_WINDOW_CLOSE no detach; postar
		// tambem entregaria o evento duas vezes.
		detach();
	}

	@Override
	public void onEvent(Event event) throws Exception
	{
		Object alvo = event.getTarget();

		// Sem este try, uma falha na busca (SQL, dado inconsistente) subia para o
		// ZK e o operador via a janela nao reagir, sem nenhuma mensagem.
		try
		{
			if (alvo == procurarButton || alvo == filtroField)
				procurar();
			else if (alvo == abrirButton || alvo == tabela)
				abrirSelecionado();
			else if (alvo == cancelarButton)
				fechar();
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
			Dialog.error(windowNo, null, MDFeUtil.mensagem(e));
		}
	}
}
