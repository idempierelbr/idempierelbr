package org.idempierelbr.mdfe.apps.form;

import java.sql.Timestamp;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.Columns;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.editor.WDateEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.Dialog;
import org.compiere.model.MColumn;
import org.compiere.model.MLookupFactory;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zul.Hbox;
import org.idempierelbr.mdfe.util.MDFeUtil;

/**
 * Pergunta onde e quando a viagem terminou, para o evento de encerramento.
 *
 * <p>Sao os dois campos que o evento exige alem do protocolo: data e municipio.
 * A UF nao e perguntada de proposito - ela sai do proprio municipio, e a regra
 * K03 (rejeicao 614) justamente recusa quando as duas divergem.
 */
public class WMDFeEncerramento extends Window implements EventListener<Event>
{
	private static final long serialVersionUID = 1L;

	private final int windowNo;

	private WDateEditor dataEditor;
	private WSearchEditor cidadeEditor;

	private final Button encerrarButton = new Button();
	private final Button cancelarButton = new Button();

	private boolean confirmado = false;

	public WMDFeEncerramento(int windowNo, int C_City_ID) throws Exception
	{
		this.windowNo = windowNo;

		montar();

		dataEditor.setValue(new Timestamp(System.currentTimeMillis()));

		if (C_City_ID > 0)
			cidadeEditor.setValue(Integer.valueOf(C_City_ID));
	}

	public boolean isConfirmado()
	{
		return confirmado;
	}

	public Timestamp getData()
	{
		Object valor = dataEditor.getValue();
		return (valor instanceof Timestamp) ? (Timestamp) valor : null;
	}

	public int getC_City_ID()
	{
		Object valor = cidadeEditor.getValue();
		return (valor == null) ? 0 : ((Integer) valor).intValue();
	}

	private void montar() throws Exception
	{
		setTitle("Encerrar MDF-e");
		setBorder("normal");
		setClosable(true);
		ZKUpdateUtil.setWindowWidthX(this, 460);

		dataEditor = new WDateEditor("LBR_DateEncerra", true, false, true, "Data de encerramento");
		cidadeEditor = criarEditorCidade();

		encerrarButton.setLabel("Encerrar");
		encerrarButton.setImage(ThemeManager.getThemeResource("images/Ok16.png"));
		encerrarButton.addActionListener(this);

		cancelarButton.setLabel("Cancelar");
		cancelarButton.setImage(ThemeManager.getThemeResource("images/Cancel16.png"));
		cancelarButton.addActionListener(this);

		Grid grid = GridFactory.newGridLayout();
		grid.setWidth("100%");
		colunas(grid, "30%", "70%");
		Rows rows = grid.newRows();

		Row r1 = rows.newRow();
		r1.appendCellChild(new Label("Data de encerramento"), 1);
		r1.appendCellChild(dataEditor.getComponent(), 1);

		Row r2 = rows.newRow();
		r2.appendCellChild(new Label("Municipio de encerramento"), 1);
		r2.appendCellChild(cidadeEditor.getComponent(), 1);

		Hbox rodape = new Hbox();
		rodape.setPack("end");
		rodape.appendChild(encerrarButton);
		rodape.appendChild(cancelarButton);

		appendChild(grid);
		appendChild(rodape);
	}

	private WSearchEditor criarEditorCidade() throws Exception
	{
		int columnId = MColumn.getColumn_ID("LBR_MDFeEvento", "C_City_ID");

		if (columnId <= 0)
			throw new AdempiereException("Coluna LBR_MDFeEvento.C_City_ID nao encontrada");

		return new WSearchEditor("C_City_ID", true, false, true,
				MLookupFactory.get(Env.getCtx(), windowNo, columnId, DisplayType.Search,
						Env.getLanguage(Env.getCtx()), "C_City_ID", 0, false, null));
	}

	@Override
	public void onEvent(Event event) throws Exception
	{
		Object alvo = event.getTarget();

		try
		{
			tratar(alvo);
		}
		catch (Exception e)
		{
			// Sem isto, um erro ao ler a data ou o municipio fechava a janela
			// sem dizer nada, e o operador ficava sem saber se encerrou.
			Dialog.error(windowNo, null, MDFeUtil.mensagem(e));
		}
	}

	private void tratar(Object alvo)
	{
		if (alvo == encerrarButton)
		{
			if (getData() == null)
			{
				Dialog.error(windowNo, null, "Informe a data de encerramento");
				return;
			}

			if (getC_City_ID() <= 0)
			{
				Dialog.error(windowNo, null, "Informe o municipio de encerramento");
				return;
			}

			confirmado = true;
		}

		encerrarButton.setDisabled(true);
		cancelarButton.setDisabled(true);

		// So detach: o Window do iDempiere ja dispara ON_WINDOW_CLOSE ao ser
		// desanexado da pagina (fireWindowCloseEventOnDetach). Postar o evento
		// tambem entregava dois - e dois encerramentos em paralelo, um deles
		// recusado por duplicidade (631).
		detach();
	}
	/** Colunas com largura explicita; sem isso o ZK espreme rotulo e campo. */
	private void colunas(Grid grid, String... larguras) {
		Columns cols = new Columns();
		grid.appendChild(cols);

		for (String largura : larguras) {
			Column c = new Column();
			c.setWidth(largura);
			cols.appendChild(c);
		}
	}

}
