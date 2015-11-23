package com.todobom.idempierelbr.banking.caixa.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentRRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

/**
 * 
 * @author Claudemir Todo Bom
 *
 * Patrocinado por FIT Soluções - www.fitsolucoes.biz
 *
 * LICENÇA: GPLv2 - http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 *
 */
@Record
public class CaixaCNABSegmentR extends CNABSegmentRRecord {

	private String emailSacado;

	@Field( offset=180 , length=50, paddingChar = ' ' , align = Align.LEFT)
	public String getEmailSacado() {
		return emailSacado;
	}

	public void setEmailSacado(String emailSacado) {
		this.emailSacado = emailSacado;
	}

	// campos excluídos
	@Override
	public int getDebitoBanco() {
		// TODO Auto-generated method stub
		return super.getDebitoBanco();
	}

	@Override
	public int getDebitoAgencia() {
		// TODO Auto-generated method stub
		return super.getDebitoAgencia();
	}

	@Override
	public String getDebitoAgenciaDV() {
		// TODO Auto-generated method stub
		return super.getDebitoAgenciaDV();
	}

	@Override
	public long getDebitoConta() {
		// TODO Auto-generated method stub
		return super.getDebitoConta();
	}

	@Override
	public String getDebitoContaDV() {
		// TODO Auto-generated method stub
		return super.getDebitoContaDV();
	}

	@Override
	public String getDebitoAgContaDV() {
		// TODO Auto-generated method stub
		return super.getDebitoAgContaDV();
	}

	@Override
	public int getAvisoDebito() {
		// TODO Auto-generated method stub
		return super.getAvisoDebito();
	}
	
}
