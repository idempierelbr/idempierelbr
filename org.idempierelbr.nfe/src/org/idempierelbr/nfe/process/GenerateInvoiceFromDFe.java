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
package org.idempierelbr.nfe.process;

import java.io.ByteArrayInputStream;
import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MPaymentTerm;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscalEventRec;
import org.idempierelbr.nfe.imports.NFeImportDocument;
import org.idempierelbr.nfe.imports.NFeImportDocument.Duplicata;
import org.idempierelbr.nfe.imports.NFeImportService;
import org.idempierelbr.nfe.imports.NFeXMLParser;
import org.idempierelbr.nfe.util.SefazSoapUtils;
import org.w3c.dom.Document;

/**
 * Gera a fatura de fornecedor a partir de uma NF-e recebida pela distribuição,
 * sem criar {@link org.idempierelbr.base.model.MLBRNotaFiscal}.
 *
 * <p>Para quem recebe NF-e de terceiro e não movimenta estoque, o que importa
 * do documento é o compromisso financeiro. Uma linha só, com o encargo que o
 * usuário escolhe e o valor total da nota: o total da fatura passa a ser o
 * {@code vNF} por construção, que é o que será pago.
 *
 * <p>Quando o emitente informou o grupo {@code cobr}, as duplicatas viram o
 * cronograma da fatura — número, vencimento e valor como ele mandou. O
 * cronograma só é aceito pelo iDempiere se a condição de pagamento tiver
 * cronograma próprio; sem isso, quem parcela é a condição, e o processo diz
 * isso no log em vez de deixar a fatura inválida.
 *
 * @author Alan Lescano
 */
public class GenerateInvoiceFromDFe extends SvrProcess {

	private int p_LBR_NFeXML_ID = 0;

	private int p_C_DocTypeTarget_ID = 0;
	private int p_C_Charge_ID = 0;
	private int p_C_PaymentTerm_ID = 0;
	private int p_SalesRep_ID = 0;
	private int p_User1_ID = 0;
	private int p_User2_ID = 0;
	private int p_C_Project_ID = 0;
	private String p_Description = null;
	private String p_DocAction = null;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();

		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();

			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para[i].getParameterAsInt();
			else if (name.equals("C_Charge_ID"))
				p_C_Charge_ID = para[i].getParameterAsInt();
			else if (name.equals("C_PaymentTerm_ID"))
				p_C_PaymentTerm_ID = para[i].getParameterAsInt();
			else if (name.equals("SalesRep_ID"))
				p_SalesRep_ID = para[i].getParameterAsInt();
			else if (name.equals("User1_ID"))
				p_User1_ID = para[i].getParameterAsInt();
			else if (name.equals("User2_ID"))
				p_User2_ID = para[i].getParameterAsInt();
			else if (name.equals("C_Project_ID"))
				p_C_Project_ID = para[i].getParameterAsInt();
			else if (name.equals("Description"))
				p_Description = para[i].getParameterAsString();
			else if (name.equals("DocAction"))
				p_DocAction = para[i].getParameterAsString();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

		p_LBR_NFeXML_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		if (p_LBR_NFeXML_ID <= 0)
			throw new AdempiereException("Documento inválido!");

		if (p_C_DocTypeTarget_ID <= 0)
			throw new AdempiereException("Informe o tipo de documento da fatura");

		if (p_C_Charge_ID <= 0)
			throw new AdempiereException("Informe o encargo que receberá o valor da nota");

		MLBRNFeXML dfe = new MLBRNFeXML(getCtx(), p_LBR_NFeXML_ID, get_TrxName());

		validate(dfe);

		NFeImportDocument nfe = read(dfe);

		MInvoice invoice = createInvoice(dfe, nfe);

		linkToDFe(dfe, invoice);

		addBufferLog(invoice.get_ID(), invoice.getDateInvoiced(), null,
				"Fatura " + invoice.getDocumentNo(), invoice.get_Table_ID(), invoice.get_ID());

