package org.idempierelbr.mdfe.apps.form;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.Columns;
import org.adempiere.webui.component.Checkbox;
import org.adempiere.webui.component.Combobox;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.Textbox;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.Dialog;
import org.compiere.model.MColumn;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MRefList;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.ValueNamePair;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Hbox;
import org.idempierelbr.mdfe.util.MDFeUtil;

/**
 * Mini-janela para editar um filho do MDF-e.
 *
 * <p>Montada a partir de uma lista de {@link MDFeCampo}: os grupos do leiaute
 * tem campos demais para caber na aba junto com o resto, e cada um deles e
 * usado de vez em quando, nao a toda emissao. Em janela, a aba fica legivel e
 * o grupo ganha espaco para todos os campos que o manual pede.
 *
 * <p>Grava o {@code PO} recebido. Quem chamou le {@link #isGravado()} no
 * fechamento para saber se precisa recarregar a grade.
 */
public class WMDFeChildDialog extends Window implements EventListener<Event>
{
	private static final long serialVersionUID = 1L;

	private final PO po;
	private final List<MDFeCampo> campos;
	private static final CLogger log = CLogger.getCLogger(WMDFeChildDialog.class);

	private final int windowNo;

	private final List<Object> editores = new ArrayList<>();

	private final Button gravarButton = new Button();
	private final Button cancelarButton = new Button();

	private boolean gravado = false;

	/**
	 * Quando falso, os campos sao aplicados ao PO mas nada e gravado.
	 *
	 * <p>Serve para coletar dados que ainda vao para outro lugar - o evento de
	 * inclusao de condutor, por exemplo, so existe depois que a SEFAZ aceita.
	 * Gravar antes deixaria registro de um evento que talvez nunca aconteca.
	 */
	private final boolean gravaNoBanco;

	public WMDFeChildDialog(int windowNo, String titulo, PO po, List<MDFeCampo> campos)
	{
		this(windowNo, titulo, po, campos, true);
	}

	public WMDFeChildDialog(int windowNo, String titulo, PO po, List<MDFeCampo> campos,
			boolean gravaNoBanco)
	{
		this.windowNo = windowNo;
		this.po = po;
		this.campos = campos;
		this.gravaNoBanco = gravaNoBanco;

		montar(titulo);
		carregar();
	}

	public boolean isGravado()
	{
		return gravado;
	}

	private void montar(String titulo)
	{
		setTitle(titulo);
		setBorder("normal");
		setClosable(true);
		setSizable(true);
		ZKUpdateUtil.setWindowWidthX(this, 560);

		Grid grid = GridFactory.newGridLayout();
		grid.setWidth("100%");
		colunas(grid, "30%", "70%");
		Rows rows = grid.newRows();

		for (MDFeCampo campo : campos)
		{
			Object editor = criarEditor(campo);
			editores.add(editor);

			Row row = rows.newRow();
			row.appendCellChild(new Label(campo.rotulo + (campo.obrigatorio ? " *" : "")), 1);
			row.appendCellChild(componente(editor), 1);
		}

		gravarButton.setLabel("Gravar");
		gravarButton.setImage(ThemeManager.getThemeResource("images/Save16.png"));
		gravarButton.addActionListener(this);

		cancelarButton.setLabel("Cancelar");
		cancelarButton.setImage(ThemeManager.getThemeResource("images/Cancel16.png"));
		cancelarButton.addActionListener(this);

		Hbox rodape = new Hbox();
		rodape.setPack("end");
		rodape.appendChild(gravarButton);
		rodape.appendChild(cancelarButton);

		appendChild(grid);
		appendChild(rodape);
	}

