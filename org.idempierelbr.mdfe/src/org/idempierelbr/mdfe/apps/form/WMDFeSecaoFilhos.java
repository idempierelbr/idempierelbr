package org.idempierelbr.mdfe.apps.form;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.logging.Level;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.function.Supplier;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.DialogEvents;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.Dialog;
import org.compiere.model.MRefList;
import org.compiere.model.MRegion;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.ValueNamePair;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Div;
import org.zkoss.zul.Hbox;
import org.idempierelbr.mdfe.util.MDFeUtil;

/**
 * Uma secao de filhos do MDF-e: grade, tres botoes e a mini-janela de edicao.
 *
 * <p>Reboque, CIOT, vale-pedagio, contratante, seguro, averbacao, lacre e
 * autorizado a baixar o XML sao, na tela, o mesmo problema: uma lista de
 * registros com varios campos cada. Montar oito secoes a mao daria oito lugares
 * para esquecer de gravar um campo ou de recarregar a grade. Aqui a secao e
 * descrita por uma lista de {@link MDFeCampo} e o resto vem de graca.
 *
 * <p>A edicao vai para janela ({@link WMDFeChildDialog}) porque os grupos do
 * leiaute tem campos demais para caber na aba junto com tudo o mais - o grupo
 * do proprietario do reboque sozinho tem sete.
 */
public class WMDFeSecaoFilhos implements EventListener<Event>
{
	private static final CLogger log = CLogger.getCLogger(WMDFeSecaoFilhos.class);

	private final int windowNo;
	private final String titulo;
	private final String tableName;
	private final String colunaPai;
	private final List<MDFeCampo> campos;
	private final Supplier<Integer> idDoPai;
	private final Supplier<Integer> orgId;

	/**
	 * Discriminadores da secao: gravados no registro novo <b>e</b> usados para
	 * filtrar a grade.
	 *
	 * <p>E o que faz duas secoes dividirem a mesma tabela - lacre de escopo "R"
	 * e de escopo "M" saem de LBR_MDFeLacre, cada uma enxergando so os seus.
	 * Por isso o valor precisa ser constante: ele identifica a secao.
	 */
	private final Map<String, Object> fixos = new LinkedHashMap<>();

	/**
	 * Valores sugeridos ao criar uma linha. Ao contrario de {@link #fixos},
	 * <b>nao</b> filtram a grade e o operador pode trocar.
	 *
	 * <p>Sao {@link Supplier} porque dependem do estado da tela: a UF do reboque
	 * e herdada do cavalo, que so e conhecido depois que o MDF-e foi carregado -
	 * bem depois de a secao ser construida. Se fossem fixos, a grade passaria a
	 * esconder todo reboque de UF diferente.
	 */
	private final Map<String, Supplier<Object>> padroes = new LinkedHashMap<>();

	/** Teto do leiaute; zero quando nao ha. */
	private int maximo = 0;

	/**
	 * Secoes cujo pai e a linha selecionada desta. Recarregam quando a selecao
	 * muda - senao a grade filha continua mostrando os filhos da linha anterior.
	 */
	private final List<WMDFeSecaoFilhos> dependentes = new ArrayList<>();

	/**
	 * Titulo da secao de onde vem o pai, quando o pai nao e o MDF-e.
	 *
	 * <p>So serve para a mensagem de erro apontar o lugar certo: sem isso um
	 * filho de filho reclamava "grave o MDF-e" mesmo com o MDF-e ja gravado.
	 */
	private String rotuloPai = null;

	private final WListbox tabela = ListboxFactory.newDataTable();
	private final Button novoButton = new Button();
	private final Button editarButton = new Button();
	private final Button removerButton = new Button();

	private final Div painel = new Div();

	public WMDFeSecaoFilhos(int windowNo, String titulo, String tableName,
			List<MDFeCampo> campos, Supplier<Integer> idDoPai, Supplier<Integer> orgId)
	{
		this(windowNo, titulo, tableName, "LBR_MDFe_ID", campos, idDoPai, orgId);
	}

	public WMDFeSecaoFilhos(int windowNo, String titulo, String tableName, String colunaPai,
			List<MDFeCampo> campos, Supplier<Integer> idDoPai, Supplier<Integer> orgId)
	{
		this.windowNo = windowNo;
		this.titulo = titulo;
		this.tableName = tableName;
		this.colunaPai = colunaPai;
		this.campos = campos;
		this.idDoPai = idDoPai;
		this.orgId = orgId;

		montar();
	}

	public WMDFeSecaoFilhos comFixo(String coluna, Object valor)
	{
		fixos.put(coluna, valor);
		return this;
	}

