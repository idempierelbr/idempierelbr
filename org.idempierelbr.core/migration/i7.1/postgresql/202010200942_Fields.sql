-- Fields
-- 20 de out de 2020 05:14:35 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801690,0,'NFe XML',1000049,'LBR_NFeXML_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:14:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:14:35','YYYY-MM-DD HH24:MI:SS'),0,800455,'N','N','LBR','N','N','@LBR_NFeEventType@=''MAN''','N','Y','83517802-f47d-45ce-831a-d58952aad67a','Y',0,'N','N','N','N')
;

-- 20 de out de 2020 05:14:38 PDT
UPDATE AD_Column SET FKConstraintName='LBRNFeXML_LBRNotaFiscalEventLi', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-20 05:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801690
;

-- 20 de out de 2020 05:14:38 PDT
ALTER TABLE LBR_NotaFiscalEventLine ADD COLUMN LBR_NFeXML_ID NUMERIC(10) DEFAULT NULL 
;

-- 20 de out de 2020 05:14:38 PDT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT LBRNFeXML_LBRNotaFiscalEventLi FOREIGN KEY (LBR_NFeXML_ID) REFERENCES lbr_nfexml(lbr_nfexml_id) DEFERRABLE INITIALLY DEFERRED
;

-- 20 de out de 2020 05:16:12 PDT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800057,'LBR_NFeXML','T',0,0,'Y',TO_TIMESTAMP('2020-10-20 05:16:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:16:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','17e3c1f9-d1f8-446a-8b25-faa72e010135')
;

