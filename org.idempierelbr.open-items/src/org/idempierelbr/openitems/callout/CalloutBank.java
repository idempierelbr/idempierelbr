package org.idempierelbr.openitems.callout;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.apache.commons.io.IOUtils;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MImage;

public class CalloutBank implements IColumnCallout {
	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MBankAccount.Table_Name))
			if (mField.getColumnName().equals(MBankAccount.COLUMNNAME_AccountNo) ||
					mField.getColumnName().equals("LBR_BankAgencyNo"))
				return checkDigit(ctx, mTab, value);

		if (mTab.getTableName().equals(MBank.Table_Name))
			if (mField.getColumnName().equals(MBank.COLUMNNAME_RoutingNo) && value != null )
				return setBankLogo( ctx , mTab , value );

		return null;
	}
	
	/**
	 * Alert the user about including the digit
	 */
	private String checkDigit(Properties ctx, GridTab mTab, Object value) {
		String valor = (String)value;
		
		if (valor != null && !valor.trim().equals("") && !valor.contains("-"))
			mTab.fireDataStatusEEvent("Atenção!", "Se houver, inclua o dígito verificador " +
					"(separado por '-') nos campos 'Núm. da Agência' e 'Núm. da Conta'. Ex: 1234-56", false);
		
		return "";
	}
	
	private String setBankLogo(Properties ctx, GridTab mTab, Object value) {
		
		// Procura imagem do banco em um plugin personalizado

		InputStream imageInputStream;

		// TODO: procurar uma forma de carregar o logo de um pacote de extensão (Factory?)
		// TODO: encontrar forma de remover imagens automaticas não utilizadas
		
		// Procura imagem do banco no pacote do LBR
		imageInputStream = getClass().getClassLoader()
				.getResourceAsStream("org/idempierelbr/openitems/images/" + value + ".png");

		if (imageInputStream == null)
			return null;
			
		MImage imageRecord = new MImage(ctx, 0, null);
		try {
			imageRecord.setBinaryData(IOUtils.toByteArray(imageInputStream));
			imageRecord.setName("imagem carregada automaticamente banco " + value );
		} catch (IOException e) {
			e.printStackTrace();
			imageRecord.dump();
			return null;
		}
		
		imageRecord.saveEx();
		mTab.setValue("Logo_ID", imageRecord.get_ID());
		
		return null;
	}
	
}