	/**
	 * Valor sugerido na criacao, calculado na hora. Nao filtra a grade e o
	 * operador pode trocar - use {@link #comFixo} quando a coluna identificar a
	 * secao.
	 */
	public WMDFeSecaoFilhos comPadrao(String coluna, Supplier<Object> valor)
	{
		padroes.put(coluna, valor);
		return this;
	}

	/**
	 * Declara que {@code secao} pendura na linha selecionada desta.
	 *
	 * <p>Faz duas coisas: a filha passa a recarregar quando a selecao muda aqui,
	 * e aprende a dizer de onde vem o pai quando nao ha linha escolhida.
	 */
	public WMDFeSecaoFilhos comDependente(WMDFeSecaoFilhos secao)
	{
		dependentes.add(secao);
		secao.rotuloPai = this.titulo;
		return this;
	}

	/**
	 * Nome da grade de onde vem o pai, quando ela nao e uma secao destas.
	 * So melhora a mensagem de erro; nao liga o recarregamento.
	 */
	public WMDFeSecaoFilhos comRotuloPai(String rotulo)
	{
		this.rotuloPai = rotulo;
		return this;
	}

	public WMDFeSecaoFilhos comMaximo(int maximo)
	{
		this.maximo = maximo;
		return this;
	}

	public Component getPainel()
	{
		return painel;
	}

	/** Registro escolhido na grade, ou zero. Serve de pai para secoes aninhadas. */
	public int getSelecionado()
	{
		int linha = tabela.getSelectedRow();
		return (linha < 0) ? 0 : ((Integer) tabela.getValueAt(linha, 0)).intValue();
	}

	public void setEditavel(boolean editavel)
	{
		novoButton.setDisabled(!editavel);
		editarButton.setDisabled(!editavel);
		removerButton.setDisabled(!editavel);
	}

	private void montar()
	{
		novoButton.setLabel("Novo");
		novoButton.setImage(ThemeManager.getThemeResource("images/New16.png"));
		novoButton.addActionListener(this);

		editarButton.setLabel("Editar");
		editarButton.setImage(ThemeManager.getThemeResource("images/Edit16.png"));
		editarButton.addActionListener(this);

		removerButton.setLabel("Remover");
		removerButton.setImage(ThemeManager.getThemeResource("images/Delete16.png"));
		removerButton.addActionListener(this);

		tabela.addEventListener(Events.ON_DOUBLE_CLICK, this);

		// Nao e para saber a linha escolhida - onSelect do Listbox e
		// CE_IMPORTANT, entao o ZK ja mandava a selecao ao servidor sem
		// listener. E para reagir a troca: sem isto a grade das secoes filhas
		// continuava mostrando os filhos do pai anterior.
		tabela.addEventListener(Events.ON_SELECT, this);
		ZKUpdateUtil.setHeight(tabela, "130px");
		ZKUpdateUtil.setHflex(tabela, "1");

		Hbox barra = new Hbox();
		barra.setPack("start");
		barra.appendChild(new Label(titulo));
		barra.appendChild(novoButton);
		barra.appendChild(editarButton);
		barra.appendChild(removerButton);

		painel.appendChild(barra);
		painel.appendChild(tabela);
	}

	// ----------------------------------------------------------------- dados

	public List<PO> getLinhas()
	{
		int pai = idDoPai.get() == null ? 0 : idDoPai.get().intValue();

		if (pai <= 0)
			return new ArrayList<>();

		StringBuilder where = new StringBuilder(colunaPai).append("=?");
		List<Object> params = new ArrayList<>();
		params.add(Integer.valueOf(pai));

		for (Map.Entry<String, Object> fixo : fixos.entrySet())
		{
			where.append(" AND ").append(fixo.getKey()).append("=?");
			params.add(fixo.getValue());
		}

		return new Query(Env.getCtx(), tableName, where.toString(), null)
				.setParameters(params)
				.setOnlyActiveRecords(true)
				.setOrderBy("Line, " + tableName + "_ID")
				.list();
	}

	public void carregar()
	{
		Vector<String> colunas = new Vector<>();
		colunas.add("ID");

		for (MDFeCampo campo : campos)
			colunas.add(campo.rotulo);

		Vector<Vector<Object>> dados = new Vector<>();

		for (PO po : getLinhas())
		{
			Vector<Object> linha = new Vector<>();
			linha.add(Integer.valueOf(po.get_ID()));

			for (MDFeCampo campo : campos)
				linha.add(mostrar(po, campo));

			dados.add(linha);
		}

		tabela.setData(new ListModelTable(dados), colunas);
		tabela.setColumnClass(0, Integer.class, true);

		for (int i = 1; i <= campos.size(); i++)
			tabela.setColumnClass(i, String.class, true);
	}

