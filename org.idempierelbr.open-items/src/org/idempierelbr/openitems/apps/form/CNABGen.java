package org.idempierelbr.openitems.apps.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.apps.IStatusBar;
import org.compiere.apps.form.GenForm;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MPInstance;
import org.compiere.model.MPInstancePara;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

/**
 * Generate CNAB (manual) controller class
 * 
 */
public class CNABGen extends GenForm
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(CNABGen.class);
	//
	
	public Object 			m_AD_Org_ID = null;
	public Object 			m_C_BankAccount_ID = null;
	public Object 			m_LBR_BankAccount_Convenio_ID = null;
	
	public void dynInit() throws Exception
	{
		setTitle("O CNAB é gerado para movimentos (de boletos) ainda não enviados ao banco");
		//setReportEngineType(ReportEngine.INVOICE);
		//setAskPrintMsg("PrintInvoices");
	}
	
	public void configureMiniTable(IMiniTable miniTable)
	{
		//  create Columns
		miniTable.addColumn("LBR_BoletoMovement_ID");
		miniTable.addColumn("C_DocType_ID");
		miniTable.addColumn("LBR_BankAccount_Carteira_ID");
		miniTable.addColumn("DocumentNo");
		miniTable.addColumn("C_BPartner_ID");
		miniTable.addColumn("C_Invoice_ID");
		miniTable.addColumn("LBR_Cob_Movimento_ID");
		miniTable.addColumn("GrandTotal");
		//
		miniTable.setMultiSelection(true);
		//  set details
		miniTable.setColumnClass(0, IDColumn.class, false, " ");
		miniTable.setColumnClass(1, String.class, true, Msg.translate(Env.getCtx(), "C_DocType_ID"));
		miniTable.setColumnClass(2, String.class, true, Msg.translate(Env.getCtx(), "LBR_BankAccount_Carteira_ID"));
		miniTable.setColumnClass(3, String.class, true, Msg.translate(Env.getCtx(), "DocumentNo"));
		miniTable.setColumnClass(4, String.class, true, Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		miniTable.setColumnClass(5, String.class, true, Msg.translate(Env.getCtx(), "C_Invoice_ID"));
		miniTable.setColumnClass(6, String.class, true, Msg.translate(Env.getCtx(), "LBR_Cob_Movimento_ID"));
		miniTable.setColumnClass(7, BigDecimal.class, true, "Valor do Título");
		//
		miniTable.autoSize();
	}
	
	/**
	 * Get SQL for Boleto Movements that needs to be sent to bank using CNAB file
	 * @return sql
	 */
	private String getBoletoMovementSQL()
	{
		StringBuilder sql = new StringBuilder(
			"SELECT bm.LBR_BoletoMovement_ID, dt.Name, c.Name, b.DocumentNo, bp.Name, i.DocumentNo, cm.Name, b.GrandTotal "
			+ "FROM LBR_BoletoMovement bm"
			+ " JOIN LBR_Boleto b ON b.LBR_Boleto_ID=bm.LBR_Boleto_ID"
			+ " JOIN C_BPartner bp ON bp.C_BPartner_ID=b.C_BPartner_ID"
			+ " JOIN C_DocType dt ON dt.C_DocType_ID=b.C_DocType_ID"
			+ " JOIN LBR_BankAccount_Carteira c ON c.LBR_BankAccount_Carteira_ID=b.LBR_BankAccount_Carteira_ID"
			+ " JOIN C_Invoice i ON i.C_Invoice_ID=b.C_Invoice_ID"
			+ " JOIN LBR_Cob_Movimento cm ON cm.LBR_Cob_Movimento_ID=bm.LBR_Cob_Movimento_ID "
			+ "WHERE b.DocStatus='CO'"
			+ " AND bm.LBR_CNAB240MovementType = '1'" // 1 - Remessa (Cliente -> Banco)
			+ " AND bm.LBR_FileGeneratingDate IS NULL"
			+ " AND b.AD_Org_ID=?"
			+ " AND b.C_BankAccount_ID=?"
			+ " AND b.LBR_BankAccount_Convenio_ID=?"
			+ " ORDER BY dt.Name, cm.Name, bp.Name");

		return sql.toString();
	}
	
	/**
	 *  Query Info
	 */
	public void executeQuery(IMiniTable miniTable)
	{
		log.info("");
		
		//  Create SQL
		String sql = getBoletoMovementSQL();

		//  reset table
		int row = 0;
		miniTable.setRowCount(row);
		
		if (m_AD_Org_ID == null || m_C_BankAccount_ID == null || m_LBR_BankAccount_Convenio_ID == null)
			return;
		
		//  Execute
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, (Integer)m_AD_Org_ID);
			pstmt.setInt(2, (Integer)m_C_BankAccount_ID);
			pstmt.setInt(3, (Integer)m_LBR_BankAccount_Convenio_ID);
			rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				//  extend table
				miniTable.setRowCount(row+1);
				//  set values
				miniTable.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  LBR_BoletoMovement_ID
				miniTable.setValueAt(rs.getString(2), row, 1);              //  DocType
				miniTable.setValueAt(rs.getString(3), row, 2);              //  LBR_BankAccount_Carteira_ID
				miniTable.setValueAt(rs.getString(4), row, 3);              //  Doc No
				miniTable.setValueAt(rs.getString(5), row, 4);              //  BPartner
				miniTable.setValueAt(rs.getString(6), row, 5);              //  Invoice
				miniTable.setValueAt(rs.getString(7), row, 6);           	//  Movement
				miniTable.setValueAt(rs.getBigDecimal(8), row, 7);          //  GrandTotal
				//  prepare next
				row++;
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs,pstmt);
			rs = null;
			pstmt = null;
		}
		//
		miniTable.autoSize();
	}   //  executeQuery
	
	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like LBR_BoletoMovement_ID IN (...)
	 */
	public void saveSelection(IMiniTable miniTable)
	{
		log.info("");
		//  Array of Integers
		ArrayList<Integer> results = new ArrayList<Integer>();
		setSelection(null);

		//	Get selected entries
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
		//	log.fine( "Row=" + i + " - " + id);
			if (id != null && id.isSelected())
				results.add(id.getRecord_ID());
		}

		if (results.size() == 0)
			return;
		if (log.isLoggable(Level.CONFIG)) log.config("Selected #" + results.size());
		setSelection(results);
	}	//	saveSelection

	
	/**************************************************************************
	 *	Generate CNAB
	 */
	public String generate(IStatusBar statusBar)
	{
		String info = "";
		String trxName = Trx.createTrxName("CNG");
		Trx trx = Trx.get(trxName, true);	//trx needs to be committed too
		
		setSelectionActive(false);  //  prevents from being called twice
		statusBar.setStatusLine(Msg.getMsg(Env.getCtx(), "Selecione Movimento(s) de Boleto(s) para gerar o arquivo CNAB"));
		statusBar.setStatusDB(String.valueOf(getSelection().size()));

		//	Prepare Process
		int AD_Process_ID = getCNABGenProcessID(trxName);
		
		if (AD_Process_ID < 1) {
			info = "Couldn't find a Process with value 'LBR_CNAB_Generate (manual)'";
			return info;
		}

		MPInstance instance = new MPInstance(Env.getCtx(), AD_Process_ID, 0);
		if (!instance.save())
		{
			info = Msg.getMsg(Env.getCtx(), "ProcessNoInstance");
			return info;
		}
		
		//insert selection
		StringBuilder insert = new StringBuilder();
		insert.append("INSERT INTO T_SELECTION(AD_PINSTANCE_ID, T_SELECTION_ID) ");
		int counter = 0;
		for(Integer selectedId : getSelection())
		{
			counter++;
			if (counter > 1)
				insert.append(" UNION ");
			insert.append("SELECT ");
			insert.append(instance.getAD_PInstance_ID());
			insert.append(", ");
			insert.append(selectedId);
			insert.append(" FROM DUAL ");
			
			if (counter == 1000) 
			{
				if ( DB.executeUpdate(insert.toString(), trxName) < 0 )
				{
					String msg = "No CNAB";     //  not translated!
					info = msg;
					log.config(msg);
					trx.rollback();
					return info;
				}
				insert = new StringBuilder();
				insert.append("INSERT INTO T_SELECTION(AD_PINSTANCE_ID, T_SELECTION_ID) ");
				counter = 0;
			}
		}
		if (counter > 0)
		{
			if ( DB.executeUpdate(insert.toString(), trxName) < 0 )
			{
				String msg = "No CNAB";     //  not translated!
				info = msg;
				log.config(msg);
				trx.rollback();
				return info;
			}
		}
		
		ProcessInfo pi = new ProcessInfo ("", AD_Process_ID);
		pi.setAD_PInstance_ID (instance.getAD_PInstance_ID());

		//	Add Parameters
		MPInstancePara para = new MPInstancePara(instance, 10);
		para.setParameter("Selection", "Y");
		if (!para.save())
		{
			String msg = "No Selection Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 20);
		para.setParameter("AD_Org_ID", (Integer)m_AD_Org_ID);
		
		if (!para.save())
		{
			String msg = "No AD_Org_ID Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 30);
		para.setParameter("C_BankAccount_ID", (Integer)m_C_BankAccount_ID);
		
		if (!para.save())
		{
			String msg = "No C_BankAccount_ID Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 40);
		para.setParameter("LBR_BankAccount_Convenio_ID", (Integer)m_LBR_BankAccount_Convenio_ID);
		
		if (!para.save())
		{
			String msg = "No LBR_BankAccount_Convenio_ID Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		setTrx(trx);
		setProcessInfo(pi);
		
		return info;
	}	//	generateCNAB
	
	private int getCNABGenProcessID(String trxName) {
		return MProcess.getProcess_ID("LBR_CNAB_Generate (manual)", trxName);
	}
}