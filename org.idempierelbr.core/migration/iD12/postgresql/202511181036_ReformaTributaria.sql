-- 
SELECT register_migration_script('202511181036_ReformaTributaria.sql') FROM dual;

-- 18 de nov. de 2025 10:36:17 BRT
UPDATE AD_Column SET FieldLength=4,Updated=TO_TIMESTAMP('2025-11-18 10:36:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_UU='20db3212-60da-4aed-b3cb-d0074243c4a3'
;

-- 18 de nov. de 2025 10:36:19 BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFeStatus','VARCHAR(4)',null,'NULL')
;

-- 18 de nov. de 2025 11:23:22 BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:23:22','YYYY-MM-DD HH24:MI:SS'),10,'IBS - UF','N','Y',nextidfunc(1000011,'N'),'fe38394c-8006-4c91-bd2e-24f915cb3543','IBSUF','P','M',TO_TIMESTAMP('2025-11-18 11:23:22','YYYY-MM-DD HH24:MI:SS'),10,0)
;

-- 18 de nov. de 2025 11:23:32 BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:23:32','YYYY-MM-DD HH24:MI:SS'),10,'IBS - Mun.','N','Y',nextidfunc(1000011,'N'),'e8caaf7a-c01e-43e4-9fb4-4f6ce6872335','IBSMun','P','M',TO_TIMESTAMP('2025-11-18 11:23:32','YYYY-MM-DD HH24:MI:SS'),10,0)
;

-- 18 de nov. de 2025 11:23:49 BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:23:49','YYYY-MM-DD HH24:MI:SS'),10,'CBS','N','Y',nextidfunc(1000011,'N'),'e91dd6ec-6978-49c6-85b6-6d39b6c55ca4','CBS','P','M',TO_TIMESTAMP('2025-11-18 11:23:49','YYYY-MM-DD HH24:MI:SS'),10,0)
;

-- 18 de nov. de 2025 11:23:56 BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:23:56','YYYY-MM-DD HH24:MI:SS'),10,'IS','N','Y',nextidfunc(1000011,'N'),'c3d57406-8adb-4dfd-bb4b-f68e213ac001','IS','P','M',TO_TIMESTAMP('2025-11-18 11:23:56','YYYY-MM-DD HH24:MI:SS'),10,0)
;

-- 18 de nov. de 2025 11:24:35 BRT
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,LBR_TaxGroup_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:24:35','YYYY-MM-DD HH24:MI:SS'),10,'Grupo IBS - UF','Y',nextidfunc(1000006,'N'),'8fcb6940-bff5-47d6-b8ce-947b8b57b299','IBSUF',TO_TIMESTAMP('2025-11-18 11:24:35','YYYY-MM-DD HH24:MI:SS'),10)
;

-- 18 de nov. de 2025 11:24:43 BRT
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,LBR_TaxGroup_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:24:43','YYYY-MM-DD HH24:MI:SS'),10,'Grupo IBS - Mun.','Y',nextidfunc(1000006,'N'),'30a80661-1619-44fa-b734-ca754159c3f6','IBSMun',TO_TIMESTAMP('2025-11-18 11:24:43','YYYY-MM-DD HH24:MI:SS'),10)
;

-- 18 de nov. de 2025 11:24:54 BRT
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,LBR_TaxGroup_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:24:54','YYYY-MM-DD HH24:MI:SS'),10,'Grupo CBS','Y',nextidfunc(1000006,'N'),'f9bb61ad-ac8d-417a-b503-1e111b684714','CBS',TO_TIMESTAMP('2025-11-18 11:24:54','YYYY-MM-DD HH24:MI:SS'),10)
;

-- 18 de nov. de 2025 11:25:01 BRT
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,LBR_TaxGroup_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2025-11-18 11:25:01','YYYY-MM-DD HH24:MI:SS'),10,'Grupo IS','Y',nextidfunc(1000006,'N'),'028e7116-fc46-404f-ab51-8c239236b686','IS',TO_TIMESTAMP('2025-11-18 11:25:01','YYYY-MM-DD HH24:MI:SS'),10)
;

