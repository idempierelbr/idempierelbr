package org.idempierelbr.nfs.nacional.factory;

import org.idempierelbr.nfs.factory.INFSe;
import org.idempierelbr.nfs.factory.INFSeFactory;
import org.idempierelbr.nfs.nacional.NFSeNacional;

/**
 * Fabrica responsavel por devolver a implementacao de {@link INFSe} para o
 * padrao nacional de NFS-e (Sistema Nacional NFS-e / ADN), administrado pelo
 * governo federal (Receita Federal / Comite Gestor da NFS-e - CGNFS).
 *
 * E' descoberta pelo NFSUtils.getNFSeInstance(String) via OSGi Service
 * Locator (org.idempierelbr.nfs.util.NFSUtils), que itera todas as
 * INFSeFactory registradas ate encontrar uma que reconheca o valor de
 * LBR_NFSConfig.LBR_NFSModel configurado no C_DocType.
 *
 * IMPORTANTE: o valor "NACIONAL" abaixo e' uma convencao definida por nos
 * para este plugin. E' preciso cadastrar esse valor na lista de referencia
 * (AD_Ref_List) do campo LBR_NFSModel para que apareca como opcao na
 * configuracao (LBR_NFSConfig) dentro do iDempiere.
 */
public class NFSeNacionalFactory implements INFSeFactory {

	/** Valor de LBR_NFSModel que identifica o padrao nacional (ADN) */
	public static final String NFS_MODEL_NACIONAL = "NACIONAL";

	@Override
	public INFSe newNFSeInstance(String nfsModel) {

		if (nfsModel == null)
			return null;

		if (NFS_MODEL_NACIONAL.equals(nfsModel))
			return new NFSeNacional();

		// Nao e' o nosso modelo - devolve null para o NFSUtils continuar
		// procurando entre as demais INFSeFactory registradas
		return null;
	}

}
