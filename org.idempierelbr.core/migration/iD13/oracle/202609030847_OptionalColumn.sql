-- 
SELECT register_migration_script('202609030847_OptionalColumn.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 3 de set. de 2026 08:47:02 BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2026-09-03 08:47:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802158
;

-- 3 de set. de 2026 08:47:03 BRT
ALTER TABLE LBR_NotaFiscalDetPag MODIFY LBR_TpIntegra CHAR(1) DEFAULT NULL 
;

-- 3 de set. de 2026 08:47:03 BRT
ALTER TABLE LBR_NotaFiscalDetPag MODIFY LBR_TpIntegra NULL
;

