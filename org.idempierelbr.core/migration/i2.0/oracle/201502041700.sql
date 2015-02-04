SET SQLBLANKLINES ON
SET DEFINE OFF

-- 04/02/2015 16h53min23s BRST
-- Adding new items to Reference LBR_NFeTpEmis
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800019,1000038,'a8ba0c30-0004-4235-bbfb-60c080f588a9','2',TO_DATE('2015-02-04 16:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2015-02-04 16:53:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'FS-IA')
;

-- 04/02/2015 16h54min53s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800020,1000038,'9d9d6e82-047f-4a6f-b930-b51190f09a05','3',TO_DATE('2015-02-04 16:54:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2015-02-04 16:54:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'SCAN')
;

-- 04/02/2015 16h55min25s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800021,1000038,'d6c929a4-7108-45fb-9c2b-16ff746ce230','4',TO_DATE('2015-02-04 16:55:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2015-02-04 16:55:23','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'DPEC')
;

-- 04/02/2015 16h55min45s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800022,1000038,'40a18990-d780-4f39-a5f7-c5f4d0f20d14','5',TO_DATE('2015-02-04 16:55:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2015-02-04 16:55:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'FS-DA')
;

-- 04/02/2015 16h56min22s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800023,1000038,'4f892234-653b-4145-8d94-c2b98e1be958','6',TO_DATE('2015-02-04 16:56:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2015-02-04 16:56:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'SVC-AN')
;

-- 04/02/2015 16h56min44s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800024,1000038,'43727f88-b6de-452c-984e-1ba8d5fe8cb0','7',TO_DATE('2015-02-04 16:56:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2015-02-04 16:56:42','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'SVC-RS')
;

-- 04/02/2015 16h57min16s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800025,1000038,'4f2d0bbf-3c6d-4494-97e7-1204ffa4fa4e','9',TO_DATE('2015-02-04 16:57:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2015-02-04 16:57:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Off-line')
;

SELECT lbr_register_migration_script('201502041700.sql') FROM dual
;
