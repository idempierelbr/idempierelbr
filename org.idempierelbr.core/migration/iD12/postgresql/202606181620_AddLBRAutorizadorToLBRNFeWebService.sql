-- Add LBR_Autorizador to table LBR_NFeWebService
SELECT register_migration_script('202606181620_AddLBRAutorizadorToLBRNFeWebService.sql') FROM dual;

-- 18 de jun. de 2026 16:20:08 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (901528,0,0,'Y',TO_TIMESTAMP('2026-06-18 16:20:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:20:08','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Autorizador','LBR_Autorizador','Autorizador para contingência: AN=SVC-AN, RS=SVC-RS, null=autorizador primário do contrato','LBR_Autorizador','LBR','598e2f8d-317c-496c-b6c2-452a4c6f97e3')
;

-- 18 de jun. de 2026 16:21:13 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (900155,'LBR_Autorizador_NFe','L',0,0,'Y',TO_TIMESTAMP('2026-06-18 16:21:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:21:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','b2bdffbf-02d2-4699-ab4e-976bb1e92252','N')
;

-- 18 de jun. de 2026 16:21:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (900537,'SVC-AN (Ambiente Nacional)',900155,'AN',0,0,'Y',TO_TIMESTAMP('2026-06-18 16:21:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:21:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR','1fafac17-37de-4ce2-b9bb-70c945cfa8d4')
;

-- 18 de jun. de 2026 16:21:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (900538,'SVC-RS (SEFAZ-RS)',900155,'RS',0,0,'Y',TO_TIMESTAMP('2026-06-18 16:21:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:21:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','f7c0eea1-debf-4e58-b47d-519f00dcc82f')
;

-- 18 de jun. de 2026 16:22:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (908748,0,'LBR_Autorizador','Autorizador para contingência: AN=SVC-AN, RS=SVC-RS, null=autorizador primário do contrato',toRecordId('AD_Table','465b9a73-c288-416a-b3ee-d537bfdfbf7f'),'LBR_Autorizador',2,'N','N','N','N','N',0,'N',17,900155,0,0,'Y',TO_TIMESTAMP('2026-06-18 16:22:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:19','YYYY-MM-DD HH24:MI:SS'),10,901528,'Y','N','LBR','N','N','N','Y','0e7d8dd2-2e68-45ec-815a-3406fc6c6bc9','Y',0,'N','N','N','N')
;

-- 18 de jun. de 2026 16:22:26 BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN LBR_Autorizador VARCHAR(2) DEFAULT NULL
;

-- 18 de jun. de 2026 16:22:27 BRT
-- Seed data: SVC-AN and SVC-RS contingency endpoints for NFeAutorizacao and NFeRetAutorizacao.
-- C_Region_ID IS NULL: national contingency endpoints, not tied to a specific state.
-- SVC-AN URLs updated per SEFAZ NT: hom unified Jul/2024, prod unified Feb/2025.
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000100,'c8bbbd7d-d1c6-49d1-8ad6-efa68b3d4b17','Y','NFeAutorizacao','4.00','1',NULL,'AN','https://www.sefazvirtual.fazenda.gov.br/NFeAutorizacao4/NFeAutorizacao4.asmx')
;
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000101,'4757bee0-28be-421b-81d8-d3aac6f316cc','Y','NFeRetAutorizacao','4.00','1',NULL,'AN','https://www.sefazvirtual.fazenda.gov.br/NFeRetAutorizacao4/NFeRetAutorizacao4.asmx')
;
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000102,'04e3ffbb-defd-4724-83a4-30342bb47822','Y','NFeAutorizacao','4.00','2',NULL,'AN','https://hom.sefazvirtual.fazenda.gov.br/NFeAutorizacao4/NFeAutorizacao4.asmx')
;
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000103,'de79a535-eadf-4148-a099-49c47ee8cab4','Y','NFeRetAutorizacao','4.00','2',NULL,'AN','https://hom.sefazvirtual.fazenda.gov.br/NFeRetAutorizacao4/NFeRetAutorizacao4.asmx')
;
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000104,'aee53cc9-daa8-448e-a1c1-9cc4908f8dc9','Y','NFeAutorizacao','4.00','1',NULL,'RS','https://nfe.svrs.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao4.asmx')
;
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000105,'df73828a-319c-4264-a747-2233377702d3','Y','NFeRetAutorizacao','4.00','1',NULL,'RS','https://nfe.svrs.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao4.asmx')
;
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000106,'7faac16c-7b8b-49af-95f4-ce86686d6682','Y','NFeAutorizacao','4.00','2',NULL,'RS','https://nfe-homologacao.svrs.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao4.asmx')
;
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,LBR_Autorizador,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-18 16:22:27','YYYY-MM-DD HH24:MI:SS'),10,1000107,'f9f95b29-e933-484c-a1d1-48219a8abab1','Y','NFeRetAutorizacao','4.00','2',NULL,'RS','https://nfe-homologacao.svrs.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao4.asmx')
;