	private Object criarEditor(MDFeCampo campo)
	{
		switch (campo.tipo)
		{
			case LISTA:
			{
				Combobox combo = new Combobox();
				int refId = DB.getSQLValue(null,
						"SELECT AD_Reference_ID FROM AD_Reference WHERE Name=?", campo.referencia);

				combo.appendItem("", "");

				if (refId > 0)
					for (ValueNamePair vp : MRefList.getList(Env.getCtx(), refId, false))
						combo.appendItem(vp.getName(), vp.getValue());

				return combo;
			}

			case UF:
			{
				int columnId = MColumn.getColumn_ID(po.get_TableName(), campo.coluna);

				if (columnId <= 0)
					throw new AdempiereException("Coluna " + po.get_TableName() + "." + campo.coluna
							+ " nao encontrada no dicionario");

				try
				{
					return new WTableDirEditor(campo.coluna, false, false, true,
							MLookupFactory.get(Env.getCtx(), windowNo, columnId, DisplayType.Table,
									Env.getLanguage(Env.getCtx()), "C_Region_ID", 0, false, null));
				}
				catch (Exception e)
				{
					throw new AdempiereException("Nao foi possivel montar o campo "
							+ campo.rotulo, e);
				}
			}

			case BOOLEANO:
				return new Checkbox();

			default:
			{
				Textbox campoTexto = new Textbox();
				ZKUpdateUtil.setWidth(campoTexto, "280px");

				if (campo.tipo == MDFeCampo.Tipo.DATA)
					campoTexto.setPlaceholder("dd/mm/aaaa");

				return campoTexto;
			}
		}
	}

	private org.zkoss.zk.ui.Component componente(Object editor)
	{
		if (editor instanceof WTableDirEditor)
			return ((WTableDirEditor) editor).getComponent();

		return (org.zkoss.zk.ui.Component) editor;
	}

	private void carregar()
	{
		for (int i = 0; i < campos.size(); i++)
		{
			MDFeCampo campo = campos.get(i);
			Object editor = editores.get(i);
			Object valor = po.get_Value(campo.coluna);

			switch (campo.tipo)
			{
				case LISTA:
					selecionar((Combobox) editor, valor == null ? null : valor.toString());
					break;

				case UF:
					((WTableDirEditor) editor).setValue(
							(valor == null || ((Number) valor).intValue() <= 0) ? null : valor);
					break;

				case DOCUMENTO:
				{
					Object cpf = po.get_Value(campo.colunaCPF);
					Object mostrar = (valor == null || valor.toString().isEmpty()) ? cpf : valor;
					((Textbox) editor).setValue(mostrar == null ? "" : mostrar.toString());
					break;
				}

				case DATA:
					((Textbox) editor).setValue(valor == null ? ""
							: FORMATO_DATA.format((java.util.Date) valor));
					break;

				case BOOLEANO:
					((Checkbox) editor).setChecked(
							(valor instanceof Boolean) ? ((Boolean) valor).booleanValue()
									: "Y".equals(valor));
					break;

				default:
					((Textbox) editor).setValue(valor == null ? "" : valor.toString());
			}
		}
	}

	/** Le a tela para o PO e grava. Estoura antes de tocar no banco se faltar algo. */
	private void gravar()
	{
		for (int i = 0; i < campos.size(); i++)
			aplicar(campos.get(i), editores.get(i));

		if (gravaNoBanco)
			po.saveEx();

		gravado = true;

		// Um clique so: o detach ja dispara ON_WINDOW_CLOSE, e um segundo
		// evento faria quem escuta agir duas vezes.
		gravarButton.setDisabled(true);
		cancelarButton.setDisabled(true);
		fechar();
	}

