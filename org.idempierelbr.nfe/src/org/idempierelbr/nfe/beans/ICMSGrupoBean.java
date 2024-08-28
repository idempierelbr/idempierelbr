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
package org.idempierelbr.nfe.beans;

import com.thoughtworks.xstream.annotations.XStreamAlias;

public class ICMSGrupoBean 
{
	private String orig;
	private String CST;
	private String CSOSN;
	private String modBC;
	private String pRedBC;
	private String vBC;
	@XStreamAlias ("pRedBC")
	private String pRedBC2;
	private String pICMS;
	private String vICMS;
	private String vBCFCP;
	private String pFCP;
	private String vFCP;
	private String modBCST;
	private String pMVAST;
	private String pRedBCST;
	private String vBCST;
	private String pICMSST;
	private String vICMSST;
	private String vBCFCPST;
	private String pFCPST;
	private String vFCPST;
	private String motDesICMS;
	private String vICMSDeson;
	@XStreamAlias ("vBCSTRet")
	private String vBCSTRet;
	@XStreamAlias ("pST")
	private String pST;
	@XStreamAlias ("vICMSSubstituto")
	private String vICMSSubstituto;
	@XStreamAlias ("vICMSSTRet")
	private String vICMSSTRet;
	private String vBCFCPSTRet;
	private String pFCPSTRet;
	private String vFCPSTRet;
	private String vBCSTDest;
	private String vICMSSTDest;
	private String pBCOp;
	private String vICMSOp;
	private String UFST;
	private String pCredSN;
	private String vCredICMSSN;
	private String pDif;
	private String vICMSDif;
	//
	public String getOrig()
	{
		return orig;
	}
	public void setOrig(String orig)
	{
		this.orig = orig;
	}
	public String getCST()
	{
		return CST;
	}
	public void setCST(String cST)
	{
		CST = cST;
	}
	public String getCSOSN()
	{
		return CSOSN;
	}
	public void setCSOSN(String cSOSN)
	{
		CSOSN = cSOSN;
	}
	public String getModBC()
	{
		return modBC;
	}
	public void setModBC(String modBC)
	{
		this.modBC = modBC;
	}
	public String getpRedBC()
	{
		return pRedBC;
	}
	public void setpRedBC(String pRedBC)
	{
		this.pRedBC = pRedBC;
	}
	public String getvBC()
	{
		return vBC;
	}
	public void setvBC(String vBC)
	{
		this.vBC = vBC;
	}
	public String getpRedBC2()
	{
		return pRedBC2;
	}
	public void setpRedBC2(String pRedBC2)
	{
		this.pRedBC2 = pRedBC2;
	}
	public String getpICMS()
	{
		return pICMS;
	}
	public void setpICMS(String pICMS)
	{
		this.pICMS = pICMS;
	}
	public String getvICMS()
	{
		return vICMS;
	}
	public void setvICMS(String vICMS)
	{
		this.vICMS = vICMS;
	}
	public String getModBCST()
	{
		return modBCST;
	}
	public void setModBCST(String modBCST)
	{
		this.modBCST = modBCST;
	}
	public String getpMVAST()
	{
		return pMVAST;
	}
	public void setpMVAST(String pMVAST)
	{
		this.pMVAST = pMVAST;
	}
	public String getpRedBCST()
	{
		return pRedBCST;
	}
	public void setpRedBCST(String pRedBCST)
	{
		this.pRedBCST = pRedBCST;
	}
	public String getvBCST()
	{
		return vBCST;
	}
	public void setvBCST(String vBCST)
	{
		this.vBCST = vBCST;
	}
	public String getpICMSST()
	{
		return pICMSST;
	}
	public void setpICMSST(String pICMSST)
	{
		this.pICMSST = pICMSST;
	}
	public String getvICMSST()
	{
		return vICMSST;
	}
	public void setvICMSST(String vICMSST)
	{
		this.vICMSST = vICMSST;
	}
	public String getMotDesICMS()
	{
		return motDesICMS;
	}
	public void setMotDesICMS(String motDesICMS)
	{
		this.motDesICMS = motDesICMS;
	}
	public String getvBCSTRet()
	{
		return vBCSTRet;
	}
	public void setvBCSTRet(String vBCSTRet)
	{
		this.vBCSTRet = vBCSTRet;
	}
	public String getvICMSSTRet()
	{
		return vICMSSTRet;
	}
	public void setvICMSSTRet(String vICMSSTRet)
	{
		this.vICMSSTRet = vICMSSTRet;
	}
	public String getvBCSTDest()
	{
		return vBCSTDest;
	}
	public void setvBCSTDest(String vBCSTDest)
	{
		this.vBCSTDest = vBCSTDest;
	}
	public String getvICMSSTDest()
	{
		return vICMSSTDest;
	}
	public void setvICMSSTDest(String vICMSSTDest)
	{
		this.vICMSSTDest = vICMSSTDest;
	}
	public String getpBCOp()
	{
		return pBCOp;
	}
	public void setpBCOp(String pBCOp)
	{
		this.pBCOp = pBCOp;
	}
	public String getUFST()
	{
		return UFST;
	}
	public void setUFST(String uFST)
	{
		UFST = uFST;
	}
	public String getpCredSN()
	{
		return pCredSN;
	}
	public void setpCredSN(String pCredSN)
	{
		this.pCredSN = pCredSN;
	}
	public String getvCredICMSSN()
	{
		return vCredICMSSN;
	}
	public void setvCredICMSSN(String vCredICMSSN)
	{
		this.vCredICMSSN = vCredICMSSN;
	}
	public String getvICMSDeson() {
		return vICMSDeson;
	}
	public void setvICMSDeson(String vICMSDeson) {
		this.vICMSDeson = vICMSDeson;
	}
	public String getvICMSOp() {
		return vICMSOp;
	}
	public void setvICMSOp(String vICMSOp) {
		this.vICMSOp = vICMSOp;
	}
	public String getpDif() {
		return pDif;
	}
	public void setpDif(String pDif) {
		this.pDif = pDif;
	}
	public String getvICMSDif() {
		return vICMSDif;
	}
	public void setvICMSDif(String vICMSDif) {
		this.vICMSDif = vICMSDif;
	}
	public String getvBCFCP() {
		return vBCFCP;
	}
	public void setvBCFCP(String vBCFCP) {
		this.vBCFCP = vBCFCP;
	}
	public String getpFCP() {
		return pFCP;
	}
	public void setpFCP(String pFCP) {
		this.pFCP = pFCP;
	}
	public String getvFCP() {
		return vFCP;
	}
	public void setvFCP(String vFCP) {
		this.vFCP = vFCP;
	}
	public String getvBCFCPST() {
		return vBCFCPST;
	}
	public void setvBCFCPST(String vBCFCPST) {
		this.vBCFCPST = vBCFCPST;
	}
	public String getpFCPST() {
		return pFCPST;
	}
	public void setpFCPST(String pFCPST) {
		this.pFCPST = pFCPST;
	}
	public String getvFCPST() {
		return vFCPST;
	}
	public void setvFCPST(String vFCPST) {
		this.vFCPST = vFCPST;
	}
	public String getpST() {
		return pST;
	}
	public void setpST(String pST) {
		this.pST = pST;
	}
	public String getvBCFCPSTRet() {
		return vBCFCPSTRet;
	}
	public void setvBCFCPSTRet(String vBCFCPSTRet) {
		this.vBCFCPSTRet = vBCFCPSTRet;
	}
	public String getpFCPSTRet() {
		return pFCPSTRet;
	}
	public void setpFCPSTRet(String pFCPSTRet) {
		this.pFCPSTRet = pFCPSTRet;
	}
	public String getvFCPSTRet() {
		return vFCPSTRet;
	}
	public void setvFCPSTRet(String vFCPSTRet) {
		this.vFCPSTRet = vFCPSTRet;
	}
	public String getvICMSSubstituto() {
		return vICMSSubstituto;
	}
	public void setvICMSSubstituto(String vICMSSubstituto) {
		this.vICMSSubstituto = vICMSSubstituto;
	}
	
}	//	ICMSGrupoBean
