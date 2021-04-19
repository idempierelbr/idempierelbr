SET SQLBLANKLINES ON
SET DEFINE OFF

-- New option
-- 12 de nov de 2020 08:39:02 PST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800218,'Valor da Operacao',1000028,'6',0,0,'Y',TO_DATE('2020-11-12 08:39:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-11-12 08:39:01','YYYY-MM-DD HH24:MI:SS'),0,'LBR','2443c4de-c7ca-4110-95ad-d9bfa6d10c04')
;

SELECT lbr_register_migration_script('202011121341_NewOption.sql') FROM dual;

