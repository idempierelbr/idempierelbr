-- Enderecos dos web services do MDF-e (SVRS)
SELECT register_migration_script('202609081420_LBRMDFeWebServices.sql') FROM dual;


-- MDFeRecepcaoSinc AC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800000,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:03','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',441,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7590-997c-c23af26b6698'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc AL ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800001,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',442,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7957-88c0-a68c70ab85f9'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc AM ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800002,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:17','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',444,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7151-8e8a-df1f53efd328'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc AP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800003,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:24','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',443,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7571-af4e-835e8275fbf6'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc BA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800004,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:31','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',445,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7cca-bc08-d0182cda2e82'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc CE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800005,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:38','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',446,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7aa0-a8b0-1c7fcbe632ba'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc DF ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800006,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:45','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',447,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7a3e-a539-ae8dd06691c8'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc ES ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800007,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:52','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',448,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7c41-a8ef-888c8340a2c8'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc GO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800008,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',449,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7989-9b29-fddd3818240d'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800009,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:06','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',450,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7436-806c-ec2bf1568b31'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MG ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800010,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:13','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',453,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7363-9132-c0780742f8e4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800011,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:20','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',452,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d3-7cb0-9f1d-cf1b20d4a5a6'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MT ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800012,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:27','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',451,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7609-888b-5b5aa69dcaaa'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800013,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:34','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',454,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7833-9e69-7dfde34e4faa'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PB ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800014,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:41','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',455,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7f1d-8e4c-3ba61da90856'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800015,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:48','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',457,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-78f1-b075-ecbf7797045d'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PI ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800016,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:02:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:02:55','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',458,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-77f9-beab-b65714e250ee'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800017,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:02','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',456,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-79a7-a19d-3794df2a9eb6'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RJ ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800018,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:09','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',459,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-75ac-985d-67c251dc652a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RN ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800019,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:16','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',460,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-762e-9e39-18e102e60c2d'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800020,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:23','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',462,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7fd6-a6a3-77f75b95243a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800021,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:30','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',463,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7128-be2e-f19284163c33'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800022,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:37','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',461,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7099-9bb8-561173cb197a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc SC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800023,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:44','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',464,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7f10-b5c2-cde907c52977'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc SE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800024,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:51','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',466,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-7556-9204-8217361e8343'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc SP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800025,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:03:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:03:58','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',465,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-74ee-85d3-ebfc4c46f6b0'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc TO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800026,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:05','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','1','3.00',467,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d4-757d-ab0b-27f0bcc633c7'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeConsulta AC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800027,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:12','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',441,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7b39-9a28-9a0880652240'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeConsulta AL ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800028,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:19','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',442,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7bd5-bb31-990a083e383c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeConsulta AM ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800029,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:26','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',444,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-77bb-a0ce-5e940cddddd1'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeConsulta AP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800030,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:33','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',443,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-79e1-8960-40f783a5cd10'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeConsulta BA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800031,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:40','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',445,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-79e8-9d5e-15814b627368'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeConsulta CE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800032,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:47','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',446,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7137-b88f-31620d174a69'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeConsulta DF ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800033,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:04:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:04:54','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',447,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-76ab-bcd8-05f458c5f525'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeConsulta ES ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800034,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:01','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',448,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-71a8-a4d1-29144e4642b7'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeConsulta GO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800035,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:08','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',449,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-72e3-8599-123b3fc74645'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeConsulta MA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800036,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:15','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',450,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-73c7-9b0d-b65d771445ec'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeConsulta MG ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800037,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:22','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',453,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7a47-bd39-f01fea7f3ab7'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeConsulta MS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800038,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:29','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',452,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7fd3-9110-971cc145a261'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeConsulta MT ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800039,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:36','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',451,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7865-8cba-6e0719cfa49e'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeConsulta PA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800040,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:43','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',454,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7dfd-aff5-2b8401d8bf81'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeConsulta PB ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800041,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:50','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',455,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-70f4-a7e3-011ee799b32c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeConsulta PE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800042,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:05:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:05:57','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',457,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-7595-b03b-57d2009f7da5'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeConsulta PI ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800043,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:04','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',458,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d4-77a0-82b0-16ee7b2d991b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeConsulta PR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800044,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:11','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',456,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7eab-8f9c-112f860b065c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeConsulta RJ ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800045,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:18','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',459,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7fa0-bf1f-f7c4a85cc758'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeConsulta RN ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800046,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:25','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',460,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7fd5-ba01-fb2eee5a0adf'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeConsulta RO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800047,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:32','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',462,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7d8b-b4b3-42e924aadb7b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeConsulta RR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800048,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:39','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',463,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-78a4-8a69-112b4d4abeaa'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeConsulta RS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800049,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:46','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',461,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7c03-910c-bfa717a99654'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeConsulta SC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800050,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:06:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:06:53','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',464,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7b18-934e-c550282d7a3c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeConsulta SE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800051,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:00','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',466,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7f7b-a039-036084927065'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeConsulta SP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800052,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:07','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',465,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-7bdf-8cb6-3a7b40df2afe'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeConsulta TO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800053,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:14','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','1','3.00',467,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d5-78ce-9d7c-51faaf050780'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800054,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:21','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',441,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7818-9c6b-c9bcbb876400'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AL ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800055,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:28','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',442,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7422-a246-a7873cf86e83'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AM ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800056,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:35','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',444,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7b92-8b4d-7e6bd2da8226'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800057,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:42','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',443,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-76e6-9884-4a6b3b427383'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc BA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800058,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:49','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',445,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-71c9-86f2-542a6fb5d30c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc CE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800059,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:07:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:07:56','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',446,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7c78-aad4-3e07f6c86dbc'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc DF ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800060,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:03','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',447,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7736-a7b3-bc22c6e930a6'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc ES ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800061,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:10','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',448,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-731c-82a0-ecb7ddd42c7b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc GO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800062,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:17','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',449,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-73f3-901c-78c19b9ff28c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800063,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:24','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',450,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7c47-b905-b1d1ee5bed98'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MG ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800064,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:31','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',453,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-74d3-a623-703fddcd79b8'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800065,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:38','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',452,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7b8d-9b7f-9ddf777a6dcf'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MT ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800066,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:45','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',451,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7b8f-bef0-0f543fbfd00b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800067,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:52','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',454,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7cc1-8fba-30287c1a2632'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PB ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800068,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:08:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:08:59','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',455,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-79c5-8c73-5febfc4280ab'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800069,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:06','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',457,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7cf6-a30c-30aacadefaf5'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PI ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800070,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:13','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',458,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-71c3-b02d-19d12639e3e6'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800071,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:20','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',456,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7426-8b64-d3abe4f81a61'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RJ ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800072,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:27','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',459,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7435-8d8f-91e95e45e318'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RN ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800073,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:34','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',460,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-77c0-8329-317e892007ab'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800074,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:41','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',462,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7176-b2c8-dc4385aa4368'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800075,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:48','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',463,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7698-b754-51694bbe31a4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800076,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:09:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:09:55','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',461,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7bd5-867b-5e90387d3ab8'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc SC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800077,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:02','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',464,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7501-9c3f-237ac0d30dc5'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc SE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800078,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:09','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',466,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7436-87b1-846299b645b4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc SP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800079,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:16','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',465,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-7d1d-944d-3676ba4256c9'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc TO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800080,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:23','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','1','3.00',467,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d5-726d-a86a-7a60919cc9b0'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800081,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:30','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',441,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-747f-8050-abe4cca4a957'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AL ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800082,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:37','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',442,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7eb1-a12a-f4b3edc6ae6b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AM ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800083,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:44','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',444,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7f5b-a231-1faff9497b2c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800084,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:51','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',443,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-72b8-89a9-398eaea10904'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeStatusServico BA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800085,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:10:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:10:58','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',445,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7145-b6e7-31dd8cb18197'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeStatusServico CE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800086,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:05','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',446,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-75df-ad12-2de5465fbde5'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeStatusServico DF ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800087,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:12','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',447,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-799c-8c41-a8db0093b6d9'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeStatusServico ES ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800088,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:19','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',448,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-79e3-b33f-e0565ebdc81b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeStatusServico GO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800089,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:26','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',449,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7466-aad9-eaa662f77b1f'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800090,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:33','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',450,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7132-82a9-aca8b1d9c230'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MG ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800091,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:40','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',453,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-784b-9c65-e661b01b5921'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800092,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:47','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',452,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-743a-a7ae-a1784f86a2dc'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MT ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800093,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:11:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:11:54','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',451,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7ae7-b44d-0a0103bec84a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800094,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:01','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',454,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-772a-a879-6e8891570762'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PB ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800095,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:08','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',455,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-789b-8689-aa9c510e8e42'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800096,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:15','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',457,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-70ac-bb03-9058a8a13858'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PI ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800097,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:22','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',458,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-725e-97a0-faebda007c3a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800098,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:29','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',456,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7407-90cf-bc8ed9384139'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RJ ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800099,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:36','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',459,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7038-b056-f8e8a7949dbf'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RN ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800100,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:43','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',460,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7f53-935a-4dec0f05a70a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800101,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:50','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',462,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-79b4-8488-8ce1d1f3c1b9'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800102,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:12:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:12:57','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',463,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-78fa-816c-2002279d5684'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800103,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:04','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',461,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7345-8ee6-4f8e8dd16fc4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeStatusServico SC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800104,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:11','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',464,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7327-a1eb-82056c45a791'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeStatusServico SE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800105,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:18','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',466,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-781a-a0ff-754ebe4a4e7c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeStatusServico SP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800106,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:25','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',465,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-7f31-a6ee-a4d38fadc0ed'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeStatusServico TO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800107,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:32','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','1','3.00',467,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d5-76fa-b0a0-94c66eb20299'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800108,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:39','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',441,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-78e7-b4f1-5c52fe56ed8f'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AL ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800109,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:46','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',442,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-77fd-87fa-373acd80a418'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AM ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800110,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:13:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:13:53','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',444,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-76d4-b0bd-a424604e59c4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800111,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:00','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',443,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-7e8e-937d-dab1f4522b10'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento BA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800112,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:07','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',445,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-76cf-af0c-89591761739c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento CE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800113,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:14','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',446,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-74f6-905c-935e4ddb4856'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento DF ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800114,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:21','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',447,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-7ce4-b43e-0b316a0c1e03'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento ES ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800115,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:28','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',448,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d5-73fd-b9b6-22072138b894'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento GO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800116,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:35','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',449,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7228-a818-cde7021a0b74'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800117,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:42','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',450,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7574-947b-496076141f19'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MG ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800118,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:49','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',453,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7ae6-b89c-bfc515f53110'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800119,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:14:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:14:56','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',452,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-797e-a0a8-d03b33597bc0'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MT ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800120,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:03','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',451,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-746f-bcb1-8e2833e397bb'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PA ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800121,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:10','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',454,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-72cf-945c-595186b3d862'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PB ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800122,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:17','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',455,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7a45-95b2-965506aa0056'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800123,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:24','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',457,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7220-ae6e-3793c811d20c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PI ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800124,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:31','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',458,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7b11-b580-07c5b4354b53'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800125,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:38','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',456,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-79ba-b092-e11759869ab3'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RJ ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800126,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:45','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',459,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-77e5-95ba-87e1b6bcf6b2'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RN ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800127,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:52','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',460,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-738f-a0f6-4e9029fe0126'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800128,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:15:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:15:59','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',462,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-752b-bdef-08139f0d9b64'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RR ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800129,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:06','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',463,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7703-b135-cb778efc8773'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RS ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800130,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:13','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',461,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7306-8249-756f70c93c62'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento SC ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800131,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:20','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',464,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7d34-a032-5bdf1cc78ffc'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento SE ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800132,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:27','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',466,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7608-a11f-4e83f46a6293'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento SP ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800133,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:34','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',465,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7f6a-9873-6aa135d68885'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento TO ambiente 1

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800134,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:41','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','1','3.00',467,'58','https://mdfe.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d6-7510-971c-6b4c2371cd06'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='1' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc AC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800135,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:48','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',441,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7312-84b7-df75cf8d9b3e'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc AL ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800136,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:16:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:16:55','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',442,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7c0d-a3cb-04dbae8db03a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc AM ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800137,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:02','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',444,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-789c-b594-9c01fa2ce2e7'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc AP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800138,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:09','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',443,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-724a-b718-c23dbf47de47'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc BA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800139,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:16','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',445,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-788d-8ab2-ab29960eedf2'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc CE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800140,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:23','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',446,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7f05-9c35-b8cecb5e4fbf'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc DF ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800141,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:30','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',447,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7efc-8859-be8411c68143'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc ES ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800142,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:37','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',448,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-73d9-98c3-54d16fe06015'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc GO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800143,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:44','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',449,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7cbd-ad23-1d81b1bab9d0'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800144,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:51','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',450,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7116-9a2e-472ae5318327'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MG ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800145,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:17:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:17:58','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',453,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-74f1-9b0a-ebaa5f54e5c0'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800146,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:05','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',452,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7de7-a68d-f0f6de8afba4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc MT ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800147,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:12','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',451,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7b1f-86ca-1794e447b669'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800148,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:19','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',454,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7202-ad02-794d5aedf4cf'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PB ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800149,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:26','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',455,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7397-9370-8788a73f6889'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800150,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:33','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',457,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-713d-b226-509c94378b10'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PI ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800151,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:40','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',458,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-732a-a264-c1e92ba07943'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc PR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800152,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:47','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',456,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7704-be25-b18fada0789f'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RJ ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800153,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:18:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:18:54','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',459,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7541-9752-b35ff0fe393f'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RN ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800154,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:01','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',460,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-74be-ae20-65250a7a0b9a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800155,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:08','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',462,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7ac6-8988-df64ac02ff44'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800156,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:15','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',463,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-74e2-aae6-ff776ea72f86'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc RS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800157,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:22','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',461,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7435-a24c-ad46ca6e499c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc SC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800158,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',464,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7eda-b658-361b9e5e90cb'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc SE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800159,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:36','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',466,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-76c0-90e7-eed4f29f33d6'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc SP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800160,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:43','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',465,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-7bb5-a4ce-c6d6effeb0e0'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoSinc TO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800161,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:50','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoSinc','2','3.00',467,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoSinc/MDFeRecepcaoSinc.asmx','01a082c6-f5d6-72db-9a09-5bff8fe5930b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoSinc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeConsulta AC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800162,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:19:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:19:57','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',441,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-73f7-acc3-5d6b971ff57a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeConsulta AL ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800163,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:04','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',442,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7f01-9e76-f9c6cb325dcb'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeConsulta AM ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800164,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',444,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7f30-bb00-e5cf8cf37adc'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeConsulta AP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800165,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:18','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',443,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7e13-9ed2-27060ed2db13'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeConsulta BA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800166,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:25','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',445,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7d25-bcc8-6e360a4a26ea'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeConsulta CE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800167,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:32','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',446,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-71cc-aa07-3aa672ecba95'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeConsulta DF ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800168,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:39','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',447,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7d7c-9ea6-0a0d99468c8b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeConsulta ES ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800169,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:46','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',448,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7d11-8c6f-8d79a5dd3c82'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeConsulta GO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800170,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:20:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:20:53','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',449,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-773f-8ee7-7c0ab9614a01'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeConsulta MA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800171,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:00','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',450,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7947-9b22-51dfa0ecde9d'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeConsulta MG ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800172,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:07','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',453,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-78f4-89f2-013ef695d2ae'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeConsulta MS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800173,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:14','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',452,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7601-b8ce-e1676639693e'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeConsulta MT ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800174,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:21','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',451,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7869-8782-d7058fed03f6'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeConsulta PA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800175,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:28','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',454,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7b09-89a8-cb89740fcdf7'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeConsulta PB ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800176,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:35','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',455,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7d1e-8e9a-f3731ad1feae'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeConsulta PE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800177,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:42','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',457,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7974-8630-f1c597b403a3'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeConsulta PI ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800178,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:49','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',458,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-770a-bb36-143548b3a9d2'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeConsulta PR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800179,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:21:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:21:56','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',456,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7e3e-8654-c5648f8f7f1d'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeConsulta RJ ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800180,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:03','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',459,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7319-bc2b-132b90bd7d46'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeConsulta RN ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800181,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:10','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',460,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7fde-bb6e-2f529d004b15'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeConsulta RO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800182,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:17','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',462,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7cb8-b737-e68a22940b28'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeConsulta RR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800183,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:24','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',463,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7de0-99ff-707d29cb3f64'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeConsulta RS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800184,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:31','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',461,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7eb1-9ad6-62f071d0362a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeConsulta SC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800185,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:38','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',464,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7da5-bf7a-87eb47ccdaae'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeConsulta SE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800186,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:45','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',466,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-79e8-81cd-5ca1d226a91b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeConsulta SP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800187,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:52','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',465,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-751d-b163-4a5e0f064b25'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeConsulta TO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800188,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:22:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:22:59','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsulta','2','3.00',467,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsulta/MDFeConsulta.asmx','01a082c6-f5d6-7cda-bf61-3e90b8e00f92'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsulta') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800189,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:06','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',441,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d6-7e17-b120-3c2c3e90c3a2'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AL ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800190,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:13','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',442,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d6-7de4-8ae0-22f92a1ddaa4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AM ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800191,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:20','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',444,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d6-7c0f-9487-3a3e99188bb9'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc AP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800192,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:27','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',443,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d6-7392-a16f-2e408855d921'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc BA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800193,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:34','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',445,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7303-845e-5cadfcdeaa75'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc CE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800194,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:41','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',446,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7257-87ea-d4c8527656c4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc DF ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800195,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:48','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',447,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7fe3-a622-9fe18d6b3f91'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc ES ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800196,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:23:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:23:55','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',448,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7160-bab5-86cd3df940fd'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc GO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800197,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:02','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',449,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7f64-8dc2-9afc0a5bfb4f'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800198,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:09','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',450,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-706f-a568-b230503eeb5b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MG ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800199,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:16','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',453,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7a2f-bb91-91e3aae256e3'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800200,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:23','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',452,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7a48-bbe4-7cc10d1a929f'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc MT ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800201,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:30','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',451,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-71c1-baca-72226b31e090'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800202,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:37','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',454,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7bb0-ada6-02619a53e1e7'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PB ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800203,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:44','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',455,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7bc9-9e8b-6cfd96442fad'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800204,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:51','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',457,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7137-b285-df304b4a774d'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PI ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800205,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:24:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:24:58','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',458,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-789b-bb64-088f89d8f456'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc PR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800206,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:05','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',456,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7646-b592-5bdbdaa3d513'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RJ ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800207,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:12','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',459,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-73e3-b17d-0cc18e1b6c20'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RN ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800208,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:19','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',460,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-725f-9f38-cb7eb4ce9f5e'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800209,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:26','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',462,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7c05-be2c-1d195a3dc426'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800210,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:33','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',463,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-70d4-9adb-fc5de7b965e8'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc RS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800211,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:40','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',461,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7028-b61d-0ab174a38fd5'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc SC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800212,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:47','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',464,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7bf3-a6a1-674fe07958f7'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc SE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800213,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:25:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:25:54','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',466,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7a82-be0a-559281c19111'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc SP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800214,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:01','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',465,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7091-a49b-1311f7ba8668'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeConsNaoEnc TO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800215,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:08','YYYY-MM-DD HH24:MI:SS'),100,'MDFeConsNaoEnc','2','3.00',467,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeConsNaoEnc/MDFeConsNaoEnc.asmx','01a082c6-f5d7-7bd2-857a-92a50e52d01a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeConsNaoEnc') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800216,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:15','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',441,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7f0d-96c1-0ca94686771a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AL ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800217,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:22','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',442,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7900-aff8-77825f4ea0c3'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AM ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800218,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:29','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',444,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7458-aed5-068fdff901f5'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeStatusServico AP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800219,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:36','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',443,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7e62-957b-00425c974abc'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeStatusServico BA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800220,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:43','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',445,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-73bf-b7fb-36aef00c5b51'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeStatusServico CE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800221,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:50','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',446,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7140-bd66-1e7084d93192'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeStatusServico DF ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800222,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:26:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:26:57','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',447,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7ac0-a86b-15c096b0c1f3'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeStatusServico ES ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800223,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:04','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',448,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7289-b6e0-4d89cff9bd8d'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeStatusServico GO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800224,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:11','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',449,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7115-9ee0-ce41e2c5c360'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800225,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:18','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',450,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-74a8-8d54-1d2711a96f87'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MG ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800226,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:25','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',453,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7828-90ff-3ffb7ab885e3'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800227,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:32','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',452,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7cad-ac93-49810bb7c198'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeStatusServico MT ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800228,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:39','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',451,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-726d-a02c-2d747377ee0b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800229,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:46','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',454,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7258-969c-9249dcd0d6dc'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PB ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800230,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:27:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:27:53','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',455,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-70d7-8b76-4f15caf74322'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800231,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:00','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',457,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7bb0-a467-ff36326d13c0'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PI ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800232,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:07','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',458,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7697-b3d4-89469a341b33'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeStatusServico PR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800233,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:14','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',456,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-757c-9a2e-e1b1802ce865'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RJ ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800234,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:21','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',459,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-79c1-9761-108ef950d36c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RN ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800235,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:28','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',460,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7259-912c-043b970906e9'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800236,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:35','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',462,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7355-a83e-83fbc6da6d2c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800237,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:42','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',463,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7700-a39d-877063fcb525'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeStatusServico RS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800238,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:49','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',461,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7d67-b3e6-fc12393147be'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeStatusServico SC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800239,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:28:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:28:56','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',464,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-736f-ada2-cb62f8725e9a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeStatusServico SE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800240,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:03','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',466,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7ae1-b121-95f6ded90dbd'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeStatusServico SP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800241,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:10','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',465,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7e23-8e1c-8fb3bc9a0f97'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeStatusServico TO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800242,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:17','YYYY-MM-DD HH24:MI:SS'),100,'MDFeStatusServico','2','3.00',467,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeStatusServico/MDFeStatusServico.asmx','01a082c6-f5d7-7578-91cb-3c7eea76c70e'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeStatusServico') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800243,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:24','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',441,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-74f3-95ac-bbc58d194264'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=441 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AL ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800244,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:31','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',442,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7d9e-9099-793e57acf22b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=442 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AM ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800245,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:38','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',444,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7b89-8f4b-6f914fb05206'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=444 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento AP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800246,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',443,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7dc7-b228-fec549dbec68'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=443 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento BA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800247,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:52','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',445,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7698-8b6e-27fbeeec7bd9'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=445 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento CE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800248,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:29:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:29:59','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',446,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-762d-994a-b8c4be384162'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=446 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento DF ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800249,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:06','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',447,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-72d1-9be2-39f2bced4edf'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=447 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento ES ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800250,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:13','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',448,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7912-9a4e-328785db50df'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=448 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento GO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800251,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:20','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',449,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-72cc-a6c4-ea98116c9db1'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=449 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800252,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:27','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',450,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7435-a760-481c7f11d63a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=450 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MG ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800253,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:34','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',453,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7fd8-9631-ee2e002e6e5c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=453 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800254,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:41','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',452,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7937-bd8a-833248fe17c8'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=452 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento MT ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800255,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:48','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',451,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-726b-8576-2a38ee8b50ad'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=451 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PA ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800256,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:30:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:30:55','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',454,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-791e-9bce-adead289c487'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=454 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PB ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800257,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:02','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',455,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-77e3-882d-6fef86339254'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=455 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800258,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:09','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',457,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7620-9ad8-ab3fb1e1f4cd'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=457 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PI ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800259,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:16','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',458,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-779f-943f-2e227beaf45b'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=458 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento PR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800260,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:23','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',456,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7b08-a41f-5c5ce530f4ae'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=456 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RJ ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800261,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:30','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',459,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7c8f-b9cd-72d72742494c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=459 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RN ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800262,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:37','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',460,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-740f-bc02-8d2b3a969609'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=460 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800263,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:44','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',462,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7f7a-8b45-b8acb33b36b4'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=462 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RR ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800264,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:51','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',463,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7710-accd-4b56ae0cfa70'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=463 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento RS ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800265,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:31:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:31:58','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',461,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-73d0-8850-cbd2817af16c'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=461 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento SC ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800266,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:05','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',464,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7c21-8cf5-7002930fa246'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=464 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento SE ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800267,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:12','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',466,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7152-b243-771eadfe7645'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=466 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento SP ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800268,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:19','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',465,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-7852-886a-c14db29516f2'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=465 AND LBR_NFeModel='58')
;

-- MDFeRecepcaoEvento TO ambiente 2

INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_NFeEnv,VersionNo,C_Region_ID,LBR_NFeModel,URL,LBR_NFeWebService_UU)
SELECT 800269,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:26','YYYY-MM-DD HH24:MI:SS'),100,'MDFeRecepcaoEvento','2','3.00',467,'58','https://mdfe-homologacao.svrs.rs.gov.br/ws/MDFeRecepcaoEvento/MDFeRecepcaoEvento.asmx','01a082c6-f5d7-758b-8946-fe39f9c3a90a'
 WHERE NOT EXISTS (SELECT 1 FROM LBR_NFeWebService WHERE UPPER(Name)=UPPER('MDFeRecepcaoEvento') AND LBR_NFeEnv='2' AND VersionNo='3.00' AND C_Region_ID=467 AND LBR_NFeModel='58')
;
