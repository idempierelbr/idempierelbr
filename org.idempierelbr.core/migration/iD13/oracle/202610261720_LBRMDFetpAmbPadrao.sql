-- LBR_MDFe.LBR_tpAmb: sugerir o ambiente do tipo de documento MDF-e, como a NF-e.
SELECT register_migration_script('202610261720_LBRMDFetpAmbPadrao.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- O ambiente do tipo de documento so aparecia para NF-e e NFS-e.
UPDATE AD_Field
   SET DisplayLogic = '@DocBaseType@=''NFB'' | @DocBaseType@=''NFS'' | @DocBaseType@=''MDF''',
       Updated = TO_TIMESTAMP('2026-10-26 17:20:00','YYYY-MM-DD HH24:MI:SS'),
       UpdatedBy = 100
 WHERE AD_Field_ID = 1001514
;

-- Ambiente do tipo MDF-e padrao da empresa; havendo varios sem padrao, o
-- MAX prefere Homologacao (2). Sem tipo configurado, Producao (1). Gravar
-- vazio fora da janela continua caindo em Homologacao (MLBRMDFe.beforeSave).
UPDATE AD_Column
   SET DefaultValue = '@SQL=SELECT COALESCE(MAX(CASE WHEN IsDefault=''Y'' THEN LBR_NFeEnv END), MAX(LBR_NFeEnv), ''1'') FROM C_DocType WHERE AD_Client_ID=@#AD_Client_ID@ AND DocBaseType=''MDF'' AND IsActive=''Y''',
       Updated = TO_TIMESTAMP('2026-10-26 17:20:00','YYYY-MM-DD HH24:MI:SS'),
       UpdatedBy = 100
 WHERE ColumnName = 'LBR_tpAmb'
   AND AD_Table_ID = (SELECT AD_Table_ID FROM AD_Table WHERE TableName = 'LBR_MDFe')
;
