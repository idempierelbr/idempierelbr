package org.idempierelbr.nfe.beans;

/**
 * 	Inutilização da Numeração da NF.
 */
public class InutilizacaoNFEBean
{
	/**	Campos para compor o XML	*/
	private String Id;
	private String tpAmb;
	private final String xServ = "INUTILIZAR"; 
	private String cUF;
	private String ano;
	private String CNPJ;
	private String mod;
	private String serie;
	private String nNFIni;
	private String nNFFin;
	private String xJust;
	
	public String getxServ()
	{
		return xServ;
	}	//	getxServ
	
	/**
	 * 	Default Constructor
	 */
	public InutilizacaoNFEBean () {
	}	//	InutilizacaoNF
	
	/**
	 * 	Retorna o Identificador da Inutilização, composto por:
	 * 	"ID" UF Ano CNPJ Modelo Serie NoInicial NoFinal
	 * @return
	 */
	public String getID()
	{
		return Id;
	}	//	getID
	
	/**
	 * 	Grava Identificador da Inutilização
	 */
	public void setID(String id)
	{
		this.Id = id;
	}	//	setID
	
	/**
	 * 	Tipo de Ambiente (Produção ou Homologação)	
	 * 	@return tipo de ambiente
	 */
	public String getTpAmb()
	{
		return tpAmb;
	}	//	getTpAmb
	
	/**
	 * 	Tipo de Ambiente (Produção ou Homologação)
	 * 	@param tpAmb
	 */
	public void setTpAmb(String tpAmb)
	{
		this.tpAmb = tpAmb;
	}	//	setTpAmb
	
	/**
	 * 	Código numérico da UF (Não é a sigla)
	 * 	@return código da UF
	 */
	public String getcUF()
	{
		return cUF;
	}	//	getcUF
	
	/**
	 * 	Código numérico da UF (Não é a sigla)
	 * 	@param cUF
	 */
	public void setcUF(String cUF)
	{
		this.cUF = cUF;
	}	//	setcUF
	
	/**
	 * 	Ano em que a sequencia deve ser inutilizada
	 * 	@return Ano
	 */
	public String getAno()
	{
		return ano;
	}	//	getAno
	
	/**
	 * 	Ano em que a sequencia deve ser inutilizada
	 * 	@param ano
	 */
	public void setAno(String ano)
	{
		this.ano = ano;
	}	//	setAno
	
	/**
	 * 	CNPJ
	 * 	@return CNPJ
	 */
	public String getCNPJ()
	{
		return CNPJ;
	}	//	getCNPJ
	
	/**
	 * 	CNPJ
	 * 	@param cNPJ
	 */
	public void setCNPJ(String cNPJ)
	{
		CNPJ = cNPJ;
	}	//	setCNPJ
	
	/**
	 * 	Modelo da sequencia a ser inutilizada, atualmente 55
	 * 	@return mod
	 */
	public String getMod()
	{
		return mod;
	}	//	getMod
	
	/**
	 * 	Modelo da sequencia a ser inutilizada, atualmente 55
	 * 	@param mod
	 */
	public void setMod(String mod)
	{
		this.mod = mod;
	}	//	setMod
	
	/**
	 * 	Série da sequencia a ser inutilizada
	 * 	@return serie
	 */
	public String getSerie()
	{
		return serie;
	}	//	getSerie
	
	/**
	 * 	Série da sequencia a ser inutilizada
	 * 	@param serie
	 */
	public void setSerie(String serie)
	{
		this.serie = serie;
	}	//	setSerie
	
	/**
	 * 	Número Inicial da Sequencia a ser inutilizada
	 * 	@return número inicial
	 */
	public String getnNFIni()
	{
		return nNFIni;
	}	//	getnNFIni
	
	/**
	 * 	Número Inicial da Sequencia a ser inutilizada
	 * 	@param nNFIni
	 */
	public void setnNFIni(String nNFIni)
	{
		this.nNFIni = nNFIni;
	}	//	setnNFIni
	
	/**
	 * 	Número Final da Sequencia a ser inutilizada
	 * 	@return número final
	 */
	public String getnNFFin()
	{
		return nNFFin;
	}	//	getnNFFin
	
	/**
	 * 	Número Final da Sequencia a ser inutilizada
	 * 	@param nNFFin
	 */
	public void setnNFFin(String nNFFin)
	{
		this.nNFFin = nNFFin;
	}	//	setnNFFin
	
	/**
	 * 	Justificativa da Inutilização
	 * 	@return Mensagem de justificativa
	 */
	public String getxJust()
	{
		return xJust;
	}	//	getxJust
	
	/**
	 * 	Justificativa da Inutilização
	 * 	@param xJust
	 */
	public void setxJust(String xJust)
	{
		this.xJust = xJust;
	}	//	setxJust
	
}	//	InutilizacaoNFEBean
