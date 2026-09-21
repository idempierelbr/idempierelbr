-- Liga o botao "Transmitir MDF-e" da janela ao processo que o executa.
SELECT register_migration_script('202609091400_LBRMDFeBotaoTransmitir.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

UPDATE AD_Column
   SET AD_Process_ID = (SELECT AD_Process_ID FROM AD_Process
                         WHERE Value = 'LBR_MDFe_Transmitir' AND IsActive = 'Y'),
       Updated = TO_TIMESTAMP('2026-09-09 14:00:00','YYYY-MM-DD HH24:MI:SS'),
       UpdatedBy = 100
 WHERE ColumnName = 'LBR_ProcTransmitir'
   AND AD_Table_ID = (SELECT AD_Table_ID FROM AD_Table WHERE TableName = 'LBR_MDFe')
;
