package org.idempierelbr.tax.model;
/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

import bsh.EvalError;
import bsh.Interpreter;

public class MLBRFormula extends X_LBR_Formula
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -3454360861235382468L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRFormula (Properties ctx, int LBR_Formula_ID, String trxName)
	{
		super (ctx, LBR_Formula_ID, trxName);
	}	//	MLBRFormula

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRFormula (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRFormula
	
	/**
	 * 		Set formulas to BSH
	 * 
	 * 	@param	Interpreter
	 * 	@throws EvalError 
	 */
	public static void parseFormulas (Interpreter bsh) throws EvalError
	{
		for (MLBRFormula formula : getFormulas())
			bsh.set(formula.getName(), formula.getLBR_Formula());
	}	//	parseFormulas
	
	/**
	 * 		** 	Recursivo  **
	 * 	Ajusta as formulas recursivas
	 * 
	 * 	@param	Formula
	 */
	public static String parseFormulas (String formula)
	{
		if (formula == null)
			return "";
		//
		for (MLBRFormula formulas : getFormulas())
		{
			String name = formulas.getName();
			
			if (name.contains("[ ,./<>?-+*]"))
				continue;
			
			if (formula.contains(name)
					&& !formula.contains(name+"="))
				formula = parseFormulas (name + "=" + formulas.getLBR_Formula() + ";" + formula);
		}
		//
		return formula;
	}	//	parseFormulas
	
	/**
	 * 		Get All Formulas from client
	 * 
	 * 	@return All formulas
	 */
	public static MLBRFormula[] getFormulas ()
	{
		List<MLBRFormula> list = new Query (Env.getCtx(), MLBRFormula.Table_Name, "AD_Client_ID IN (0,?)", null)
				.setParameters (new Object[]{Env.getAD_Client_ID(Env.getCtx())}).list();
		//
		MLBRFormula[] lines = new MLBRFormula[list.size()];
		return list.toArray(lines);
	} 	//	getFormulas
	
	/**
	 * 	To String
	 */
	public String toString ()
	{
		if (getName() == null)
			return super.toString();
		//
		return "Formula [" + getName() + " - " + getLBR_Formula() + "]";
	}	//	toString
	
	public static void main (String[] args)
	{
		Interpreter bsh = new Interpreter ();
		try
		{
//			bsh.set("a", 5);
			bsh.set("b", 2);
			System.out.println("x="+bsh.eval("a=b+5;(a*2)+b;"));
			System.out.println("x="+bsh.get("x"));
			
		}
		catch (EvalError e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
}	//	MLBRFormula