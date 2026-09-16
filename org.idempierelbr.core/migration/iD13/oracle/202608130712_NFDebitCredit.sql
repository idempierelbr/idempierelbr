-- 
SELECT register_migration_script('202608130712_NFDebitCredit.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 13 de ago. de 2026 07:12:54 BRT
UPDATE AD_Process_Para SET Name='Document Type', Description='Document type or rules', Help='The Document Type determines document sequence and processing rules', ColumnName='C_DocType_ID', IsCentrallyMaintained='Y', AD_Element_ID=196,Updated=TO_TIMESTAMP('2026-08-13 07:12:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800152
;

-- 13 de ago. de 2026 07:14:00 BRT
UPDATE AD_Process_Para SET Name='Document Action', Description='The targeted status of the document', Help='You find the current status in the Document Status field. The options are listed in a popup', ColumnName='DocAction', IsCentrallyMaintained='Y', AD_Element_ID=287,Updated=TO_TIMESTAMP('2026-08-13 07:14:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800151
;