		return "Fatura " + invoice.getDocumentNo();
	}

	/**
	 * O que impede esta NF-e de virar fatura. A duplicidade é a checagem que
	 * mais importa: uma nota faturada duas vezes vira dois compromissos a pagar.
	 */
	private void validate(MLBRNFeXML dfe) {
		if (!MLBRNFeXML.LBR_DFETYPE_NF_E.equals(dfe.getLBR_DFeType()))
			throw new AdempiereException("A fatura só pode ser gerada a partir de uma NF-e.");

		if (!dfe.isLBR_IsXMLComplete())
			throw new AdempiereException("Este documento é apenas o resumo da NF-e. "
					+ "Manifeste a Ciência da Operação e baixe o XML completo para gerar a fatura.");

		if (dfe.get_ColumnIndex("C_Invoice_ID") < 0)
			throw new AdempiereException("A coluna C_Invoice_ID não existe na tabela LBR_NFeXML. "
					+ "Sem ela não há como registrar qual fatura saiu de qual documento.");

		if (dfe.get_ValueAsInt("C_Invoice_ID") > 0)
			throw new AdempiereException("Já existe fatura gerada para esta NF-e.");

		if (dfe.getLBR_NotaFiscal_ID() > 0)
			throw new AdempiereException("Esta NF-e já foi importada como Nota Fiscal. "
					+ "Gere a fatura a partir dela, para não duplicar o valor a pagar.");

		if (MLBRNFeXML.LBR_DFESTATUS_Ignorado.equals(dfe.getLBR_DFeStatus()))
			throw new AdempiereException("Documento ignorado — não autorizado pela Sefaz, ou manifestado "
					+ "como desconhecido / operação não realizada. Não há o que faturar.");

		if (MLBRNotaFiscalEventRec.isCanceled(getCtx(), dfe.getLBR_NFeID(), get_TrxName()))
			throw new AdempiereException("NF-e cancelada pelo emitente.");
	}

	/**
	 * Lê o XML anexado e resolve o emitente contra o cadastro.
	 */
	private NFeImportDocument read(MLBRNFeXML dfe) throws Exception {
		byte[] xml = dfe.getXML();

		if (xml == null)
			throw new AdempiereException("Documento sem o XML anexado!");

		Document doc = SefazSoapUtils.newHardenedDocumentBuilder()
			.parse(new ByteArrayInputStream(xml));

		NFeImportDocument nfe = NFeXMLParser.parse(doc);

		if (nfe.vNF == null || nfe.vNF.signum() <= 0)
			throw new AdempiereException("Nota sem valor total (vNF) — nada a faturar.");

		new NFeImportService(getCtx(), get_TrxName()).resolveParties(nfe);

		if (nfe.C_BPartner_ID == null)
			throw new AdempiereException("Parceiro de negócio não encontrado para o CNPJ/CPF do emitente "
					+ (nfe.emitCNPJ != null ? nfe.emitCNPJ : nfe.emitCPF)
					+ (nfe.emitName != null ? " (" + nfe.emitName + ")" : "")
					+ ". Cadastre o fornecedor e repita o processo.");

		return nfe;
	}

	/**
	 * Fatura de uma linha só: o total é o {@code vNF} do emitente, sem depender
	 * de rateio entre itens, frete, seguro e imposto — que é o que faria o
	 * total divergir do que vai ser pago.
	 */
	private MInvoice createInvoice(MLBRNFeXML dfe, NFeImportDocument nfe) {
		MBPartner bp = new MBPartner(getCtx(), nfe.C_BPartner_ID, get_TrxName());
		Timestamp dateInvoiced = nfe.dhEmi != null ? nfe.dhEmi : dfe.getDateDoc();

		MInvoice invoice = new MInvoice(getCtx(), 0, get_TrxName());
		invoice.setAD_Org_ID(dfe.getAD_Org_ID());
		invoice.setC_DocTypeTarget_ID(p_C_DocTypeTarget_ID);
		invoice.setC_DocType_ID(p_C_DocTypeTarget_ID);
		invoice.setIsSOTrx(false);
		invoice.setBPartner(bp);

		if (invoice.getC_BPartner_Location_ID() <= 0)
			throw new AdempiereException("Parceiro de negócio " + bp.getName() + " sem endereço cadastrado.");

		// a condição informada no processo manda: a NF-e não é obrigada a trazer
		// vencimento, e é ela que resolve o caso em que não veio nenhum
		if (p_C_PaymentTerm_ID > 0)
			invoice.setC_PaymentTerm_ID(p_C_PaymentTerm_ID);

		// o cronograma da fatura só sobrevive em pagamento a prazo: o provedor
		// de impostos do LBR apaga o que existir em qualquer outra regra
		invoice.setPaymentRule(MInvoice.PAYMENTRULE_OnCredit);

		if (dateInvoiced != null) {
			invoice.setDateInvoiced(dateInvoiced);
			invoice.setDateAcct(dateInvoiced);
		}

		invoice.setPOReference(reference(nfe));
		invoice.setDescription(description(nfe));

		if (p_SalesRep_ID > 0)
			invoice.setSalesRep_ID(p_SalesRep_ID);

		if (p_C_Project_ID > 0)
			invoice.setC_Project_ID(p_C_Project_ID);

		invoice.saveEx();

		createLine(invoice, nfe);

		// GrandTotal fica com o vNF antes de qualquer parcela ser criada: é
		// contra ele que o iDempiere valida o cronograma
		if (!invoice.calculateTaxTotal())
			throw new AdempiereException("Não foi possível calcular os totais da fatura.");

		invoice.saveEx();

		if (invoice.getGrandTotal().compareTo(nfe.vNF) != 0)
			addLog("Atenção: total da fatura (" + invoice.getGrandTotal() + ") diferente do valor da nota ("
					+ nfe.vNF + "). Confira o imposto do encargo informado.");

		createPaySchedule(invoice, nfe);

		if (p_DocAction != null && !DocAction.ACTION_None.equals(p_DocAction)) {
			invoice.setDocAction(p_DocAction);

			if (!invoice.processIt(p_DocAction))
				throw new AdempiereException("Não foi possível processar a fatura: " + invoice.getProcessMsg());

			invoice.saveEx();
		}

		return invoice;
	}

	private void createLine(MInvoice invoice, NFeImportDocument nfe) {
		MInvoiceLine line = new MInvoiceLine(invoice);
		line.setAD_Org_ID(invoice.getAD_Org_ID());
		line.setC_Charge_ID(p_C_Charge_ID);
		line.setQty(Env.ONE);
		line.setPrice(nfe.vNF);
		line.setDescription(p_Description != null && !p_Description.trim().isEmpty()
				? p_Description : description(nfe));

		if (p_User1_ID > 0)
			line.setUser1_ID(p_User1_ID);

		if (p_User2_ID > 0)
			line.setUser2_ID(p_User2_ID);

		if (p_C_Project_ID > 0)
			line.setC_Project_ID(p_C_Project_ID);

		line.saveEx();
	}

	/**
	 * Cronograma da fatura a partir do grupo {@code cobr/dup} da NF-e.
	 *
	 * <p>O iDempiere recusa cronograma próprio quando a condição de pagamento
	 * não gerencia parcelas ({@code MInvoice.createPaySchedule}), e o documento
	 * ficaria inválido ao ser completado. Nesse caso as duplicatas não são
	 * gravadas e o processo avisa: quem parcela passa a ser a condição.
	 */
	private void createPaySchedule(MInvoice invoice, NFeImportDocument nfe) {
		List<Duplicata> duplicatas = nfe.billing != null ? nfe.billing.duplicatas : null;

		if (duplicatas == null || duplicatas.isEmpty()) {
			addLog("NF-e sem duplicatas: as parcelas seguem a condição de pagamento da fatura.");
			return;
		}

		if (invoice.getC_PaymentTerm_ID() <= 0)
			throw new AdempiereException("Fatura sem condição de pagamento. "
					+ "Informe uma no processo ou no cadastro do fornecedor.");

		MPaymentTerm paymentTerm = new MPaymentTerm(getCtx(), invoice.getC_PaymentTerm_ID(), get_TrxName());

		if (paymentTerm.getSchedule(false).length == 0) {
			addLog("A NF-e traz " + duplicatas.size() + " duplicata(s), mas a condição de pagamento "
					+ paymentTerm.getName() + " não gerencia cronograma. As parcelas foram deixadas "
					+ "a cargo da condição. Para usar os vencimentos do emitente, escolha uma condição "
					+ "de pagamento com cronograma.");
			return;
		}

		int count = 0;

		for (Duplicata duplicata : duplicatas) {
			if (duplicata.vDup == null || duplicata.vDup.signum() == 0)
				continue;

			MInvoicePaySchedule schedule = new MInvoicePaySchedule(getCtx(), 0, get_TrxName());
			schedule.setAD_Org_ID(invoice.getAD_Org_ID());
			schedule.setC_Invoice_ID(invoice.get_ID());
			schedule.setDueDate(duplicata.dVenc != null ? duplicata.dVenc : invoice.getDateInvoiced());
			schedule.setDueAmt(duplicata.vDup);
			// o afterSave valida o cronograma contra o total: sem o pai em
			// memória ele releria a fatura do banco a cada parcela
			schedule.setParent(invoice);
			schedule.saveEx();

			count++;
		}

		if (count == 0)
			return;

		if (!invoice.validatePaySchedule())
			addLog("Atenção: a soma das duplicatas não fecha com o total da fatura ("
					+ invoice.getGrandTotal() + "). As parcelas serão ajustadas ao total ao completar.");

		invoice.saveEx();

		addLog(count + " parcela(s) geradas a partir das duplicatas da NF-e.");
	}

	/** Guarda na origem qual fatura saiu dela, para não faturar duas vezes. */
	private void linkToDFe(MLBRNFeXML dfe, MInvoice invoice) {
		dfe.set_ValueOfColumn("C_Invoice_ID", invoice.get_ID());
		dfe.saveEx();
	}

	/** Número e série da nota do fornecedor, como referência do documento dele */
	private String reference(NFeImportDocument nfe) {
		StringBuilder reference = new StringBuilder();

		if (nfe.nNF != null)
			reference.append(nfe.nNF);

		if (nfe.serie != null)
			reference.append("-").append(nfe.serie);

		return reference.toString();
	}

	private String description(NFeImportDocument nfe) {
		StringBuilder description = new StringBuilder("NF-e ").append(reference(nfe));

		if (nfe.emitName != null)
			description.append(" - ").append(nfe.emitName);

		if (nfe.chNFe != null)
			description.append(" - ").append(nfe.chNFe);

		return description.toString();
	}
}	//	GenerateInvoiceFromDFe
