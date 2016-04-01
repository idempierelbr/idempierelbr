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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO D100: NOTA FISCAL DE SERVIÇO DE TRANSPORTE (CÓDIGO 07) E
 * CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO DE CARGAS (CÓDIGO 08), CONHECIMENTOS
 * DE TRANSPORTE DE CARGAS AVULSO (CÓDIGO 8B), AQUAVIÁRIO DE CARGAS (CÓDIGO 09),
 * AÉREO (CÓDIGO 10), FERROVIÁRIO DE CARGAS (CÓDIGO 11) E MULTIMODAL DE CARGAS
 * (CÓDIGO 26), NOTA FISCAL DE TRANSPORTE FERROVIÁRIO DE CARGA ( CÓDIGO 27) E
 * CONHECIMENTO DE TRANSPORTE ELETRÔNICO – CT-e (CÓDIGO 57).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD100.java, 10/02/2011, 16:03:00, mgrigioni
 */
public class RD100 extends RegSped implements Comparable<Object> {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "IND_OPER", maxSize = 1)
	private String IND_OPER;
	
	@XMLFieldProperties(id = "IND_EMIT", maxSize = 1)
	private String IND_EMIT;
	
	@XMLFieldProperties(id = "COD_PART", maxSize = 60)
	private String COD_PART;
	
	@XMLFieldProperties(id = "COD_MOD", maxSize = 2, minSize = 2)
	private String COD_MOD;
	
	@XMLFieldProperties(id = "COD_SIT", maxSize = 2, minSize = 2)
	private String COD_SIT;
	
	@XMLFieldProperties(id = "SER", maxSize = 4, isMandatory = false)
	private String SER;
	
	@XMLFieldProperties(id = "SUB", maxSize = 3, isMandatory = false)
	private String SUB;
	
	@XMLFieldProperties(id = "NUM_DOC", maxSize = 9)
	private String NUM_DOC;
	
	@XMLFieldProperties(id = "CHV_CTE", maxSize = 44, minSize = 44, isMandatory = false, isNumber = true)
	private String CHV_CTE;
	
	@XMLFieldProperties(id = "DT_DOC", maxSize = 8, minSize = 8, isNumber = true)
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_A_P", maxSize = 8, minSize = 8, isNumber = true, isMandatory = false)
	private Timestamp DT_A_P;
	
	@XMLFieldProperties(id = "TP_CT_e", maxSize = 1, minSize = 1, isMandatory = false)
	private String TP_CT_e;
	
	@XMLFieldProperties(id = "CHV_CTE_REF", maxSize = 44, minSize = 44, isNumber = true, isMandatory = false)
	private String CHV_CTE_REF;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory = false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "IND_FRT", maxSize = 1)
	private String IND_FRT;
	
	@XMLFieldProperties(id = "VL_SERV")
	private BigDecimal VL_SERV;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_NT", isMandatory = false)
	private BigDecimal VL_NT;
	
	@XMLFieldProperties(id = "COD_INF", isMandatory = false, maxSize = 6)
	private String COD_INF;
	
	@XMLFieldProperties(id = "COD_CTA", isMandatory = false)
	private String COD_CTA;

	@XMLFieldProperties(needsValidation = true, id = "RD110", isSPEDField = false)
	private List<RD110> rD110 = new ArrayList<RD110>();
	
	@XMLFieldProperties(needsValidation = true, id = "RD500", isSPEDField = false)
	private List<RD500> rD500 = new ArrayList<RD500>();

	@XMLFieldProperties(needsValidation = true, id = "RD190", isSPEDField = false)
	private List<RD190> rD190 = new ArrayList<RD190>();

	/**
	 * Constructor
	 */
	public RD100() {
		super();
	}

	public List<RD110> getrD110() {
		return rD110;
	}

	public void setrD110(List<RD110> rD110) {
		this.rD110 = rD110;
	}
	
	public List<RD500> getrD500() {
		return rD500;
	}

	public void setrD500(List<RD500> rD500) {
		this.rD500 = rD500;
	}

	public List<RD190> getrD190() {
		return rD190;
	}

	public void setrD190(List<RD190> rD190) {
		this.rD190 = rD190;
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

	public String getSUB() {
		return SUB;
	}

	public void setSUB(String sUB) {
		SUB = sUB;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public String getCHV_CTE() {
		return CHV_CTE;
	}

	public void setCHV_CTE(String cHV_CTE) {
		CHV_CTE = cHV_CTE;
	}

	public Timestamp getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC) {
		DT_DOC = dT_DOC;
	}

	public Timestamp getDT_A_P() {
		return DT_A_P;
	}

	public void setDT_A_P(Timestamp dT_A_P) {
		DT_A_P = dT_A_P;
	}

	public String getTP_CT_e() {
		return TP_CT_e;
	}

	public void setTP_CT_e(String tP_CT_e) {
		TP_CT_e = tP_CT_e;
	}

	public String getCHV_CTE_REF() {
		return CHV_CTE_REF;
	}

	public void setCHV_CTE_REF(String cHV_CTE_REF) {
		CHV_CTE_REF = cHV_CTE_REF;
	}

	public BigDecimal getVL_DOC() {
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC) {
		VL_DOC = vL_DOC;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public String getIND_FRT() {
		return IND_FRT;
	}

	public void setIND_FRT(String iND_FRT) {
		IND_FRT = iND_FRT;
	}

	public BigDecimal getVL_SERV() {
		return VL_SERV;
	}

	public void setVL_SERV(BigDecimal vL_SERV) {
		VL_SERV = vL_SERV;
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

	public BigDecimal getVL_NT() {
		return VL_NT;
	}

	public void setVL_NT(BigDecimal vL_NT) {
		VL_NT = vL_NT;
	}

	public String getCOD_INF() {
		return COD_INF;
	}

	public void setCOD_INF(String cOD_INF) {
		COD_INF = cOD_INF;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}

	public void addrD110(RD110 rd110) {
		// add linha
		this.rD110.add(rd110);
	}
	
	public void addrD190(RD190 rd190) {
		// add linha
		this.rD190.add(rd190);
	}

	/**
	 * Atualizar registro D190 baseado nas linhas
	 * 
	 * 
	 */
	public void updateD190(RD110 rd110) {

		// criar registo
		RD190 reg = new RD190();
		reg.setCST_ICMS(rd110.getCST_ICMS());
		reg.setCFOP(rd110.getCFOP());
		reg.setALIQ_ICMS(rd110.getALIQ_ICMS());
		reg.setVL_OPR(rd110.getVL_OPR());
		reg.setVL_BC_ICMS(rd110.getVL_BC_ICMS());
		reg.setVL_ICMS(rd110.getVL_ICMS());

		// valor cálculado na d110
		reg.setVL_RED_BC(rd110.getVL_RED_BC_ICMS());

		// TODO: ??
		reg.setCOD_OBS("");

		// verificar se existe
		if (rD190.contains(reg)) 
		{
			
			// remover da contagem
			reg.subtractCounter();

			// somar combinação de CST, ALIQ, CFOP
			rD190.get(rD190.indexOf(reg)).addValues(reg);
		}

		// se não existir, simplismente add o totalizador
		else {
			rD190.add(reg);
		}
	}

	public void checkExceptions()
	{
		
		/*
		 * Exceção 1: Para documentos com código de situação (campo COD_SIT) cancelado (código “02”) 
		 * ou cancelado extemporâneo (código “03”), Conhecimento de Transporte Eletrônico (CT-e) denegada 
		 * (código “04”) preencher somente os campos REG, IND_OPER, IND_EMIT, COD_MOD, 
		 * COD_SIT, SER, SUB, NUM_DOC e CHV_CT-e. Para CT-e com COD_SIT igual a “05” (numeração inutilizada), 
		 * devem ser informados todos os campos referidos anteriormente , exceto o campo CHV_CT-e.
		 * Demais campos deverão ser apresentados com conteúdo VAZIO “||”. Não deverão ser informados registros filhos. 
		 * A partir de janeiro de 2012, no caso de CT-e de emissão própria com código de situação (campo COD_SIT) 
		 * cancelado (código “02”) e cancelado extemporâneo (código “03”) deverão ser informados os campos acima 
		 * citados incluindo ainda a chave do CT-e. 
		 */
		if(getCOD_SIT().equals("02") 
				|| getCOD_SIT().equals("03") 
				|| getCOD_SIT().equals("04")
				|| getCOD_SIT().equals("05"))
		{
			// 
			setCOD_PART(null);
			setDT_DOC(null);
			setDT_A_P(null);
			setTP_CT_e(null);
			setCHV_CTE_REF(null);
			setVL_DOC(null);
			setVL_DESC(null);
			setIND_FRT(null);
			setVL_SERV(null);
			setVL_BC_ICMS(null);
			setVL_ICMS(null);
			setVL_NT(null);
			setCOD_INF(null);
			setCOD_CTA(null);
			
			// remover filhos - RD110
			for (RD110 reg : getrD110())
				reg.subtractCounter();
			setrD110(new ArrayList<RD110>());

			
			// remover filhos - RD190
			for (RD190 reg : getrD190())
				reg.subtractCounter();
			setrD190(new ArrayList<RD190>());

		}
		
		/*
		 * Exceção 3: Documentos de transporte emitidos por regime especial ou norma específica 
		 * (campo COD_SIT igual a “08”). Para documentos fiscais emitidos com base em regime especial 
		 * ou norma específica, (campo COD_SIT igual a “08”). Para documentos fiscais emitidos com base 
		 * em regime especial ou norma específica, deverão ser apresentados os registros D100 e D190, 
		 * obrigatoriamente, e os demais registros “filhos”, se estes forem exigidos pela legislação fiscal. 
		 * Nesta situação, no registro D100, somente os campos REG, IND_OPER, IND_EMIT, COD_PART, COD_MOD, 
		 * COD_SIT, SER, SUB, NUM_DOC e DT_DOC são obrigatórios. Os demais campos são facultativos 
		 * (se forem preenchidos serão validados e aplicadas as regras de campos existentes).
		 */
		else if(getCOD_SIT().equals("08"))
		{
			
			/*
			setCHV_CTE(null);
			setDT_A_P(null);
			setTP_CT_e(null);
			setCHV_CTE_REF(null);
			setVL_DOC(null);
			setVL_DESC(null);
			setIND_FRT(null);
			setVL_SERV(null);
			setVL_BC_ICMS(null);
			setVL_ICMS(null);
			setVL_NT(null);
			setCOD_INF(null);
			setCOD_CTA(null);
			*/
			
			// remover filhos - RD110
			for (RD110 reg : getrD110())
				reg.subtractCounter();
			setrD110(new ArrayList<RD110>());
		}
		
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((COD_MOD == null) ? 0 : COD_MOD.hashCode());
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
		result = prime * result
				+ ((IND_EMIT == null) ? 0 : IND_EMIT.hashCode());
		result = prime * result
				+ ((IND_OPER == null) ? 0 : IND_OPER.hashCode());
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
		RD100 other = (RD100) obj;
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
		if (IND_OPER == null) {
			if (other.IND_OPER != null)
				return false;
		} else if (!IND_OPER.equals(other.IND_OPER))
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
		else if (o1 instanceof RD100 && o2 instanceof RD100) {
			RD100 e1 = (RD100) o1;
			RD100 e2 = (RD100) o2;
			//
			if (e1.DT_A_P == null) // Depois
				return 1;
			else if (e2.DT_A_P == null) // Antes
				return -1;

			int compare = e1.DT_A_P.compareTo(e2.DT_A_P);

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

} // RD100