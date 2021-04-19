SET SQLBLANKLINES ON
SET DEFINE OFF

-- Set LBR_NFS_ID as updateable
-- 30 de out de 2020 08:05:00 PDT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2020-10-30 08:05:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801144
;

SELECT lbr_register_migration_script('202010301208_UpdateableField.sql') FROM dual;

