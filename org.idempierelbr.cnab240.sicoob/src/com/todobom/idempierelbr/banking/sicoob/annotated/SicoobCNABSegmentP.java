package com.todobom.idempierelbr.banking.sicoob.annotated;

import java.util.Date;

import org.idempierelbr.base.util.OpenItemsUtil;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.cnab240.annotated.CNABSegmentPRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SicoobCNABSegmentP extends CNABSegmentPRecord {

	private String convenio;
	private String modalidadeCarteira;

	private String CalcularDigitoVerificador(String agencia, String cedente,
			String nossoNumero) {
		String indice = "319731973197319731973";
		String Num;
		String Res;
		Integer base;
		Integer digito;

		Res = "0";

		Num = TextUtil.pad(OpenItemsUtil.getPartialText(agencia, false), '0',
				4, true)
				+ TextUtil.pad(OpenItemsUtil.getPartialText(cedente, false),
						'0', 10, true)
				+ TextUtil.pad(
						OpenItemsUtil.getPartialText(nossoNumero, false), '0',
						7, true);

		base = 0;
		for (int j = 0; j < Num.length(); j++) {
			base = base
					+ (Integer.parseInt(Num.substring(j, j + 1)) * Integer
							.parseInt(indice.substring(j, j + 1)));
		}

		digito = 11 - ((base) - ((int) (base / 11) * 11));
		// (Se o Resto for igual a 0 ou 1 ent�o o DV � igual a 0)
		if (digito > 9)
			digito = 0;
		Res = digito.toString();
		return Res;
	}

	@Override
	@Field(offset = 38, length = 20, paddingChar = '0', align = Align.RIGHT)
	public String getNossoNumero() {
		// TODO Auto-generated method stub
		return super.getNossoNumero()
				+ CalcularDigitoVerificador(
						String.valueOf(getAgenciaCedente()), getConvenio(),
						getNossoNumero1()) + "01" + getModalidadeCarteira()
				+ "4" + "     ";
	}

	public String getNossoNumero1() {
		// TODO Auto-generated method stub
		return super.getNossoNumero();
	}

	// campos adicionados

	public String getConvenio() {
		return convenio;
	}

	public void setConvenio(String convenio) {
		this.convenio = convenio;
	}

	public String getModalidadeCarteira() {
		return modalidadeCarteira;
	}

	public void setModalidadeCarteira(String modalidadeCarteira) {
		this.modalidadeCarteira = modalidadeCarteira;
	}

	@Override
	@Field(offset = 59, length = 1, paddingChar = '0', align = Align.RIGHT)
	public int getFormaCadastramento() {
		return 0;
	}

	@Override
	@Field(offset = 60, length = 1, paddingChar = ' ', align = Align.RIGHT)
	public String getTipoDocumento() {
		return " ";
	}
	
	@Override
	@Field(offset = 119, length = 8, paddingChar = '0', align = Align.LEFT)
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataJurosMora() {
		if (super.getDataJurosMora() == null)
			return super.getDataEmissao();
		else
			return super.getDataJurosMora();

	}
	@Override
	@Field( offset=221 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoProtesto() {
		return 1;
	}
	
	@Override
	@Field( offset=224 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoBaixaDevolucao() {
		return 0;
	}
	
	
	@Field( offset=225 , length=3, paddingChar='0' , align = Align.RIGHT)
	public int getPrazoBaixaDevolucao() {
		return 0;
	}


}
