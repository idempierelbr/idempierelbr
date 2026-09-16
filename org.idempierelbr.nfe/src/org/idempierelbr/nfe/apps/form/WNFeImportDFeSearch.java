/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.apps.form;

import java.sql.Timestamp;
import java.util.Objects;

import org.adempiere.util.Callback;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.editor.WDateEditor;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WStringEditor;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.idempierelbr.nfe.imports.DFeSearchFilter;
import org.zkoss.zk.ui.HtmlBasedComponent;
import org.zkoss.zk.ui.WrongValueException;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Columns;
import org.zkoss.zul.Vlayout;

/**
 * Pergunta os critérios antes de buscar DF-e no monitor.
 *
 * <p>Num diálogo, e não na barra da tela: a busca sem filtro continua sendo o
 * caminho comum, e campos de data e emitente sempre à vista confundem quem só
 * quer trazer o que está pronto. O diálogo abre com a última busca, que costuma
 * ser o ponto de partida da próxima.
 *
 * @author Alan Lescano
 */
public class WNFeImportDFeSearch extends Window implements EventListener<Event> {

	private static final long serialVersionUID = 1L;

	private final Callback<DFeSearchFilter> callback;

	// os valores são lidos na confirmação, sem listener: quem estende a tela de
	// importação sobrescreve o valueChange dela, e estes campos não são do lote
	private final WDateEditor editorDateFrom = new WDateEditor("DateFrom", false, false, true, "Emissão de");
	private final WDateEditor editorDateTo = new WDateEditor("DateTo", false, false, true, "Emissão até");
	private final WStringEditor editorEmitter = new WStringEditor("Emitter", false, false, true, 30, 60, null, null);

	private final ConfirmPanel confirmPanel = new ConfirmPanel(true, false, true, false, false, false);

	/**
	 * @param last     a busca anterior, para os campos já virem preenchidos
	 * @param callback recebe os critérios quando o usuário confirma; não é
	 *                 chamado se ele cancelar
	 */
	public WNFeImportDFeSearch(DFeSearchFilter last, Callback<DFeSearchFilter> callback) {
		this.callback = callback;

		setTitle("Buscar DF-e prontos");
		setBorder("normal");
		setClosable(true);
		setSizable(true);
		ZKUpdateUtil.setWindowWidthX(this, 460);

		init();

		editorDateFrom.setValue(last.dateFrom);
		editorDateTo.setValue(last.dateTo);
		editorEmitter.setValue(last.emitter);
	}

	private void init() {
		Vlayout layout = new Vlayout();
		layout.setStyle("padding: 8px;");
		appendChild(layout);

		Grid grid = GridFactory.newGridLayout();
		layout.appendChild(grid);

		Columns columns = new Columns();
		grid.appendChild(columns);

		Column column = new Column();
		column.setHflex("min");
		column.setAlign("right");
		columns.appendChild(column);

		column = new Column();
		column.setHflex("1");
		columns.appendChild(column);

		Rows rows = new Rows();
		grid.appendChild(rows);

		appendRow(rows, "Emissão de", editorDateFrom);
		appendRow(rows, "Emissão até", editorDateTo);

		editorEmitter.getComponent().setPlaceholder("Razão social ou CNPJ");
		// a raiz do CNPJ é o jeito de achar um fornecedor com várias filiais, e
		// ninguém descobre isso sozinho
		editorEmitter.getComponent().setTooltiptext("Parte da razão social, ou o CNPJ."
				+ " Os 8 primeiros dígitos do CNPJ trazem todas as filiais");
		appendRow(rows, "Emitente", editorEmitter);

		// com filtro o teto do lote deixa de valer: avisar antes evita estranhar
		// quantos documentos vieram
		Label hint = new Label("Sem filtro, a busca traz os DF-e mais antigos até o limite por lote."
				+ " Com filtro, traz todos os que se encaixam.");
		layout.appendChild(hint);

		confirmPanel.addActionListener(this);
		layout.appendChild(confirmPanel);

		// Enter busca e Esc fecha, como nos demais diálogos
		addEventListener(Events.ON_OK, this);
		addEventListener(Events.ON_CANCEL, this);
	}

	private void appendRow(Rows rows, String label, WEditor editor) {
		Row row = new Row();

		if (editor.getComponent() instanceof HtmlBasedComponent)
			ZKUpdateUtil.setHflex((HtmlBasedComponent) editor.getComponent(), "true");

		row.appendChild(new Label(label).rightAlign());
		row.appendChild(editor.getComponent());
		rows.appendChild(row);
	}

	@Override
	public void onEvent(Event event) throws Exception {
		if (Events.ON_CANCEL.equals(event.getName())) {
			dispose();
			return;
		}

		if (Events.ON_OK.equals(event.getName())) {
			search();
			return;
		}

		String id = event.getTarget().getId();

		if (ConfirmPanel.A_OK.equals(id))
			search();
		else if (ConfirmPanel.A_CANCEL.equals(id))
			dispose();
		else if (ConfirmPanel.A_RESET.equals(id))
			clear();
	}

	private void search() {
		DFeSearchFilter filter = new DFeSearchFilter();
		filter.dateFrom = (Timestamp) editorDateFrom.getValue();
		filter.dateTo = (Timestamp) editorDateTo.getValue();

		String emitter = Objects.toString(editorEmitter.getValue(), "").trim();
		filter.emitter = emitter.isEmpty() ? null : emitter;

		String error = filter.validate();

		if (error != null)
			throw new WrongValueException(editorDateTo.getComponent(), error);

		// fecha antes de buscar: a carga termina numa mensagem, e o diálogo
		// aberto por cima dela só atrapalha
		dispose();
		callback.onCallback(filter);
	}

	/** Volta à busca sem filtro, sem precisar apagar campo por campo */
	private void clear() {
		editorDateFrom.setValue(null);
		editorDateTo.setValue(null);
		editorEmitter.setValue(null);
	}
}	//	WNFeImportDFeSearch