	private void aplicar(MDFeCampo campo, Object editor)
	{
		switch (campo.tipo)
		{
			case LISTA:
			{
				String valor = valorDoCombo((Combobox) editor);
				exigir(campo, valor);
				po.set_ValueOfColumn(campo.coluna, valor);
				break;
			}

			case UF:
			{
				Object valor = ((WTableDirEditor) editor).getValue();
				po.set_ValueOfColumn(campo.coluna, valor == null ? Integer.valueOf(0) : valor);
				break;
			}

			case DOCUMENTO:
			{
				String doc = soDigitos(((Textbox) editor).getValue());

				if (doc.isEmpty())
				{
					exigir(campo, null);
					po.set_ValueOfColumn(campo.coluna, null);
					po.set_ValueOfColumn(campo.colunaCPF, null);
					break;
				}

				if (doc.length() != 11 && doc.length() != 14)
					throw new AdempiereException(campo.rotulo
							+ ": informe CNPJ com 14 digitos ou CPF com 11");

				po.set_ValueOfColumn(campo.coluna, doc.length() == 14 ? doc : null);
				po.set_ValueOfColumn(campo.colunaCPF, doc.length() == 11 ? doc : null);
				break;
			}

			case INTEIRO:
			{
				String texto = soDigitos(((Textbox) editor).getValue());
				exigir(campo, texto);
				po.set_ValueOfColumn(campo.coluna,
						texto.isEmpty() ? null : Integer.valueOf(texto));
				break;
			}

			case VALOR:
			{
				String texto = ((Textbox) editor).getValue();
				texto = (texto == null) ? "" : texto.trim().replace(".", "").replace(',', '.');
				exigir(campo, texto);

				try
				{
					po.set_ValueOfColumn(campo.coluna,
							texto.isEmpty() ? null : new BigDecimal(texto));
				}
				catch (NumberFormatException e)
				{
					throw new AdempiereException(campo.rotulo + ": valor invalido");
				}

				break;
			}

			case DATA:
			{
				String texto = ((Textbox) editor).getValue();
				texto = (texto == null) ? "" : texto.trim();
				exigir(campo, texto);

				if (texto.isEmpty())
				{
					po.set_ValueOfColumn(campo.coluna, null);
					break;
				}

				try
				{
					po.set_ValueOfColumn(campo.coluna,
							new java.sql.Timestamp(FORMATO_DATA.parse(texto).getTime()));
				}
				catch (java.text.ParseException e)
				{
					throw new AdempiereException(campo.rotulo + ": use o formato dd/MM/aaaa");
				}

				break;
			}

			case BOOLEANO:
			{
				po.set_ValueOfColumn(campo.coluna,
						Boolean.valueOf(((Checkbox) editor).isChecked()));
				break;
			}

			case DIGITOS:
			{
				String texto = soDigitos(((Textbox) editor).getValue());
				exigir(campo, texto);

				// Vazio ja passou por exigir(): so cobra o tamanho de quem digitou
				// algo. Guardar um CPF pela metade adia o erro ate a transmissao,
				// quando a SEFAZ recusa o lote inteiro.
				if (campo.tamanhoExato > 0 && !texto.isEmpty()
						&& texto.length() != campo.tamanhoExato)
					throw new AdempiereException(campo.rotulo + ": informe "
							+ campo.tamanhoExato + " digitos");

				po.set_ValueOfColumn(campo.coluna, texto.isEmpty() ? null : texto);
				break;
			}

			default:
			{
				String texto = ((Textbox) editor).getValue();
				texto = (texto == null) ? "" : texto.trim();
				exigir(campo, texto);
				po.set_ValueOfColumn(campo.coluna, texto.isEmpty() ? null : texto);
			}
		}
	}

	private void exigir(MDFeCampo campo, String valor)
	{
		if (campo.obrigatorio && (valor == null || valor.isEmpty()))
			throw new AdempiereException("Informe " + campo.rotulo.toLowerCase());
	}

	/** Nao e estatico de proposito: SimpleDateFormat nao e thread-safe. */
	private final java.text.SimpleDateFormat FORMATO_DATA =
			new java.text.SimpleDateFormat("dd/MM/yyyy");

	private static String soDigitos(String valor)
	{
		return (valor == null) ? "" : valor.replaceAll("[^0-9]", "");
	}

	private static String valorDoCombo(Combobox combo)
	{
		if (combo.getSelectedItem() == null)
			return null;

		Object v = combo.getSelectedItem().getValue();
		return (v == null || v.toString().isEmpty()) ? null : v.toString();
	}

	private static void selecionar(Combobox combo, String valor)
	{
		if (valor == null)
		{
			combo.setSelectedIndex(-1);
			return;
		}

		for (int i = 0; i < combo.getItemCount(); i++)
			if (valor.equals(combo.getItemAtIndex(i).getValue()))
			{
				combo.setSelectedIndex(i);
				return;
			}

		combo.setSelectedIndex(-1);
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

		try
		{
			if (alvo == gravarButton)
				gravar();
			else if (alvo == cancelarButton)
				fechar();
		}
		catch (Exception e)
		{
			// Exception, nao AdempiereException: um NullPointerException ou um
			// erro de conversao escapava daqui sem nenhuma mensagem, e o botao
			// parecia simplesmente nao funcionar.
			log.log(Level.SEVERE, "", e);
			Dialog.error(windowNo, null, MDFeUtil.mensagem(e));
		}
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
