-- 
SELECT register_migration_script('202609030847_OptionalColumn.sql') FROM dual;

-- 3 de set. de 2026 08:47:02 BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2026-09-03 08:47:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802158
;

-- 3 de set. de 2026 08:47:03 BRT
INSERT INTO t_alter_column values('lbr_notafiscaldetpag','LBR_TpIntegra','CHAR(1)',null,'NULL')
;

-- 3 de set. de 2026 08:47:03 BRT
INSERT INTO t_alter_column values('lbr_notafiscaldetpag','LBR_TpIntegra',null,'NULL',null)
;

