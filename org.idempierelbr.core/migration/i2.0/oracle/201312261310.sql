SET SQLBLANKLINES ON
SET DEFINE OFF

-- 26/12/2013 12h7min35s BRST
-- Cria colunas para informações brasileiras na tabela Parceiro de Negócios
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_BPTypeBR',1000003,'Used to identify if the Business Partner is a Legal Entity or an Individual','Brazilian BP Type','Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)','Brazilian BP Type','4e48f0ae-f231-4474-aa5d-5898c94710d1',TO_DATE('2013-12-26 12:07:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 12:07:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 12h10min7s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000001,'BPTypeBR','LBR','fe53d05c-7f27-42db-9d41-fc3204c4c356','N','L',0,0,TO_DATE('2013-12-26 12:10:07','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2013-12-26 12:10:07','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 26/12/2013 12h11min28s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000001,1000001,'PF - Individual','1657b9f4-e504-49fb-be2c-57b2c99b5ff8','PF',TO_DATE('2013-12-26 12:11:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 12:11:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- 26/12/2013 12h12min15s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000002,1000001,'PJ - Legal Entity','2e1004df-53fb-4894-9ef5-f1d6bd191b1a','PJ',TO_DATE('2013-12-26 12:12:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 12:12:15','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- 26/12/2013 12h14min25s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000003,'N','N','N',0,'N',2,'N','N','@LBR_BPTypeBRIsValid=''Y''','N','Y','ea706c98-37a4-4a65-8edd-dbe125da21d1','Y','LBR_BPTypeBR','Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)','Used to identify if the Business Partner is a Legal Entity or an Individual','Brazilian BP Type','Y',TO_DATE('2013-12-26 12:14:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 12:14:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000003,17,1000001,291,0,'LBR')
;

-- 26/12/2013 12h14min36s BRST
ALTER TABLE C_BPartner ADD LBR_BPTypeBR NVARCHAR2(2)
;

-- 26/12/2013 12h16min35s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CNPJ',1000004,'Used to identify Legal Entities in Brazil','CNPJ','Used to identify Legal Entities in Brazil','CNPJ','acb70ad7-190d-413e-b5f5-7ae0ce18ad84',TO_DATE('2013-12-26 12:16:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 12:16:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 12h23min31s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000004,'Y','N','N',0,'N',14,'N','N','@LBR_BPTypeBRIsValid=''Y''','N','Y','72029578-699f-4967-b7d6-8749362ff696','Y','LBR_CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil','CNPJ','N',TO_DATE('2013-12-26 12:23:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 12:23:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000004,10,291,0,'LBR')
;

-- 26/12/2013 12h23min50s BRST
ALTER TABLE C_BPartner ADD LBR_CNPJ NVARCHAR2(14)
;

-- 26/12/2013 13h16min46s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CPF',1000005,'Used to identify individuals in Brazil','CPF','Used to identify individuals in Brazil','CPF','0645ae9b-9017-4eaf-9683-9c02fc1b0bb8',TO_DATE('2013-12-26 13:16:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 13:16:46','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 13h20min21s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,VFormat,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000005,'N','N','N',0,'N',11,'N','N','@LBR_BPTypeBRIsValid=''Y''','N','Y','b2f6a2af-cd0b-4cd7-91ca-ca13af37faa4','Y','LBR_CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil','CPF','N',TO_DATE('2013-12-26 13:20:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 13:20:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'','N','N','N',1000005,10,291,0,'LBR')
;

-- 26/12/2013 13h20min31s BRST
ALTER TABLE C_BPartner ADD LBR_CPF NVARCHAR2(11) DEFAULT NULL 
;

-- 26/12/2013 13h20min36s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-12-26 13:20:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000005
;

-- 26/12/2013 13h25min30s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_RG',1000006,'RG','RG','c1fb1310-d113-40bd-b686-bce743aa37a0',TO_DATE('2013-12-26 13:25:29','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 13:25:29','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 13h26min30s BRST
UPDATE AD_Element SET Help='Used to identify individuals in Brazil', Description='Used to identify individuals in Brazil',Updated=TO_DATE('2013-12-26 13:26:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000006
;

-- 26/12/2013 13h26min30s BRST
UPDATE AD_Column SET ColumnName='LBR_RG', Name='RG', Description='Used to identify individuals in Brazil', Help='Used to identify individuals in Brazil' WHERE AD_Element_ID=1000006
;

-- 26/12/2013 13h26min31s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_RG', Name='RG', Description='Used to identify individuals in Brazil', Help='Used to identify individuals in Brazil', AD_Element_ID=1000006 WHERE UPPER(ColumnName)='LBR_RG' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/12/2013 13h26min31s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_RG', Name='RG', Description='Used to identify individuals in Brazil', Help='Used to identify individuals in Brazil' WHERE AD_Element_ID=1000006 AND IsCentrallyMaintained='Y'
;

-- 26/12/2013 13h26min31s BRST
UPDATE AD_InfoColumn SET ColumnName='LBR_RG', Name='RG', Description='Used to identify individuals in Brazil', Help='Used to identify individuals in Brazil' WHERE AD_Element_ID=1000006 AND IsCentrallyMaintained='Y'
;

-- 26/12/2013 13h26min31s BRST
UPDATE AD_Field SET Name='RG', Description='Used to identify individuals in Brazil', Help='Used to identify individuals in Brazil' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000006) AND IsCentrallyMaintained='Y'
;

-- 26/12/2013 13h27min12s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000006,'N','N','N',0,'N',30,'N','N','N','Y','7ab8f61f-e713-42ec-9d8a-c09e0c176539','Y','LBR_RG','Used to identify individuals in Brazil','Used to identify individuals in Brazil','RG','Y',TO_DATE('2013-12-26 13:27:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 13:27:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000006,10,291,0,'LBR')
;

-- 26/12/2013 13h27min21s BRST
ALTER TABLE C_BPartner ADD LBR_RG NVARCHAR2(30) DEFAULT NULL 
;

-- 26/12/2013 13h28min30s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CCM',1000007,'City Identification Code used in Brazil (City Tax ID)','CCM','City Identification Code used in Brazil (City Tax ID)','CCM','1f3b3daa-ad9f-4637-a7af-58b5ab34aa12',TO_DATE('2013-12-26 13:28:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 13:28:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 13h29min36s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000007,'N','N','N',0,'N',30,'N','N','N','Y','60f2763e-46ab-470c-a13e-4476115bb1c0','Y','LBR_CCM','City Identification Code used in Brazil (City Tax ID)','City Identification Code used in Brazil (City Tax ID)','CCM','Y',TO_DATE('2013-12-26 13:29:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 13:29:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000007,10,291,0,'LBR')
;

-- 26/12/2013 13h29min38s BRST
ALTER TABLE C_BPartner ADD LBR_CCM NVARCHAR2(30) DEFAULT NULL 
;

-- 26/12/2013 13h30min31s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Suframa',1000008,'Brazilian SUFRAMA Identification Number','Suframa','Brazilian SUFRAMA Identification Number','Suframa','6ec9e358-7134-4f30-b3fc-3dc63f30ce78',TO_DATE('2013-12-26 13:30:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 13:30:31','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 13h31min30s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000008,'N','N','N',0,'N',30,'N','N','N','Y','1e14df7c-17f9-4200-b6b5-a4054bb9b338','Y','LBR_Suframa','Brazilian SUFRAMA Identification Number','Brazilian SUFRAMA Identification Number','Suframa','Y',TO_DATE('2013-12-26 13:31:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 13:31:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000008,10,291,0,'LBR')
;

-- 26/12/2013 13h31min32s BRST
ALTER TABLE C_BPartner ADD LBR_Suframa NVARCHAR2(30) DEFAULT NULL 
;

-- 26/12/2013 13h32min30s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_IE',1000009,'Used to identify the IE (State Tax ID)','IE','Used to identify the IE (State Tax ID)','IE','5be6d64d-56f7-4b9b-b6a3-d8433f724076',TO_DATE('2013-12-26 13:32:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 13:32:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 13h33min20s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000009,'N','N','N',0,'N',30,'N','N','N','Y','8398b145-4040-4723-9d28-d2a3594b20a2','Y','LBR_IE','Used to identify the IE (State Tax ID)','Used to identify the IE (State Tax ID)','IE','Y',TO_DATE('2013-12-26 13:33:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 13:33:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000009,10,291,0,'LBR')
;

-- 26/12/2013 13h33min22s BRST
ALTER TABLE C_BPartner ADD LBR_IE NVARCHAR2(30) DEFAULT NULL 
;

-- 26/12/2013 13h39min7s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_IsIEExempt',1000010,'Business Partner is IE Exempt','IE Exempt','Business Partner is IE Exempt','IE Exempt','f58346e9-043a-4da7-9bbb-85b20af37286',TO_DATE('2013-12-26 13:39:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 13:39:07','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 13h41min2s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000010,'N','N','N',0,'N',1,'N','N','N','Y','458db486-7e2a-4893-8a64-dd92b89dd523','Y','LBR_IsIEExempt','Business Partner is IE Exempt','''N''','Business Partner is IE Exempt','IE Exempt','Y',TO_DATE('2013-12-26 13:41:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 13:41:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000010,20,291,0,'LBR')
;

-- 26/12/2013 13h41min5s BRST
ALTER TABLE C_BPartner ADD LBR_IsIEExempt CHAR(1) DEFAULT 'N' CHECK (LBR_IsIEExempt IN ('Y','N'))
;

-- 26/12/2013 13h41min10s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-12-26 13:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000010
;

-- 26/12/2013 13h43min11s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_BPTypeBRIsValid',1000011,'Indicates the CNPJ/CPF is valid and there are no duplicates in DB. It''s not possible to change CNPJ/CPF after validation','Brazilian BP Valid','Brazilian BP is Valid','Brazilian BP Valid','f70ce468-0375-4558-9bc7-133b0090e7ee',TO_DATE('2013-12-26 13:43:11','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-26 13:43:11','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 26/12/2013 13h44min30s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000011,'N','N','N',0,'N',1,'N','N','N','Y','3ee953a7-2951-4b94-95eb-be33188fc719','Y','LBR_BPTypeBRIsValid','Brazilian BP is Valid','''N''','Indicates the CNPJ/CPF is valid and there are no duplicates in DB. It''s not possible to change CNPJ/CPF after validation','Brazilian BP Valid','Y',TO_DATE('2013-12-26 13:44:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2013-12-26 13:44:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000011,20,291,0,'LBR')
;

-- 26/12/2013 13h44min37s BRST
ALTER TABLE C_BPartner ADD LBR_BPTypeBRIsValid CHAR(1) DEFAULT 'N' CHECK (LBR_BPTypeBRIsValid IN ('Y','N'))
;

-- 26/12/2013 13h44min51s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-12-26 13:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000011
;

-- 26/12/2013 13h56min36s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',630,'Y',1000003,'N','Used to identify if the Business Partner is a Legal Entity or an Individual','','LBR','Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)','Brazilian BP Type','93890b86-57e5-4282-8fe2-b1a1993d1a0e','N','Y',0,0,TO_DATE('2013-12-26 13:56:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 13:56:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',360,1,'N',0,1,1,'N','N',1000003)
;

-- 26/12/2013 14h0min50s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',640,'Y',1000004,'N','Used to identify Legal Entities in Brazil','@LBR_BPTypeBR@=''PJ''','LBR','Used to identify Legal Entities in Brazil','CNPJ','b41f35a8-7de8-422f-a124-ae67008e5870','N','Y',0,0,TO_DATE('2013-12-26 14:00:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:00:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',370,1,'N',0,1,1,'N','N',1000004)
;

-- 26/12/2013 14h1min56s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',650,'Y',1000005,'N','Used to identify individuals in Brazil','@LBR_BPTypeBR@=''PF''','LBR','Used to identify individuals in Brazil','CPF','7aa4ee8f-0a2d-4862-b150-831474835dc9','N','Y',0,0,TO_DATE('2013-12-26 14:01:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:01:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',380,1,'N',0,1,1,'N','N',1000005)
;

-- 26/12/2013 14h3min5s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',660,'Y',1000006,'N','Used to identify individuals in Brazil','@LBR_BPTypeBR@=''PF''','LBR','Used to identify individuals in Brazil','RG','3f131843-4cb4-4950-b0b6-dd1edf4934ef','N','Y',0,0,TO_DATE('2013-12-26 14:03:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:03:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',390,1,'N',0,1,1,'N','N',1000006)
;

-- 26/12/2013 14h5min27s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',670,'Y',1000007,'N','City Identification Code used in Brazil (City Tax ID)','@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@!''Y''','LBR','City Identification Code used in Brazil (City Tax ID)','CCM','ddcfa8bb-4c80-4460-a141-0d5447a5d29b','N','Y',0,0,TO_DATE('2013-12-26 14:05:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:05:26','YYYY-MM-DD HH24:MI:SS'),'Y','Y',400,1,'N',0,1,1,'N','N',1000007)
;

-- 26/12/2013 14h6min10s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',680,'Y',1000008,'N','Brazilian SUFRAMA Identification Number','@LBR_BPTypeBR@=''PJ''','LBR','Brazilian SUFRAMA Identification Number','Suframa','0976d31b-a50b-4aab-a240-59e138d9afba','N','Y',0,0,TO_DATE('2013-12-26 14:06:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:06:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',410,1,'N',0,1,1,'N','N',1000008)
;

-- 26/12/2013 14h8min11s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',690,'Y',1000009,'N','Used to identify the IE (State Tax ID)','@LBR_BPTypeBR@=''PJ'' | @LBR_BPTypeBR@=''PF'' & @LBR_IsIEExempt@=''N'' & @#LBR_USE_UNIFIED_BP@!''Y''','LBR','Used to identify the IE (State Tax ID)','IE','7ea25abe-6d98-426d-bf5d-477ce797ffac','N','Y',0,0,TO_DATE('2013-12-26 14:08:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:08:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',420,1,'N',0,1,1,'N','N',1000009)
;

-- 26/12/2013 14h8min48s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',700,'Y',1000010,'N','Business Partner is IE Exempt','@LBR_BPTypeBR@=''PJ'' | @LBR_BPTypeBR@=''PF'' & @#LBR_USE_UNIFIED_BP@!''Y''','LBR','Business Partner is IE Exempt','IE Exempt','99641cb2-8588-4aaf-8972-af21a962069e','N','Y',0,0,TO_DATE('2013-12-26 14:08:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:08:48','YYYY-MM-DD HH24:MI:SS'),'Y','Y',430,1,'N',0,1,1,'N','N',1000010)
;

-- 26/12/2013 14h9min48s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',220,0,'N','N',710,'Y',1000011,'Y','Indicates the CNPJ/CPF is valid and there are no duplicates in DB. It''s not possible to change CNPJ/CPF after validation','@LBR_BPTypeBR@=''PJ'' | @LBR_BPTypeBR@=''PF''','LBR','Brazilian BP is Valid','Brazilian BP Valid','a5e6f7ab-6c00-4398-8123-07d3235fb5d9','N','Y',0,0,TO_DATE('2013-12-26 14:09:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-26 14:09:48','YYYY-MM-DD HH24:MI:SS'),'Y','Y',440,1,'N',0,1,1,'N','N',1000011)
;

-- Dec 26, 2013 4:06:33 PM BRST
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000011
;

-- Dec 26, 2013 4:06:33 PM BRST
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000004
;

-- Dec 26, 2013 4:06:33 PM BRST
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000007
;

-- Dec 26, 2013 4:06:33 PM BRST
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000008
;

-- Dec 26, 2013 4:06:33 PM BRST
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000005
;

-- Dec 26, 2013 4:06:33 PM BRST
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000006
;

-- Dec 26, 2013 4:06:33 PM BRST
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000009
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000003
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000011
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000004
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000007
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000008
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000005
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000006
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000010
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000009
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=2149
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=2162
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=9615
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=8238
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=54555
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=9606
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=10592
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=2155
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=9620
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=2160
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=57981
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=2164
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=2133
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=2141
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=2136
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=9600
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=9602
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=9624
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=9601
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=9612
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=9607
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=9622
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=9611
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=10470
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=9628
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=54556
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=9619
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=9610
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=9603
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=200622
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=9621
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=9608
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=201865
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=201866
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=9609
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=2124
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=3261
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=9604
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=9618
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=9625
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=9613
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=2154
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=2132
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=2144
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=2127
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=2146
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=2153
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=2148
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=2128
;

-- Dec 26, 2013 4:07:02 PM BRST
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=2135
;

-- Dec 26, 2013 4:07:33 PM BRST
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000003
;

-- Dec 26, 2013 4:07:59 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5, ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:07:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000011
;

-- Dec 26, 2013 4:08:17 PM BRST
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:08:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000004
;

-- Dec 26, 2013 4:08:33 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000007
;

-- Dec 26, 2013 4:08:47 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=7, ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:08:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000008
;

-- Dec 26, 2013 4:09:03 PM BRST
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:09:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000005
;

-- Dec 26, 2013 4:09:19 PM BRST
UPDATE AD_Field SET XPosition=4, ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:09:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000006
;

-- Dec 26, 2013 4:09:28 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-26 16:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000006
;

-- Dec 26, 2013 4:09:46 PM BRST
UPDATE AD_Field SET XPosition=2, ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:09:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000010
;

-- Dec 26, 2013 4:10:12 PM BRST
UPDATE AD_Field SET XPosition=4, ColumnSpan=2,Updated=TO_DATE('2013-12-26 16:10:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000009
;

-- Dec 26, 2013 4:13:28 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-12-26 16:13:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000009
;

SELECT lbr_register_migration_script('201312261310.sql') FROM dual
;