-- 20 de out de 2020 05:17:07 PDT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (800057,800064,801674,801684,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:17:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:17:07','YYYY-MM-DD HH24:MI:SS'),0,'N','LBR','a7015faa-e442-4b6c-acef-935868026d03')
;

-- 20 de out de 2020 05:18:13 PDT
INSERT INTO AD_InfoWindow (AD_InfoWindow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,FromClause,Processing,AD_InfoWindow_UU,IsDefault,IsDistinct,OrderByClause,IsValid,SeqNo,IsShowInDashboard,MaxQueryRecords,isLoadPageNum,PagingSize) VALUES (800004,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:18:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:18:13','YYYY-MM-DD HH24:MI:SS'),0,'NF-e XML Info',800064,'LBR','LBR_NFeXML a','N','54182a8d-3f47-492f-a5a9-ae133c12d9d8','N','N','a.LBR_NSU','N',20,'Y',0,'Y',0)
;

-- 20 de out de 2020 05:18:47 PDT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (800030,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:18:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:18:47','YYYY-MM-DD HH24:MI:SS'),0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800004,'LBR','a.AD_Client_ID',10,'Y','N',102,19,'ff816e86-3056-4ff7-bf74-f7a2105c504c',129,'Y','AD_Client_ID','N',0,'N','N','Y')
;

-- 20 de out de 2020 05:18:47 PDT
UPDATE AD_InfoWindow SET IsValid='Y',Updated=TO_TIMESTAMP('2020-10-20 05:18:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoWindow_ID=800004
;

-- 20 de out de 2020 05:19:10 PDT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (800031,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:19:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:19:10','YYYY-MM-DD HH24:MI:SS'),0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800004,'LBR','a.AD_Org_ID',20,'Y','Y',113,19,'66bb3982-d8d7-4602-ab26-cc3a47fc428d',104,'Y','AD_Org_ID','=','N',10,'N','N','Y')
;

-- 20 de out de 2020 05:20:25 PDT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (800032,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:20:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:20:25','YYYY-MM-DD HH24:MI:SS'),0,'NFe ID',800004,'LBR','a.LBR_NFeID',30,'Y','Y',1000172,10,'3fd5203f-44e3-4487-b02d-bfaa65e02804','Y','LBR_NFeID','=','N',20,'N','N','Y')
;

-- 20 de out de 2020 05:20:49 PDT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (800033,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:20:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:20:49','YYYY-MM-DD HH24:MI:SS'),0,'NSU',800004,'LBR','a.LBR_NSU',40,'Y','Y',800453,10,'8111a66a-53cf-4585-b26a-540a2a2ac596','Y','LBR_NSU','=','N',30,'N','N','Y')
;

-- 20 de out de 2020 05:21:10 PDT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,QueryOperator,QueryFunction,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (800034,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:21:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:21:09','YYYY-MM-DD HH24:MI:SS'),0,'Schema Name',800004,'LBR','a.LBR_SchemaName',50,'Y','Y',800457,10,'d329b6f9-a117-40b2-9c3b-f3606edaace8','Y','LBR_SchemaName','Like','Upper','N',40,'N','N','Y')
;

-- 20 de out de 2020 05:21:51 PDT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Reference_Value_ID,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (800035,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:21:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:21:51','YYYY-MM-DD HH24:MI:SS'),0,'Ultima Manifestacao',800004,'LBR','a.LBR_UltimaManifestacao',60,'Y','Y',800458,17,'07007161-0624-41b2-9d45-86f3f67329a7',800054,'Y','LBR_UltimaManifestacao','=','N',50,'N','N','Y')
;

-- 20 de out de 2020 05:22:10 PDT
UPDATE AD_InfoColumn SET QueryOperator='Like', QueryFunction='Upper',Updated=TO_TIMESTAMP('2020-10-20 05:22:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800033
;

-- 20 de out de 2020 05:22:15 PDT
UPDATE AD_InfoColumn SET QueryOperator='Like', QueryFunction='Upper',Updated=TO_TIMESTAMP('2020-10-20 05:22:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800032
;

-- 20 de out de 2020 05:22:36 PDT
UPDATE AD_Ref_Table SET AD_InfoWindow_ID=800004,Updated=TO_TIMESTAMP('2020-10-20 05:22:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=800057
;

-- 20 de out de 2020 05:22:56 PDT
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=800057,Updated=TO_TIMESTAMP('2020-10-20 05:22:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801690
;

-- 20 de out de 2020 05:22:58 PDT
INSERT INTO t_alter_column values('lbr_notafiscaleventline','LBR_NFeXML_ID','NUMERIC(10)',null,'NULL')
;

-- 20 de out de 2020 05:23:26 PDT
UPDATE AD_Table SET AD_Window_ID=800021,Updated=TO_TIMESTAMP('2020-10-20 05:23:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800064
;

-- 20 de out de 2020 05:23:53 PDT
UPDATE AD_Window SET Name='NF-e XML',Updated=TO_TIMESTAMP('2020-10-20 05:23:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=800021
;

-- 20 de out de 2020 05:23:53 PDT
UPDATE AD_Menu SET Name='NF-e XML', Description=NULL, IsActive='Y',Updated=TO_TIMESTAMP('2020-10-20 05:23:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=800052
;

-- 20 de out de 2020 05:24:27 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801528,'NFe XML',1000091,801690,'Y',22,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-20 05:24:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:24:26','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','00c02724-bdef-4e61-9bc3-b081857e06bf','Y',140,2)
;

-- 20 de out de 2020 05:24:54 PDT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801528
;

-- 20 de out de 2020 05:24:54 PDT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001698
;

-- 20 de out de 2020 05:24:54 PDT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001699
;

-- 20 de out de 2020 05:24:54 PDT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001694
;

-- 20 de out de 2020 05:24:54 PDT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001695
;

-- 20 de out de 2020 05:24:54 PDT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001696
;

-- 20 de out de 2020 05:25:21 PDT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeEventType@=''MAN''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:25:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801528
;

-- 20 de out de 2020 05:27:49 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800462,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:27:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:27:48','YYYY-MM-DD HH24:MI:SS'),0,'LBR_TipoDeManifestacao','Tipo de Manifestacao','Tipo de Manifestacao','LBR','cfa55d0c-bf8b-4b6d-b3d5-036b01c1fda2')
;

-- 20 de out de 2020 05:30:54 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801691,0,'Tipo de Manifestacao',1000049,'LBR_TipoDeManifestacao',6,'N','N','N','N','N',0,'N',17,800054,0,0,'Y',TO_TIMESTAMP('2020-10-20 05:30:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:30:54','YYYY-MM-DD HH24:MI:SS'),0,800462,'Y','N','LBR','N','N','@LBR_NFeEventType@=''MAN''','N','Y','e52e0c43-dddf-4bab-a20d-ce4572007937','Y',0,'N','N','N','N')
;

-- 20 de out de 2020 05:30:56 PDT
ALTER TABLE LBR_NotaFiscalEventLine ADD COLUMN LBR_TipoDeManifestacao VARCHAR(6) DEFAULT NULL 
;

-- 20 de out de 2020 05:31:16 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801529,'Tipo de Manifestacao',1000091,801691,'Y',6,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-20 05:31:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2020-10-20 05:31:15','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','96c950b8-5031-49cf-89bf-3a757218df2d','Y',150,2)
;

-- 20 de out de 2020 05:31:31 PDT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801529
;

-- 20 de out de 2020 05:31:31 PDT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001693
;

-- 20 de out de 2020 05:31:31 PDT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001698
;

-- 20 de out de 2020 05:31:31 PDT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001699
;

-- 20 de out de 2020 05:31:31 PDT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001694
;

-- 20 de out de 2020 05:31:32 PDT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:31:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001695
;

-- 20 de out de 2020 05:31:32 PDT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:31:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001696
;

-- 20 de out de 2020 05:32:09 PDT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeEventType@=''MAN''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801529
;

-- 20 de out de 2020 05:34:50 PDT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeEventType@=''CAN'' | LBR_TipoDeManifestacao=''210240''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:34:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001699
;

-- 20 de out de 2020 05:35:16 PDT
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeEventType@=''CAN'' | LBR_TipoDeManifestacao=''210240''',Updated=TO_TIMESTAMP('2020-10-20 05:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000955
;

-- 20 de out de 2020 05:36:23 PDT
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeEventType@=''CAN'' | @LBR_TipoDeManifestacao@=''210240''',Updated=TO_TIMESTAMP('2020-10-20 05:36:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000955
;

-- 20 de out de 2020 05:36:32 PDT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeEventType@=''CAN'' | @LBR_TipoDeManifestacao@=''210240''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-20 05:36:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001699
;

SELECT lbr_register_migration_script('202010200942_Fields.sql') FROM dual;


