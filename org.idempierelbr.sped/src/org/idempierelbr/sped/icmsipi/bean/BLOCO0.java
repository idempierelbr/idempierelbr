/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil * This program is free
 * software; you can redistribute it and/or modify it * under the terms version
 * 2 of the GNU General Public License as published * by the Free Software
 * Foundation. This program is distributed in the hope * that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied * warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. * See the GNU General
 * Public License for more details. * You should have received a copy of the GNU
 * General Public License along * with this program; if not, write to the Free
 * Software Foundation, Inc., * 59 Temple Place, Suite 330, Boston, MA
 * 02111-1307 USA. *
 *****************************************************************************/
package org.idempierelbr.sped.icmsipi.bean;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.idempierelbr.sped.annotation.XMLFieldProperties;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * BLOCO 0: ABERTURA, IDENTIFICAÇÃO E REFERÊNCIAS.
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $Id: Bloco0.java, 07/08/2012 11:03
 */
public class BLOCO0 {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "R0000")
	private R0000 r0000;

	@XMLFieldProperties(id = "R0001")
	private R0001 r0001;

	@XMLFieldProperties(id = "R0005")
	private R0005 r0005;

	@XMLFieldProperties(id = "R0100")
	private R0100 r0100;

	@XMLFieldProperties(id = "R0150")
	private List<R0150> r0150 = new ArrayList<R0150>();

	@XMLFieldProperties(id = "R0190")
	private List<R0190> r0190 = new ArrayList<R0190>();

	@XMLFieldProperties(id = "R0200")
	private List<R0200> r0200 = new ArrayList<R0200>();

	@XMLFieldProperties(id = "R0400")
	private List<R0400> r0400 = new ArrayList<R0400>();

	@XMLFieldProperties(id = "R0460")
	private List<R0460> r0460 = new ArrayList<R0460>();

	@XMLFieldProperties(id = "R0500")
	private List<R0500> r0500 = new ArrayList<R0500>();
	
	@XMLFieldProperties(id = "R0990")
	private R0990 r0990;

	public R0100 getR0100() {
		return r0100;
	}

	public void setR0100(R0100 r0100) {
		this.r0100 = r0100;
	}

	public R0005 getR0005() {
		return r0005;
	}

	public void setR0005(R0005 r0005) {
		this.r0005 = r0005;
	}

	public R0000 getR0000() {
		return r0000;
	}

	public void setR0000(R0000 r0000) {
		this.r0000 = r0000;
	}

	public R0001 getR0001() {
		return r0001;
	}

	public void setR0001(R0001 r0001) {
		this.r0001 = r0001;
	}

	public List<R0150> getR0150() {
		return r0150;
	}

	public void setR0150(ArrayList<R0150> r0150) {
		this.r0150 = r0150;
	}

	public List<R0190> getR0190() {
		return r0190;
	}

	public void setR0190(ArrayList<R0190> r0190) {
		this.r0190 = r0190;
	}

	public List<R0200> getR0200() {
		return r0200;
	}

	public void setR0200(ArrayList<R0200> r0200) {
		this.r0200 = r0200;
	}

	public R0990 getR0990() {
		return r0990;
	}

	public void setR0990(R0990 r0990) {
		this.r0990 = r0990;
	}

	public List<R0460> getR0460() {
		return r0460;
	}

	public void setR0460(List<R0460> r0460) {
		this.r0460 = r0460;
	}

	public void setR0150(List<R0150> r0150) {
		this.r0150 = r0150;
	}

	public void setR0190(List<R0190> r0190) {
		this.r0190 = r0190;
	}

	public void setR0200(List<R0200> r0200) {
		this.r0200 = r0200;
	}

	public List<R0500> getR0500() {
		return r0500;
	}

	public void setR0500(List<R0500> r0500) {
		this.r0500 = r0500;
	}

	/**
	 * Adicionar a lista de registros
	 * 
	 * Obs.: Se o registro já existir, fazer um subtract counter para adicionar
	 * aos totalizadores de registros
	 * 
	 * @param r0150
	 */
	public void addr0150(R0150 r0150) {
		
		//
		if(r0150 == null)
			return;
		
		//
		if (!this.r0150.contains(r0150))
			this.r0150.add(r0150);
		else
			r0150.subtractCounter();
	}

	/**
	 * Adicionar a lista de registros
	 * 
	 * Obs.: Se o registro já existir, fazer um subtract counter para adicionar
	 * aos totalizadores de registros
	 * 
	 * @param r0190
	 */
	public void addr0190(R0190 r0190) {
		
		//
		if(r0190 == null)
			return;

		//
		if (!this.r0190.contains(r0190))
			this.r0190.add(r0190);
		else
			r0190.subtractCounter();
	}

	/**
	 * Adicionar a lista de registros
	 * 
	 * Obs.: Se o registro já existir, fazer um subtract counter para adicionar
	 * aos totalizadores de registros
	 * 
	 * @param r0200
	 */
	public void addr0200(R0200 r0200) {
		
		//
		if(r0200 == null)
			return;
		
		//
		if (!this.r0200.contains(r0200))
			this.r0200.add(r0200);
		else
			r0200.subtractCounter();
	}

	/**
	 * Adicionar registro de Natureza da Operação
	 * 
	 * Obs.: Se o registro já existir, fazer um subtract counter para adicionar
	 * aos totalizadores de registros
	 * 
	 * @param r0400
	 */
	public void addr0400(R0400 r0400) {
		
		//
		if(r0400 == null)
			return;
		
		//
		if (!this.r0400.contains(r0400))
			this.r0400.add(r0400);
		else
			r0400.subtractCounter();
	}

	/**
	 * Adicionar a lista de registros
	 * 
	 * Obs.: Se o registro já existir, fazer um subtract counter para adicionar
	 * aos totalizadores de registros
	 * 
	 * @param r0460
	 */
	public void addr0460(R0460 r0460) {

		//
		if(r0460 == null)
			return;
		
		//
		if (!this.r0460.contains(r0460))
			this.r0460.add(r0460);
		else
			r0460.subtractCounter();
	}

	/**
	 * Adicionar a lista de registros
	 * 
	 * Obs.: Se o registro já existir, fazer um subtract counter para adicionar
	 * aos totalizadores de registros
	 * 
	 * @param r0460
	 */
	public void addr0500(R0500 r0500) {
		
		//
		if(r0500 == null)
			return;
		
		if (!this.r0500.contains(r0500))
			this.r0500.add(r0500);
		else
			r0500.subtractCounter();
	}
	
	
	/**
	 * To String
	 */
	public String toString() {
		//
		StringBuilder result = new StringBuilder();
		
		//
		result.append(r0000);
		result.append(r0001);
		result.append(r0005);
		result.append(r0100);

		// clientes
		for (R0150 aux_r0150 : this.r0150)
			result.append(aux_r0150);

		// uom
		for (R0190 aux_r0190 : r0190)
			result.append(aux_r0190);

		// produtos
		for (R0200 aux_r0200 : r0200)
			result.append(aux_r0200);

		// naturezas da operação
		for (R0400 aux_r0400 : r0400)
			result.append(aux_r0400);

		// obs do lancamento fiscal
		for (R0460 aux_r0460 : r0460)
			result.append(aux_r0460);

		// contas contábeis
		for (R0500 aux_r0500 : r0500)
			result.append(aux_r0500);
		
		// counter
		result.append(r0990);

		//
		return result.toString();	
	}

	
	/**
	 * 	Test
	 */
	public static void main (String[] args)
	{
		
		BLOCO0 blc = new BLOCO0();
		
		blc.r0000 = new R0000();
		blc.r0000.setCNPJ("000-00");
		blc.r0000.setCOD_VER("1");
		blc.r0000.setDT_INI(new Timestamp(new Date().getTime()));
		blc.r0000.setCOD_MUN("1234");
		
		
		//
		System.out.println (blc.r0000.toString());
	}
	
} // R0000