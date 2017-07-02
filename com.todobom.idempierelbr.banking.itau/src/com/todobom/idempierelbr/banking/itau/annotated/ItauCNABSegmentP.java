package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentPRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABSegmentP extends CNABSegmentPRecord {

	private int numeroCarteira;
	private Double jurosMoraItau;
		
	// campo vazio neste registro
	@Override
	public String getDvAgenciaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaCedente();
	}

	@Override
	@Field(offset=37, length=1, paddingChar=' ', align=Align.LEFT)
	public String getDvContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvContaCedente();
	}

	@Override
	public String getDvAgenciaContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaContaCedente();
	}

	@Field(offset=38, length=3, paddingChar='0', align=Align.RIGHT)
	public int getNumeroCarteira() {
		return numeroCarteira;
	}

	public void setNumeroCarteira(int numeroCarteira) {
		this.numeroCarteira = numeroCarteira;
	}

	@Override
	@Field(offset=41, length=9, paddingChar='0', align=Align.RIGHT)
	public String getNossoNumero() {
		// TODO Auto-generated method stub
		return super.getNossoNumero();
	}

	// campo vazio neste registro - default "0"
	@Override
	public String getCodigoCarteira() {
		// TODO Auto-generated method stub
		return "0";
	}

	// campo vazio neste registro
	@Override
	public int getFormaCadastramento() {
		// TODO Auto-generated method stub
		return super.getFormaCadastramento();
	}

	// campo vazio neste registro
	@Override
	public String getTipoDocumento() {
		// TODO Auto-generated method stub
		return super.getTipoDocumento();
	}

	// campo vazio neste registro
	@Override
	public int getEmissaoBloqueto() {
		// TODO Auto-generated method stub
		return super.getEmissaoBloqueto();
	}

	// campo vazio neste registro
	@Override
	public String getDistribuicaoBloqueto() {
		// TODO Auto-generated method stub
		return super.getDistribuicaoBloqueto();
	}

	@Override
	@Field(offset=63, length=10, paddingChar=' ', align=Align.LEFT)
	public String getNumeroDocumento() {
		// TODO Auto-generated method stub
		return super.getNumeroDocumento();
	}

	// campo vazio neste registro
	@Override
	public String getDvAgenciaCobradora() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaCobradora();
	}

	// campo vazio neste registro
	@Override
	public int getCodigoJurosMora() {
		// TODO Auto-generated method stub
		return super.getCodigoJurosMora();
	}

	// Itaú exige que seja sempre valor fixo por dia
	// o campo jurosMoraItau para isso é alimentado
	// pelas funções getJurosMora e setJurosMora
	@Override
	public Double getJurosMora() {
		// TODO Auto-generated method stub
		return getJurosMoraItau();
	}

	@Field(offset=127, length=15, paddingChar='0', align=Align.RIGHT)
	@FixedFormatDecimal(decimals=2, useDecimalDelimiter=false)
	public Double getJurosMoraItau() {
		return jurosMoraItau;
	}

	public void setJurosMoraItau(Double jurosMoraItau) {
		this.jurosMoraItau=jurosMoraItau;
	}
	
	@Override
	public void setJurosMora(Double jurosMora) {
		// TODO Auto-generated method stub
		setJurosMoraItau(jurosMora);
	}

	@Override
	public void setJurosMora(Double jurosMora, boolean percentual) {
		if (percentual) {
			// Obtém valor diário
			setJurosMoraItau(this.getValorTitulo() * jurosMora / 100 / 30 );
		} else {
			setJurosMoraItau(jurosMora);
		}
	}

	@Override
	public Double getJurosMora(boolean percentual) {
		if ( percentual ) {
			// obtem valor em formato de taxa mensal
			return getJurosMoraItau() * 30 * 100 / this.getValorTitulo();
		} else  {
			return getJurosMoraItau();
		}
	}

	// campo vazio neste registro
	@Override
	public int getCodigoDesconto() {
		// TODO Auto-generated method stub
		return super.getCodigoDesconto();
	}

	@Override
	@Field(offset=225, length=2, paddingChar='0', align=Align.RIGHT)
	public int getPrazoBaixaDevolucao() {
		// TODO Auto-generated method stub
		return super.getPrazoBaixaDevolucao();
	}

	// campo vazio neste registro
	@Override
	public int getCodigoMoeda() {
		// TODO Auto-generated method stub
		return super.getCodigoMoeda();
	}

	// campo vazio neste registro
	@Override
	public long getNumeroContrato() {
		// TODO Auto-generated method stub
		return super.getNumeroContrato();
	}

	// seguem Zeros do arquivo
	@Field(offset=58, length=5, paddingChar='0', align=Align.RIGHT)
	public int getZeros1() {
		return 0;
	}
	
	public void setZeros1 ( int Zeros ) {
	}
	
	@Field(offset=118, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros2() {
		return 0;
	}
	
	public void setZeros2 ( int Zeros ) {
	}
	
	@Field(offset=142, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros3() {
		return 0;
	}
	
	public void setZeros3 ( int Zeros ) {
	}
	
	@Field(offset=227, length=13, paddingChar='0', align=Align.RIGHT)
	public int getZeros4() {
		return 0;
	}
	
	public void setZeros4 ( int Zeros ) {
	}

	// FIXME: suporte apenas a DM - valor fixo (1)
	@Override
	public void setEspecieTitulo(int especieTitulo) {
		// TODO Auto-generated method stub
		super.setEspecieTitulo(1);
	}

	
}
