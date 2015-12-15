-- 14/12/2015 15h11min7s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800038,'693 - Aliquota de ICMS superior a definida para a operacao interestadual',1000039,'693',0,0,'Y',TO_TIMESTAMP('2015-12-14 15:11:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-12-14 15:11:01','YYYY-MM-DD HH24:MI:SS'),0,'LBR','2dd7bf8e-a1d2-4bd8-8639-e99639064f38')
;

SELECT lbr_register_migration_script('201512141502.sql') FROM dual;
