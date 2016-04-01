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
package org.idempierelbr.sped.icmsipi.bean;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.compiere.util.Env;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO C100 - NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
 * 
 * @author Mario Grigioni, mgrigioni
 * @version 04/02/2011, 15:45:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version 07/08/2012, 14:00, pablobp4
 */
public class RC100 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize = 1, maxSize = 1, id = "IND_OPER")
	private String IND_OPER;

	@XMLFieldProperties(minSize = 1, maxSize = 1, id = "IND_EMIT")
	private String IND_EMIT;

	@XMLFieldProperties(id = "COD_PART", maxSize = 60)
	private String COD_PART;

	@XMLFieldProperties(id = "COD_MOD", minSize = 2, maxSize = 2)
	private String COD_MOD;

	@XMLFieldProperties(id = "COD_SIT", minSize = 2, maxSize = 2)
	private String COD_SIT;

	@XMLFieldProperties(id = "SER", maxSize = 3, isMandatory = false)
	private String SER;

	@XMLFieldProperties(id = "NUM_DOC", maxSize = 9)
	private String NUM_DOC;

	@XMLFieldProperties(id = "CHV_NFE", maxSize = 44, isNumber = true)
	private String CHV_NFE;

	@XMLFieldProperties(id = "DT_DOC", minSize = 6, maxSize = 6)
	private Timestamp DT_DOC;

	@XMLFieldProperties(id = "DT_E_S", minSize = 6, maxSize = 6, isMandatory = false)
	private Timestamp DT_E_S;

	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;

	@XMLFieldProperties(id = "IND_PGTO", minSize = 1, maxSize = 1)
	private String IND_PGTO;

	@XMLFieldProperties(id = "VL_DESC", isMandatory = false)
	private BigDecimal VL_DESC;

	@XMLFieldProperties(id = "VL_ABAT_NT", isMandatory = false)
	private BigDecimal VL_ABAT_NT;

	@XMLFieldProperties(id = "VL_MERC", isMandatory = false)
	private BigDecimal VL_MERC;

	@XMLFieldProperties(id = "IND_FRT", minSize = 1, maxSize = 1)
	private String IND_FRT;

	@XMLFieldProperties(id = "VL_FRT", isMandatory = false)
	private BigDecimal VL_FRT;

	@XMLFieldProperties(id = "VL_SEG", isMandatory = false)
	private BigDecimal VL_SEG;

	@XMLFieldProperties(id = "VL_OUT_DA", isMandatory = false)
	private BigDecimal VL_OUT_DA;

	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS;

	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_ICMS;

	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory = false)
	private BigDecimal VL_BC_ICMS_ST;

	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory = false)
	private BigDecimal VL_ICMS_ST;

	@XMLFieldProperties(id = "VL_IPI", isMandatory = false)
	private BigDecimal VL_IPI;

	@XMLFieldProperties(id = "VL_PIS", isMandatory = false)
	private BigDecimal VL_PIS;

	@XMLFieldProperties(id = "VL_COFINS", isMandatory = false)
	private BigDecimal VL_COFINS;

	@XMLFieldProperties(id = "VL_PIS_ST", isMandatory = false)
	private BigDecimal VL_PIS_ST;

	@XMLFieldProperties(id = "VL_COFINS_ST", isMandatory = false)
	private BigDecimal VL_COFINS_ST;

	@XMLFieldProperties(id = "RC120", isSPEDField = false)
	private RC120 rC120;

	@XMLFieldProperties(id = "RC130", isSPEDField = false)
	private List<RC130> rC130 = new ArrayList<RC130>();

	@XMLFieldProperties(id = "RC140", isSPEDField = false)
	private RC140 rC140;

	@XMLFieldProperties(id = "RC170", isSPEDField = false)
	private List<RC170> rC170 = new ArrayList<RC170>();

	@XMLFieldProperties(id = "RC190", isSPEDField = false)
	private List<RC190> rC190 = new ArrayList<RC190>();

	@XMLFieldProperties(id = "RC195", isSPEDField = false)
	private List<RC195> rC195 = new ArrayList<RC195>();

	@XMLFieldProperties(id = "IND_ATIV", isSPEDField = false)
	private String IND_ATIV;

	@XMLFieldProperties(id = "UF", isSPEDField = false)
	private String UF;
	
	/**
	 * Constructor
	 */
	public RC100() {
		super();
	}

	public String getIND_OPER() {
		return IND_OPER;
	}

	public void setIND_OPER(String iND_OPER) {
		IND_OPER = iND_OPER;
	}

	public String getIND_EMIT() {
		return IND_EMIT;
	}

	public void setIND_EMIT(String iND_EMIT) {
		IND_EMIT = iND_EMIT;
	}

	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}

	public String getCOD_MOD() {
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD) {
		COD_MOD = cOD_MOD;
	}

	public String getCOD_SIT() {
		return COD_SIT;
	}

	public void setCOD_SIT(String cOD_SIT) {
		COD_SIT = cOD_SIT;
	}

	public String getSER() {
		return SER;
	}

	public void setSER(String sER) {
		SER = sER;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public String getCHV_NFE() {
		return CHV_NFE;
	}

	public void setCHV_NFE(String cHV_NFE) {
		CHV_NFE = cHV_NFE;
	}

	public Timestamp getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC) {
		DT_DOC = dT_DOC;
	}

	public Timestamp getDT_E_S() {
		return DT_E_S;
	}

	public void setDT_E_S(Timestamp dT_E_S) {
		DT_E_S = dT_E_S;
	}

	public BigDecimal getVL_DOC() {
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC) {
		VL_DOC = vL_DOC;
	}

	public String getIND_PGTO() {
		return IND_PGTO;
	}

	public void setIND_PGTO(String iND_PGTO) {
		IND_PGTO = iND_PGTO;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public BigDecimal getVL_ABAT_NT() {
		return VL_ABAT_NT;
	}

	public void setVL_ABAT_NT(BigDecimal vL_ABAT_NT) {
		VL_ABAT_NT = vL_ABAT_NT;
	}

	public BigDecimal getVL_MERC() {
		return VL_MERC;
	}

	public void setVL_MERC(BigDecimal vL_MERC) {
		VL_MERC = vL_MERC;
	}

	public String getIND_FRT() {
		return IND_FRT;
	}

	public void setIND_FRT(String iND_FRT) {
		IND_FRT = iND_FRT;
	}

	public BigDecimal getVL_FRT() {
		return VL_FRT;
	}

	public void setVL_FRT(BigDecimal vL_FRT) {
		VL_FRT = vL_FRT;
	}

	public BigDecimal getVL_SEG() {
		return VL_SEG;
	}

	public void setVL_SEG(BigDecimal vL_SEG) {
		VL_SEG = vL_SEG;
	}

	public BigDecimal getVL_OUT_DA() {
		return VL_OUT_DA;
	}

	public void setVL_OUT_DA(BigDecimal vL_OUT_DA) {
		VL_OUT_DA = vL_OUT_DA;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST) {
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public BigDecimal getVL_IPI() {
		return VL_IPI;
	}

	public void setVL_IPI(BigDecimal vL_IPI) {
		VL_IPI = vL_IPI;
	}

	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}

	public BigDecimal getVL_COFINS() {
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS) {
		VL_COFINS = vL_COFINS;
	}

	public BigDecimal getVL_PIS_ST() {
		return VL_PIS_ST;
	}

	public void setVL_PIS_ST(BigDecimal vL_PIS_ST) {
		VL_PIS_ST = vL_PIS_ST;
	}

	public BigDecimal getVL_COFINS_ST() {
		return VL_COFINS_ST;
	}

	public void setVL_COFINS_ST(BigDecimal vL_COFINS_ST) {
		VL_COFINS_ST = vL_COFINS_ST;
	}

	public RC120 getrC120() {
		return rC120;
	}

	public void setrC120(RC120 rC120) {
		this.rC120 = rC120;
	}

	public List<RC130> getrC130() {
		return rC130;
	}

	public void setrC130(ArrayList<RC130> rC130) {
		this.rC130 = rC130;
	}

	public RC140 getrC140() {
		return rC140;
	}

	public void setrC140(RC140 rC140) {
		this.rC140 = rC140;
	}

	public List<RC170> getrC170() {
		return rC170;
	}

	public void setrC170(List<RC170> rC170) {
		this.rC170 = rC170;
	}

	public List<RC190> getrC190() {
		return rC190;
	}

	public void setrC190(List<RC190> rC190) {
		this.rC190 = rC190;
	}

	public String getIND_ATIV() {
		return IND_ATIV;
	}

	public void setIND_ATIV(String iND_ATIV) {
		IND_ATIV = iND_ATIV;
	}

	public void setrC130(List<RC130> rC130) {
		this.rC130 = rC130;
	}

	public void setrC195(List<RC195> rC195) {
		this.rC195 = rC195;
	}

	public List<RC195> getrC195() {
		return rC195;
	}

	public void setrC195(ArrayList<RC195> rC195) {
		this.rC195 = rC195;
	}

	public String getUF() {
		return UF;
	}

	public void setUF(String uF) {
		UF = uF;
	}

	public void addrC195(RC195 rc195) {
		this.rC195.add(rc195);
	}

	/**
	 * Adicionar a lista de registros
	 * 
	 * 
	 * @param rc170
	 */
	public void addrC170(RC170 rc170) 
	{
		
		/*
		 * PARA CASOS EM QUE A EMPRESA NÃO FAZ APURAÇÃO DE IPI E ST
		 * 
		 * - ST
		 * 
		 * Regra: Produto: R$ 1000,00; IVA: 40%; Valor de Base para ST: R$
		 * 1400,00; Valor do ICMSST (aliq 17%): R$ 238,00; Valor do ICMS (aliq
		 * 17%): R$ 170,00; Diferença de ICMSST - ICMS = R$ 68,00; Valor final
		 * do produto: R$ 1068,00
		 * 
		 * Como fica para no SPED: Valor do Produto: R$ 1000,00; Valor, Base,
		 * Aliq do ICMSST: 0; Valor, Base, Aliq do ICMS: 0;
		 * 
		 * *** Criar registro de Observação R0460 pada colocar os valores de IPI
		 * e ST para justificar a diferença nos totais da NF.
		 * 
		 * *** Explicação da regra acima: Os valores do ICMSST e ICMS devem ser
		 * zerados pois não se apura ST e o ICMS é substituido, ou seja, já pago
		 * e não dando direito a crédito.
		 * 
		 * *** Para casos em que a mesma NF tem itens substituidos e itens não
		 * substituidos a regra é a seguinte:
		 * 
		 * 1 - Para os itens substituidos, aplica-se as regras acima; 2 - Para
		 * os itens não substituidos, credita-se do ICMS normalmente;
		 * 
		 * - IPI
		 * 
		 * *** Para o IPI, simplesmente zera-se os valores da BC, Valor, Aliq e
		 * coloca-se no registro R0460 uma descrição para justificar a diferença
		 * no tatal da NF.
		 * 
		 * As regras acima, aplicam-se só para as entradas, pois as saídas de
		 * empresas que não apuram IPI e ST, não podem tributar esses impostos
		 * nesse tipo de transação. As impresas que apurarm, tributam
		 * normalmente, sendo assim apurados, sem manipulação nenhuma.
		 */
		if (getIND_ATIV().equals("1") && getIND_OPER().equals("0"))
		{

			// se a NF tiver substituição tributaria, trabalhar os valores
			if (getVL_ICMS_ST().signum() == 1) {

				// zerar o valor do ICMS e ICMSST da NF para abaixo adicionar só
				// o icms que não é substituido
				setVL_BC_ICMS(Env.ZERO);
				setVL_ICMS(Env.ZERO);
				setVL_BC_ICMS(Env.ZERO);
				setVL_ICMS(Env.ZERO);

				// se o ICMS da linha não for substituido, então soma ao total
				// da NF, pois esse será creditado
				if (rc170.getVL_ICMS_ST().signum() == 0) 
				{
					// somar ICMS no totalizador da NF
					setVL_BC_ICMS(getVL_BC_ICMS().add(rc170.getVL_BC_ICMS()));
					setVL_ICMS(getVL_ICMS().add(rc170.getVL_ICMS()));
				}
				
				// senão, zerar na linha também
				else 
				{
					// zerar icms
					rc170.setVL_BC_ICMS(Env.ZERO);
					rc170.setVL_ICMS(Env.ZERO);
					rc170.setALIQ_ICMS(Env.ZERO);

					// zerar st
					rc170.setVL_BC_ICMS_ST(Env.ZERO);
					rc170.setVL_ICMS_ST(Env.ZERO);
					rc170.setALIQ_ST(Env.ZERO);
				}
			}

			// zerar ipi na nf
			setVL_IPI(Env.ZERO);

			// zerar ipi na linha
			rc170.setCST_IPI(null);
			rc170.setVL_BC_IPI(Env.ZERO);
			rc170.setALIQ_IPI(Env.ZERO);			
			rc170.setVL_IPI(Env.ZERO);

		}

		// adicionar o item ao RC100
		this.rC170.add(rc170);

		// atualiza totalizadores do RC100
		addValues(rc170);
		
		// atualizar totalizador C190;
		updateC190(rc170);

	}

	private void addValues(RC170 rc170) {

		BigDecimal c100desc = getVL_DESC();
		BigDecimal c170desc = rc170.getVL_DESC();
		
		// totalizador de descontos
		setVL_DESC( getVL_DESC().add(rc170.getVL_DESC()));
		
	}

	/**
	 * Atualizar registro C190 baseado nas linhas da NF
	 */
	private void updateC190(RC170 rc170) {

		// criar registo
		RC190 rc190 = new RC190();
		rc190.setCST_ICMS(rc170.getCST_ICMS());
		rc190.setALIQ_ICMS(rc170.getALIQ_ICMS());
		rc190.setCFOP(rc170.getCFOP());
		rc190.setVL_OPR(rc170.getVL_OPER());
		rc190.setVL_BC_ICMS(rc170.getVL_BC_ICMS());
		rc190.setVL_ICMS(rc170.getVL_ICMS());
		rc190.setVL_BC_ICMS_ST(rc170.getVL_BC_ICMS_ST());
		rc190.setVL_ICMS_ST(rc170.getVL_ICMS_ST());
		rc190.setVL_BC_IPI(rc170.getVL_BC_IPI());
		rc190.setCST_IPI(rc170.getCST_IPI());
		
		// valor calculado na C170
		if (rc170.getCST_ICMS().substring(1, 3).equals("20") || rc170.getCST_ICMS().substring(1, 3).equals("70"))
			rc190.setVL_RED_BC(rc170.getVL_OPER().subtract(rc170.getVL_BC_ICMS()));
		else
			rc190.setVL_RED_BC(Env.ZERO);
		//
		rc190.setVL_IPI(rc170.getVL_IPI());

		// TODO: ??
		rc190.setCOD_OBS("");

		// verificar se existe
		if (rC190.contains(rc190)) {
			// remover da contagem
			rc190.subtractCounter();

			// somar combinação de CST, ALIQ, CFOP
			rC190.get(rC190.indexOf(rc190)).addValues(rc190);
		}

		// se não existir, simplesmente add o totalizador
		else {
			rC190.add(rc190);
		}

	}
	
	/**
	 * Verificar e tratar as exceções impostas no manual do SPED EFD
	 * para o registro C100.
	 */
	public void checkExceptions()
	{
		/*
		 * Exceção 01:
		 * Códigos de situação cancelado (código “02”), 
		 * cancelado extemporâneo (código “03”), 
		 * Nota Fiscal Eletrônica (NF-e) denegada (código “04”) 
		 * preencher somente os campos REG, IND_OPER, IND_EMIT, COD_MOD, 
		 * COD_SIT, SER, NUM_DOC e CHV_NF-e. Para COD-SIT = 05 (numeração inutilizada), 
		 * todos os campos referidos anteriormente devem ser preenchidos, 
		 * exceto o campo CHV_NF-e. Demais campos deverão ser apresentados 
		 * com conteúdo VAZIO “||”. Não informar registros filhos. 
		 */
		if(getCOD_SIT().equals("02") 
				|| getCOD_SIT().equals("03") 
				|| getCOD_SIT().equals("04")
				|| getCOD_SIT().equals("05"))
		{
			
			// Limpara campos do C100
			setCOD_PART(null);
			setDT_DOC(null);
			setDT_E_S(null);
			setVL_DOC(null);
			setIND_PGTO(null);
			setVL_DESC(null);
			setVL_ABAT_NT(null);
			setVL_MERC(null);
			setIND_FRT(null);
			setVL_FRT(null);
			setVL_SEG(null);
			setVL_OUT_DA(null);
			setVL_BC_ICMS(null);
			setVL_ICMS(null);
			setVL_BC_ICMS_ST(null);
			setVL_ICMS_ST(null);
			setVL_IPI(null);
			setVL_PIS(null);
			setVL_COFINS(null);
			setVL_PIS_ST(null);
			setVL_COFINS_ST(null);
			setIND_ATIV(null);

			
			// *** REMOVER FILHOS ***
			// RC120
			if(getrC120() != null) {
				getrC120().subtractCounter();
				setrC120(null);
			}
			
			// RC130
			for(RC130 rc130 : this.rC130)
				rc130.subtractCounter();
			 this.rC130 = new ArrayList<RC130>();
			
			
			// RC170
			for(RC170 rc170 : this.rC170)
				rc170.subtractCounter();
			 this.rC170 = new ArrayList<RC170>();
			
			// RC190
			for(RC190 rc190 : this.rC190)
				rc190.subtractCounter();
			 this.rC190 = new ArrayList<RC190>();
			 
			 
			// RC195
			for(RC195 rc195 : this.rC195)
				rc195.subtractCounter();
			this.rC195 = new ArrayList<RC195>();
			
		}
		
		/*
		 * Exceção 4: 
		 * Notas Fiscais emitidas por regime especial ou norma específica 
		 * (campo COD_SIT igual a “08”). Para documentos fiscais emitidos com base em 
		 * regime especial ou norma específica, deverão ser apresentados os registros C100 e C190, 
		 * obrigatoriamente, e os demais registros “filhos”, se estes forem exigidos pela legislação 
		 * fiscal. Nesta situação, somente os campos REG, IND_EMIT, COD_PART, COD_MOD, COD_SIT, 
		 * NUM_DOC e DT_DOC são de preenchimento obrigatório. Os demais campos, com exceção do campo 
		 * NUM_ITEM do registro C170, são facultativos (se forem preenchidos, inclusive com valores 
		 * iguais a Zero, serão validados e aplicadas as regras de campos existentes) e deverão ser 
		 * preenchidos, quando houver informação a ser prestada. Exemplos: a) Nota fiscal emitida em 
		 * substituição ao cupom fiscal – CFOP igual a 5.929 ou 6.929 – (lançamento efetuado em decorrência 
		 * de emissão de documento fiscal relativo à operação ou à prestação também registrada em equipamento 
		 * Emissor de Cupom Fiscal – ECF, exceto para o contribuinte do Estado do Paraná, que deve efetuar a 
		 * escrituração de acordo com a regra estabelecida na tabela de código de ajustes); b) 
		 * Nos casos em que a legislação estadual permitir a emissão de NF sem informações do destinatário, 
		 * preencher os dados do próprio emitente. Obs.: a partir de janeiro de 2012, para todos os documentos 
		 * diferentes de NF-e e com COD_SIT igual a “08”, deverá ser informada no registro C110 a norma legal 
		 * que autoriza o preenchimento do documento fiscal nessa situação. 	
		 */
		else if(getCOD_SIT().equals("08"))
		{
			// zerar campos
			//setIND_OPER(null);
			setSER(null);
			setCHV_NFE(null);
			setDT_E_S(null);
			setVL_DOC(null);
			setIND_PGTO(null);
			setVL_DESC(null);
			setVL_ABAT_NT(null);
			setVL_MERC(null);
			setIND_FRT(null);
			setVL_FRT(null);
			setVL_SEG(null);
			setVL_OUT_DA(null);
			setVL_BC_ICMS(null);
			setVL_ICMS(null);
			setVL_BC_ICMS_ST(null);
			setVL_ICMS_ST(null);
			setVL_IPI(null);
			setVL_PIS(null);
			setVL_COFINS(null);
			setVL_PIS_ST(null);
			setVL_COFINS_ST(null);
			setIND_ATIV(null);

			
			// RC170 - deixar só o NUM_ITEM
			List<RC170> getrC170 = getrC170();
			for (int i = 0; i < getrC170.size(); i++)
			{
				RC170 rc170 = getrC170.get(i);
				// remover dos itens o registro velho
				getrC170().remove(rc170);
				
				// criar um novo, só com o núm item, obrigatório de acordo com essa exceção
				RC170 new_rc170 = new RC170();
				new_rc170.setNUM_ITEM(rc170.getNUM_ITEM());
				new_rc170.subtractCounter();
				
				// adicionar o novo, não pelo método addrC170() pois lá ele recalcula o RC190
				getrC170().add(new_rc170);
			}

			// *** REMOVER FILHOS ***
			// RC120
			if(getrC120() != null) {
				getrC120().subtractCounter();
				setrC120(null);
			}
			
			// RC130
			for(RC130 rc130 : this.rC130)
				rc130.subtractCounter();
			 this.rC130 = new ArrayList<RC130>();
			
			 
			// RC195
			for(RC195 rc195 : this.rC195)
				rc195.subtractCounter();
			this.rC195 = new ArrayList<RC195>();
			
		}
		
		/*
		 * Exceção 2: 
		 * Notas Fiscais Eletrônicas - NF-e de emissão própria: regra geral, 
		 * devem ser apresentados somente os registros C100 e C190, e, se existirem ajustes 
		 * de documento fiscais determinados por legislação estadual (tabela 5.3 do Ato COTEPE ICMS 09/08), 
		 * devem ser apresentados também os registros C195 e C197; somente será admitida a informação do 
		 * registro C170 quando também houver sido informado o registro C176, hipótese de emissão de documento 
		 * fiscal quando houver direito a Ressarcimento de ICMS em Operações com Substituição Tributária; 
		 * permitindo ainda a partir de julho de 2012, a apresentação dos registros C110 e C120;
		 */
		else if(getIND_EMIT().equals("0") && (getCHV_NFE() != null && !getCHV_NFE().isEmpty()))
		{
			
			
			// *** REMOVER FILHOS ***

			// RC120 - importação - deve ser apresentado
			//if(getrC120() != null) {
			//	getrC120().subtractCounter();
			//	setrC120(null);
			//}
			
			// RC130
			for(RC130 rc130 : this.rC130)
				rc130.subtractCounter();
			 this.rC130 = new ArrayList<RC130>();
			
			
			// RC170
			for(RC170 rc170 : this.rC170)
				rc170.subtractCounter();
			 this.rC170 = new ArrayList<RC170>();
			 
			 
			// RC195
			for(RC195 rc195 : this.rC195)
				rc195.subtractCounter();
			this.rC195 = new ArrayList<RC195>();
	
		}
			
	}
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((CHV_NFE == null) ? 0 : CHV_NFE.hashCode());
		result = prime * result + ((COD_MOD == null) ? 0 : COD_MOD.hashCode());
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
		result = prime * result
				+ ((IND_EMIT == null) ? 0 : IND_EMIT.hashCode());
		result = prime * result + ((NUM_DOC == null) ? 0 : NUM_DOC.hashCode());
		result = prime * result + ((SER == null) ? 0 : SER.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RC100 other = (RC100) obj;
		if (CHV_NFE == null) {
			if (other.CHV_NFE != null)
				return false;
		} else if (!CHV_NFE.equals(other.CHV_NFE))
			return false;
		if (COD_MOD == null) {
			if (other.COD_MOD != null)
				return false;
		} else if (!COD_MOD.equals(other.COD_MOD))
			return false;
		if (COD_PART == null) {
			if (other.COD_PART != null)
				return false;
		} else if (!COD_PART.equals(other.COD_PART))
			return false;
		if (COD_SIT == null) {
			if (other.COD_SIT != null)
				return false;
		} else if (!COD_SIT.equals(other.COD_SIT))
			return false;
		if (IND_EMIT == null) {
			if (other.IND_EMIT != null)
				return false;
		} else if (!IND_EMIT.equals(other.IND_EMIT))
			return false;
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
			return false;
		if (SER == null) {
			if (other.SER != null)
				return false;
		} else if (!SER.equals(other.SER))
			return false;
		
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {

		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof RC100 && o2 instanceof RC100) {
			RC100 e1 = (RC100) o1;
			RC100 e2 = (RC100) o2;
			//
			if (e1.DT_E_S == null) // Depois
				return 1;
			else if (e2.DT_E_S == null) // Antes
				return -1;

			int compare = e1.DT_E_S.compareTo(e2.DT_E_S);

			if (compare == 0)
				return e1.NUM_DOC.compareTo(e2.NUM_DOC); // Comparar
			else
				return compare;
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

} // RC100