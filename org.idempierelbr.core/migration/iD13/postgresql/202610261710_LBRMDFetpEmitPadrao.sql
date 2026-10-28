-- LBR_MDFe.LBR_tpEmit: sugerir Transportador de carga propria (2).
SELECT register_migration_script('202610261710_LBRMDFetpEmitPadrao.sql') FROM dual;

UPDATE AD_Column
   SET DefaultValue = '2',
       Updated = TO_TIMESTAMP('2026-10-26 17:10:00','YYYY-MM-DD HH24:MI:SS'),
       UpdatedBy = 100
 WHERE ColumnName = 'LBR_tpEmit'
   AND AD_Table_ID = (SELECT AD_Table_ID FROM AD_Table WHERE TableName = 'LBR_MDFe')
;
