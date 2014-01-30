-- Jan 29, 2014 10:24:18 PM BRST
-- SysConfig Entries
INSERT INTO AD_SysConfig (AD_SysConfig_ID,ConfigurationLevel,Value,Description,AD_SysConfig_UU,Created,Updated,AD_Org_ID,CreatedBy,IsActive,UpdatedBy,Name,AD_Client_ID,EntityType) VALUES (1000001,'C','Y','Utiliza os registros na tabela LBR_ICMSMatrix','48563bc3-91ac-4599-9300-7a8b2c38d436',TO_TIMESTAMP('2014-01-29 22:24:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-29 22:24:17','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,'LBR_USE_ICMS_MATRIX',0,'LBR')
;

-- Jan 29, 2014 10:25:36 PM BRST
INSERT INTO AD_SysConfig (AD_SysConfig_ID,ConfigurationLevel,Value,Description,AD_SysConfig_UU,Created,Updated,AD_Org_ID,CreatedBy,IsActive,UpdatedBy,Name,AD_Client_ID,EntityType) VALUES (1000002,'C','Y','Utiliza os registros na tabela LBR_ISSMatrix','1e3764ae-81a3-437e-88c9-00d20c416f33',TO_TIMESTAMP('2014-01-29 22:25:36','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-29 22:25:36','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,'LBR_USE_ISS_MATRIX',0,'LBR')
;

SELECT lbr_register_migration_script('201401292228.sql') FROM dual
;
