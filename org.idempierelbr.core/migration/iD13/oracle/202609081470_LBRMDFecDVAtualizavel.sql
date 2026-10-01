-- LBR_MDFe.LBR_cDV: liberar gravacao.
SELECT register_migration_script('202609081470_LBRMDFecDVAtualizavel.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

UPDATE AD_Column
   SET IsUpdateable = 'Y',
       Updated = TO_TIMESTAMP('2026-09-08 21:00:00','YYYY-MM-DD HH24:MI:SS'),
       UpdatedBy = 100
 WHERE ColumnName = 'LBR_cDV'
   AND AD_Table_ID = (SELECT AD_Table_ID FROM AD_Table WHERE TableName = 'LBR_MDFe')
;