	/** O que a grade mostra: rotulo da lista, sigla da UF, ou o proprio valor. */
	private String mostrar(PO po, MDFeCampo campo)
	{
		Object valor = po.get_Value(campo.coluna);

		switch (campo.tipo)
		{
			case LISTA:
				return rotuloDaLista(campo.referencia, valor == null ? null : valor.toString());

			case UF:
			{
				int id = (valor == null) ? 0 : ((Number) valor).intValue();
				return (id <= 0) ? "" : MRegion.get(Env.getCtx(), id).getName();
			}

			case DOCUMENTO:
			{
				Object cpf = po.get_Value(campo.colunaCPF);
				Object mostrar = (valor == null || valor.toString().isEmpty()) ? cpf : valor;
				return (mostrar == null) ? "" : mostrar.toString();
			}

			case DATA:
				return (valor == null) ? ""
						: new java.text.SimpleDateFormat("dd/MM/yyyy").format((java.util.Date) valor);

			case BOOLEANO:
			{
				boolean sim = (valor instanceof Boolean) ? ((Boolean) valor).booleanValue()
						: "Y".equals(valor);
				return sim ? "Sim" : "Nao";
			}

			default:
				return (valor == null) ? "" : valor.toString();
		}
	}

	private String rotuloDaLista(String referencia, String valor)
	{
		if (valor == null)
			return "";

		int refId = DB.getSQLValue(null,
				"SELECT AD_Reference_ID FROM AD_Reference WHERE Name=?", referencia);

		if (refId > 0)
			for (ValueNamePair vp : MRefList.getList(Env.getCtx(), refId, false))
				if (valor.equals(vp.getValue()))
					return vp.getName();

		return valor;
	}

	// ---------------------------------------------------------------- acoes

	private void novo()
	{
		int pai = exigirPai();

		if (maximo > 0 && getLinhas().size() >= maximo)
			throw new AdempiereException(titulo + ": o leiaute aceita no maximo " + maximo);

		PO po = criarPO();
		po.set_ValueOfColumn(colunaPai, Integer.valueOf(pai));
		po.setAD_Org_ID(orgId.get().intValue());
		po.set_ValueOfColumn("Line", Integer.valueOf((getLinhas().size() + 1) * 10));

		for (Map.Entry<String, Object> fixo : fixos.entrySet())
			po.set_ValueOfColumn(fixo.getKey(), fixo.getValue());

		for (Map.Entry<String, Supplier<Object>> padrao : padroes.entrySet())
		{
			Object valor = padrao.getValue().get();

			// O padrao pode nao ter valor ainda (a UF do cavalo em branco, por
			// exemplo). Gravar null por cima do default do dicionario seria pior
			// que deixar o campo como veio.
			if (valor != null)
				po.set_ValueOfColumn(padrao.getKey(), valor);
		}

		abrirJanela(po);
	}

	private void editar()
	{
		exigirPai();
		abrirJanela(carregarPO(exigirSelecionado()));
	}

	private void remover()
	{
		exigirPai();
		carregarPO(exigirSelecionado()).deleteEx(true);
		carregar();
	}

	private void abrirJanela(PO po)
	{
		WMDFeChildDialog janela = new WMDFeChildDialog(windowNo, titulo, po, campos);

		janela.addEventListener(DialogEvents.ON_WINDOW_CLOSE, new EventListener<Event>()
		{
			@Override
			public void onEvent(Event evento)
			{
				if (janela.isGravado())
					carregar();
			}
		});

		AEnv.showWindow(janela);
	}

	private int exigirPai()
	{
		Integer pai = idDoPai.get();

		if (pai == null || pai.intValue() <= 0)
			throw new AdempiereException(rotuloPai == null
					? "Grave o MDF-e antes de acrescentar linhas em " + titulo
					: "Selecione a linha em " + rotuloPai + " antes de acrescentar em " + titulo);

		return pai.intValue();
	}

	private int exigirSelecionado()
	{
		int id = getSelecionado();

		if (id <= 0)
			throw new AdempiereException("Selecione a linha em " + titulo);

		return id;
	}

	private PO criarPO()
	{
		return org.compiere.model.MTable.get(Env.getCtx(), tableName).getPO(0, null);
	}

	private PO carregarPO(int id)
	{
		return org.compiere.model.MTable.get(Env.getCtx(), tableName).getPO(id, null);
	}

	@Override
	public void onEvent(Event event) throws Exception
	{
		Object alvo = event.getTarget();

		try
		{
			// A grade dispara os dois: clique simples so muda a selecao, duplo
			// abre para editar. Sem separar pelo nome do evento, um clique para
			// escolher o pai abriria a janela de edicao.
			if (alvo == tabela && Events.ON_SELECT.equals(event.getName()))
			{
				for (WMDFeSecaoFilhos dependente : dependentes)
					dependente.carregar();
			}
			else if (alvo == novoButton)
				novo();
			else if (alvo == editarButton || alvo == tabela)
				editar();
			else if (alvo == removerButton)
				remover();
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
}
