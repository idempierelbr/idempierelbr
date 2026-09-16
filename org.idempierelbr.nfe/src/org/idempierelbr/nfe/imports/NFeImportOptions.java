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
package org.idempierelbr.nfe.imports;

import java.sql.Timestamp;

import org.compiere.process.DocAction;

/**
 * O que o usuário decide uma vez para o lote inteiro, em vez de nota a nota:
 * tipo de documento, natureza da operação interna, ação a executar e data de
 * entrega.
 *
 * <p>Continua sendo possível sobrescrever por nota — a tela de conciliação
 * guarda uma cópia destas opções por documento.
 *
 * @author Alan Lescano
 */
public class NFeImportOptions {

	public int C_DocType_ID = 0;
	public String LBR_TransactionType;
	public String description;
	public Timestamp LBR_OwnDateDelivered;

	/** Ação a executar na nota criada; {@code None} deixa em rascunho */
	public String docAction = DocAction.ACTION_None;

	/** @return uma cópia, para a nota que precisa fugir do padrão do lote */
	public NFeImportOptions copy() {
		NFeImportOptions copy = new NFeImportOptions();
		copy.C_DocType_ID = C_DocType_ID;
		copy.LBR_TransactionType = LBR_TransactionType;
		copy.description = description;
		copy.LBR_OwnDateDelivered = LBR_OwnDateDelivered;
		copy.docAction = docAction;

		return copy;
	}

	/** @return o que falta preencher, ou nulo se está tudo lá */
	public String validate() {
		if (C_DocType_ID <= 0)
			return "Informe o tipo de documento";

		if (LBR_TransactionType == null || LBR_TransactionType.trim().isEmpty())
			return "Informe o tipo de transação";

		return null;
	}
}	//	NFeImportOptions
