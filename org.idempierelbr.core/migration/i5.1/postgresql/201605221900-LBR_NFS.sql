-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/05/2016 1h31min33s BRT
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,LBR_TaxGroup_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2016-05-19 01:31:33','YYYY-MM-DD HH24:MI:SS'),0,'Grupo ISS (Imposto sobre Serviço)','Y',1000007,'aa6aaa8f-8cd0-4a36-b5b1-95fb5ee757f0','ISS',TO_TIMESTAMP('2016-05-19 01:31:33','YYYY-MM-DD HH24:MI:SS'),0)
;

-- 19/05/2016 2h22min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801018,0,'Has WithHold','Indicates if the Tax has WithHold',1000032,'LBR_HasWithHold','''N''',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-19 02:22:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-05-19 02:22:40','YYYY-MM-DD HH24:MI:SS'),0,1000033,'Y','N','U','N','N','N','Y','f54eabf9-8834-499f-98fb-e82de166b7cb','Y',0,'N','N','N')
;

-- 19/05/2016 2h22min42s BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_HasWithHold CHAR(1) DEFAULT 'N' CHECK (LBR_HasWithHold IN ('Y','N'))
;

-- 19/05/2016 2h23min37s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (800511,'Has WithHold','Indicates if the Tax has WithHold',1000032,801018,'Y',1,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-19 02:23:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-05-19 02:23:37','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','e9456146-dd52-41b1-9ce1-ff41361f872a','Y',210,2,2)
;

-- 19/05/2016 2h24min44s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800005,0,0,'Y',TO_TIMESTAMP('2016-05-19 02:24:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-05-19 02:24:44','YYYY-MM-DD HH24:MI:SS'),0,'Detalhes do ISS','U','C','N','d95cf753-f5b0-435d-829c-62c871f999f6')
;

-- 19/05/2016 2h30min55s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=800005, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001557
;

-- 19/05/2016 2h30min55s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_FieldGroup_ID=NULL, XPosition=4,Updated=TO_TIMESTAMP('2016-05-19 02:30:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000456
;

-- 19/05/2016 2h30min55s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001558
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001559
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001560
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001556
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET SeqNo=90, AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000454
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000455
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001551
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=4,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001552
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000458
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_FieldGroup_ID=NULL, XPosition=2,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800511
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=4,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001555
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET SeqNo=160, AD_FieldGroup_ID=1000023,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001553
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001554
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000459
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001561
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_FieldGroup_ID=800005, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000457
;

-- 19/05/2016 2h30min56s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-19 02:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001562
;

-- 19/05/2016 2h31min10s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800006,0,0,'Y',TO_TIMESTAMP('2016-05-19 02:31:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-05-19 02:31:09','YYYY-MM-DD HH24:MI:SS'),0,'Retenção de ISS','U','C','N','2a7b8164-0ecc-4d18-b17b-34e1a81e9d83')
;

-- 19/05/2016 2h32min22s BRT
UPDATE AD_Field SET SeqNo=140, AD_FieldGroup_ID=800006,Updated=TO_TIMESTAMP('2016-05-19 02:32:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800511
;

-- 22/05/2016 13h44min58s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (800035,'Nota Fiscal de Serviço','LBR_NFS',0,'3',0,0,'Y',TO_TIMESTAMP('2016-05-22 13:44:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:44:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','N','N','L','N','Y','34c562c5-3757-40db-bd45-a0ec3d46f038','N','N','N')
;

-- 22/05/2016 13h45min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801096,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800035,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:13','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBR','N','N','N','Y','987d1d0e-4444-4201-b2eb-05f4001f487e','N',0,'N','N','N')
;

-- 22/05/2016 13h45min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801097,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800035,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:14','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','N','N','Y','5086774d-afce-4c44-bb67-3666eb39e7fe','N',0,'N','N','N')
;

-- 22/05/2016 13h45min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801098,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800035,'Created',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:14','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','N','N','Y','2b35704a-0cac-4155-8b4c-6eb16fe148cc','N',0,'N','N','N')
;

-- 22/05/2016 13h45min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801099,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800035,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:15','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','N','N','Y','182dee9f-c960-4b7f-bf71-3370cf7426f3','N',0,'N','N','N')
;

-- 22/05/2016 13h45min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801100,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800035,'Description',255,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:15','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBR','N','N','N','Y','03af3fca-18e0-4c35-a171-e0c96776b2b7','Y',0,'N','N','N')
;

-- 22/05/2016 13h45min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801101,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800035,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:16','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','N','N','Y','dbd5f14d-9c26-4a74-babc-6849019c53ba','N',0,'N','N','N')
;

-- 22/05/2016 13h45min17s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800296,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFS_ID','Nota Fiscal de Serviço','Nota Fiscal de Serviço','LBR','a5d8edbe-fcca-44c6-b80a-d3ea5ff66f28')
;

-- 22/05/2016 13h45min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801102,0,'Nota Fiscal de Serviço',800035,'LBR_NFS_ID',10,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:16','YYYY-MM-DD HH24:MI:SS'),100,800296,'N','N','LBR','N','N','N','Y','90f006f1-f416-4206-b22a-3ec61bd946f0','N',0,'N','N','N')
;

-- 22/05/2016 13h45min18s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800297,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFS_UU','LBR_NFS_UU','LBR_NFS_UU','LBR','e93c1a23-cd63-45c9-a44f-797c4238cfc5')
;

-- 22/05/2016 13h45min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801103,0,'LBR_NFS_UU',800035,'LBR_NFS_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:17','YYYY-MM-DD HH24:MI:SS'),100,800297,'N','N','LBR','N','N','N','Y','c7866a4c-d59c-4f29-b60b-f97a716a7b3c','N',0,'N','N','N')
;

-- 22/05/2016 13h45min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801104,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800035,'Updated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:18','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','N','N','Y','635a7a18-2c66-42b1-8522-1079553a251a','N',0,'N','N','N')
;

-- 22/05/2016 13h45min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801105,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800035,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:45:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:45:19','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','N','N','Y','ff0a5d6a-c7b3-489e-9dca-91e151aae5c0','N',0,'N','N','N')
;

-- 22/05/2016 13h46min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801106,0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800035,'DocumentNo',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:46:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:46:28','YYYY-MM-DD HH24:MI:SS'),100,290,'Y','Y','U','N','N','N','Y','67ebfce0-5cdb-48ce-a43b-85ac4686e0a1','Y',0,'N','N')
;

-- 22/05/2016 13h46min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801107,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800035,'DateDoc','@#Date@',11,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:46:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:46:56','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','U','N','N','N','Y','c618e093-e6a5-41cf-b552-a184ebc664b1','Y',0,'N','N')
;

-- 22/05/2016 13h47min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801108,0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800035,'C_BPartner_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:47:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:47:08','YYYY-MM-DD HH24:MI:SS'),100,187,'Y','N','U','N','N','N','Y','5e8cba05-9856-418c-b71a-e3c2b2a3345a','Y',0,'N','N')
;

-- 22/05/2016 13h47min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801109,0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',800035,'C_BPartner_Location_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:47:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:47:18','YYYY-MM-DD HH24:MI:SS'),100,189,'Y','N','U','N','N','N','Y','aa4245cc-d28d-454e-b863-1241e4c99e8d','Y',0,'N','N')
;

-- 22/05/2016 13h48min31s BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800007,'C_DocType NotaFiscal','Document Type for NotaFiscal','S','C_DocType.DocBaseType=''NFS''',0,0,'Y',TO_TIMESTAMP('2016-05-22 13:48:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:48:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR','a73ce18f-8650-4111-8f98-68ad43ebb228')
;

-- 22/05/2016 13h48min46s BRT
UPDATE AD_Val_Rule SET Name='C_DocType NFS', Description='Document Type for NFS',Updated=TO_TIMESTAMP('2016-05-22 13:48:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=800007
;

-- 22/05/2016 13h48min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801110,0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',800035,800007,'C_DocType_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:48:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:48:58','YYYY-MM-DD HH24:MI:SS'),100,196,'Y','N','U','N','N','N','Y','9ed198da-ec80-48d5-9945-96c57f8395f3','Y',0,'N','N')
;

-- 22/05/2016 13h49min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801111,0,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',800035,'C_Order_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:49:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:49:17','YYYY-MM-DD HH24:MI:SS'),100,558,'N','N','U','N','N','N','Y','a551a7b8-9efd-4290-a539-6ccd66fd6555','Y',0,'N','N')
;

-- 22/05/2016 13h49min25s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801112,0,'Invoice','Invoice Identifier','The Invoice Document.',800035,'C_Invoice_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:49:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:49:25','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','U','N','N','N','Y','7d86f2b6-14f3-4688-9a14-5f7a7e8d50a2','Y',0,'N','N')
;

-- 22/05/2016 13h50min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801113,0,'Total Lines','Total of all document lines','The Total amount displays the total of all lines in document currency',800035,'TotalLines',131089,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:03','YYYY-MM-DD HH24:MI:SS'),100,598,'N','N','U','N','N','N','Y','659b4779-193e-4d09-9411-3ffea0f6adc6','Y',0,'N','N')
;

-- 22/05/2016 13h50min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801114,0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',800035,'GrandTotal',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:09','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','U','N','N','N','Y','4c5c0512-8d7e-4fa2-befe-319ac8d11e7f','Y',0,'N','N')
;

-- 22/05/2016 13h50min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801115,0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',800035,'DocStatus','DR',2,'N','N','N','N','N',0,'N',17,131,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:18','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','U','N','N','N','Y','e3f7db14-e766-4735-bebe-fd70a9a6be3e','Y',0,'N','N')
;

-- 22/05/2016 13h50min25s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801116,0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',800035,'DocAction','CO',2,'N','N','N','N','N',0,'N',28,135,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:24','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','U','N','N','N','Y','65e11919-e977-4d61-b24a-3214bf6a4ae4','Y',0,'Y','N')
;

-- 22/05/2016 13h50min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801117,0,'Process Now',800035,'Processing',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:32','YYYY-MM-DD HH24:MI:SS'),100,524,'Y','N','U','N','N','N','Y','336a380e-afe0-4d93-bf78-d9cf1df234c9','N',0,'Y','N')
;

-- 22/05/2016 13h50min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801118,0,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',800035,'Posted',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:42','YYYY-MM-DD HH24:MI:SS'),100,1308,'N','N','U','N','N','N','Y','e0a6dbb6-cc78-4a39-b9d2-991191046e48','Y',0,'N','N')
;

-- 22/05/2016 13h50min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801119,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800035,'Processed',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','U','N','N','N','Y','fb685bc8-a925-4e33-8069-5580f908e23f','Y',0,'N','N')
;

-- 22/05/2016 13h50min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801120,0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',800035,231,'M_Product_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:50:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:50:54','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','N','U','N','N','N','Y','cc4bacaa-b9da-4ffc-842e-4cd37e3be88f','Y',0,'N','N','N')
;

-- 22/05/2016 13h51min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801121,0,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',800035,'C_Charge_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:51:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:51:00','YYYY-MM-DD HH24:MI:SS'),100,968,'N','N','U','N','N','N','Y','bbe26e94-cdd8-40fa-a0ff-e56fb6c18cb1','Y',0,'N','N')
;

-- 22/05/2016 13h51min4s BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2016-05-22 13:51:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801121
;

-- 22/05/2016 13h51min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801122,0,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',800035,'C_InvoiceLine_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:51:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:51:55','YYYY-MM-DD HH24:MI:SS'),100,1076,'N','N','U','N','N','N','Y','01a0d706-c7a7-4fcc-b9cf-5307aededf82','Y',0,'N','N','N')
;

-- 22/05/2016 13h52min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801123,0,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',800035,'C_OrderLine_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:52:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:52:01','YYYY-MM-DD HH24:MI:SS'),100,561,'N','N','U','N','N','N','Y','afb4525e-cf62-493c-9ad0-d446309f8b24','Y',0,'N','N')
;

-- 22/05/2016 13h52min25s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801124,0,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',800035,'Qty',22,'N','N','Y','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:52:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:52:25','YYYY-MM-DD HH24:MI:SS'),100,526,'Y','N','U','N','N','N','Y','40177530-e5dc-49e2-a157-1ad11e205f70','Y',0,'N','N')
;

-- 22/05/2016 13h52min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801125,0,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',800035,'C_UOM_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:52:33','YYYY-MM-DD HH24:MI:SS'),100,215,'Y','N','U','N','N','N','Y','afe99c64-d44c-4729-96fb-77ffe19c4cb7','Y',0,'N','N','N')
;

-- 22/05/2016 13h52min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801126,0,'Price','Price','The Price indicates the Price for a product or service.',800035,'Price',14,'N','N','N','N','N',0,'N',37,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:52:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:52:43','YYYY-MM-DD HH24:MI:SS'),100,1416,'Y','N','U','N','N','N','Y','59f20f0f-5b7b-4085-9b48-ab4e9d9235a7','Y',0,'N','N')
;

-- 22/05/2016 13h55min10s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800298,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ResponsavelRetencao','Responsável pela Retenção','Informado somente se IssRetido igual a “1 – Sim” A opção “2 – Intermediário” somente poderá ser selecionada se “CpfCnpjIntermediario” informado.
1 – Tomador;
2 – Intermediário.','Responsável pela Retenção','U','dc2b197e-67c7-4abb-af3f-ef47153270b6')
;

-- 22/05/2016 13h55min20s BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 13:55:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800298
;

-- 22/05/2016 13h55min57s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800299,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:55:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:55:57','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RPSTipoSubstituida','Tipo da RPS Substituída','Tipo da RPS Substituída','LBR','ca2c8a94-3a11-415c-8561-8fc5a6605567')
;

-- 22/05/2016 13h56min18s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800300,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:56:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:56:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RPSSerieSubstituida','Série da RPS Substituída','Série da RPS Substituída','LBR','ba179e8b-f2ac-4e3b-a0ad-9129d269788a')
;

-- 22/05/2016 13h56min40s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800301,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:56:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:56:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RPSNumeroSubstituida','Número da RPS Substituída','Número da RPS Substituída','LBR','78a90411-64bb-41e6-8a2e-3f62ace00f80')
;

-- 22/05/2016 13h57min14s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800302,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:57:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:57:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RPSTipo','Tipo da RPS','Tipo do RPS
1 – Recibo Provisorio de Servicos;
2 – RPS Nota Fiscal Conjugada (Mista); 
3 – Cupom.','Tipo da RPS','LBR','2794e35c-286e-424f-874e-d995df4f9a73')
;

-- 22/05/2016 13h57min34s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800303,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:57:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:57:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RPSSerie','Série da RPS','Série da RPS','LBR','f766812e-c0f1-4ead-a1a4-efecce14942e')
;

-- 22/05/2016 13h57min48s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800304,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:57:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:57:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RPSNumero','Número da RPS','Número da RPS','LBR','9cdb64da-831d-40da-9039-4c336d78c0be')
;

-- 22/05/2016 13h59min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800305,0,0,'Y',TO_TIMESTAMP('2016-05-22 13:59:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 13:59:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IntermediateBPartnerLocati','Parceiro de Negócios Intermediário','Parceiro de Negócios Intermediário do Serviço.','Parceiro de Negócios Intermediário','U','2c2db467-bfac-41b3-93d9-dd4a587c725b')
;

-- 22/05/2016 13h59min34s BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 13:59:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800305
;

-- 22/05/2016 14h0min4s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800306,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IntermediateBPartner_ID','Parceiro de Negócios Intermediário','Parceiro de Negócios Intermediário do Serviço.','Parceiro de Negócios Intermediário','LBR','017e05ed-6643-463c-9065-8fdb3f97b2f9')
;

-- 22/05/2016 14h1min41s BRT
UPDATE AD_Element SET ColumnName='LBR_IntermediateBPLocation_ID', Name='Localização do Parc. de Negócios Intermediário', Help='Localização do Parc. de Negócios Intermediário do Serviço.', PrintName='Localização do Parc. de Negócios Intermediário',Updated=TO_TIMESTAMP('2016-05-22 14:01:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800305
;

-- 22/05/2016 14h1min41s BRT
UPDATE AD_Column SET ColumnName='LBR_IntermediateBPLocation_ID', Name='Localização do Parc. de Negócios Intermediário', Description=NULL, Help='Localização do Parc. de Negócios Intermediário do Serviço.' WHERE AD_Element_ID=800305
;

-- 22/05/2016 14h1min41s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IntermediateBPLocation_ID', Name='Localização do Parc. de Negócios Intermediário', Description=NULL, Help='Localização do Parc. de Negócios Intermediário do Serviço.', AD_Element_ID=800305 WHERE UPPER(ColumnName)='LBR_INTERMEDIATEBPLOCATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2016 14h1min41s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IntermediateBPLocation_ID', Name='Localização do Parc. de Negócios Intermediário', Description=NULL, Help='Localização do Parc. de Negócios Intermediário do Serviço.' WHERE AD_Element_ID=800305 AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 14h1min41s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_IntermediateBPLocation_ID', Name='Localização do Parc. de Negócios Intermediário', Description=NULL, Help='Localização do Parc. de Negócios Intermediário do Serviço.' WHERE AD_Element_ID=800305 AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 14h1min41s BRT
UPDATE AD_Field SET Name='Localização do Parc. de Negócios Intermediário', Description=NULL, Help='Localização do Parc. de Negócios Intermediário do Serviço.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800305) AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 14h1min41s BRT
UPDATE AD_PrintFormatItem SET PrintName='Localização do Parc. de Negócios Intermediário', Name='Localização do Parc. de Negócios Intermediário' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800305)
;

-- 22/05/2016 14h2min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800307,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:02:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:02:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NIFTomador','Número Nif do Tomador','Número Nif do Tomador','LBR','0e76e24a-a97d-4dc8-996d-9cc685a9793d')
;

-- 22/05/2016 14h3min14s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800308,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:03:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:03:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFSeSubstituida','Número da NFSe Substituída','Número da NFSe Substituída.','Número da NFSe Substituída','LBR','fcc9123d-0326-4523-a034-283e86525a9e')
;

-- 22/05/2016 14h3min29s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800309,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:03:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:03:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFSeCodVerificacao','Código de Verificação da NFS-e','Código de Verificação da NFS-e','U','033522d4-be4a-432b-9352-fa6d162d9078')
;

-- 22/05/2016 14h3min31s BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 14:03:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800309
;

-- 22/05/2016 14h3min44s BRT
UPDATE AD_Element SET Name='Número da NFS-e Substituída', PrintName='Número da NFS-e Substituída',Updated=TO_TIMESTAMP('2016-05-22 14:03:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800308
;

-- 22/05/2016 14h3min44s BRT
UPDATE AD_Column SET ColumnName='LBR_NFSeSubstituida', Name='Número da NFS-e Substituída', Description=NULL, Help='Número da NFSe Substituída.' WHERE AD_Element_ID=800308
;

-- 22/05/2016 14h3min44s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeSubstituida', Name='Número da NFS-e Substituída', Description=NULL, Help='Número da NFSe Substituída.', AD_Element_ID=800308 WHERE UPPER(ColumnName)='LBR_NFSESUBSTITUIDA' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2016 14h3min44s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeSubstituida', Name='Número da NFS-e Substituída', Description=NULL, Help='Número da NFSe Substituída.' WHERE AD_Element_ID=800308 AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 14h3min44s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_NFSeSubstituida', Name='Número da NFS-e Substituída', Description=NULL, Help='Número da NFSe Substituída.' WHERE AD_Element_ID=800308 AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 14h3min44s BRT
UPDATE AD_Field SET Name='Número da NFS-e Substituída', Description=NULL, Help='Número da NFSe Substituída.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800308) AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 14h3min44s BRT
UPDATE AD_PrintFormatItem SET PrintName='Número da NFS-e Substituída', Name='Número da NFS-e Substituída' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800308)
;

-- 22/05/2016 14h4min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800310,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:04:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:04:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RPSStatus','Situação da RPS','Situação do RPS 
1 – Normal
2 – Cancelado','Situação da RPS','LBR','c7f60f75-b2cc-4ac4-a30e-1afe56ba6c74')
;

-- 22/05/2016 14h5min0s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800311,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:05:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:05:00','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFSeStatus','Situação da NFS-e','Situação do RPS 
1 – Normal
2 – Cancelado','Situação da NFS-e','LBR','29f90c7a-c5b2-4b4e-b2cd-a8f0695cbce3')
;

-- 22/05/2016 14h8min10s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800030,'LBR_NFSeStatus','L',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:08:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:08:09','YYYY-MM-DD HH24:MI:SS'),100,'U','N','4e46fe20-d07d-416e-a1c0-d45f17a07b97')
;

-- 22/05/2016 14h8min24s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800147,'Normal',800030,'1',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:08:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:08:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR','db0a0ebc-23b1-4832-8814-3b59676330dd')
;

-- 22/05/2016 14h8min29s BRT
UPDATE AD_Reference SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 14:08:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=800030
;

-- 22/05/2016 14h8min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801127,0,'Situação da NFS-e','Situação do RPS 
1 – Normal
2 – Cancelado',800035,'LBR_NFSeStatus',1,'N','N','Y','N','N',0,'N',17,800030,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:08:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:08:52','YYYY-MM-DD HH24:MI:SS'),100,800311,'Y','N','U','N','N','N','Y','00d7a462-b848-4f10-96e3-fdd3dd834d08','Y',0,'N','N')
;

-- 22/05/2016 14h9min21s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801128,0,'Situação da RPS','Situação do RPS 
1 – Normal
2 – Cancelado',800035,'LBR_RPSStatus',1,'N','N','N','N','N',0,'N',17,800030,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:09:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:09:21','YYYY-MM-DD HH24:MI:SS'),100,800310,'Y','N','U','N','N','N','Y','04b82244-df6d-4c25-bac3-ea18d6fdd8ce','Y',0,'N','N')
;

-- 22/05/2016 14h9min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801129,0,'Código de Verificação da NFS-e',800035,'LBR_NFSeCodVerificacao',9,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:09:33','YYYY-MM-DD HH24:MI:SS'),100,800309,'Y','N','U','N','N','N','Y','19920ff2-9700-423f-9e9e-3f8500f3660f','Y',0,'N','N')
;

-- 22/05/2016 14h9min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801130,0,'Número da NFS-e Substituída','Número da NFSe Substituída.',800035,'LBR_NFSeSubstituida',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:09:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:09:44','YYYY-MM-DD HH24:MI:SS'),100,800308,'Y','N','U','N','N','N','Y','63d3abd7-b1ca-4770-b4c1-c10680f825e6','Y',0,'N','N')
;

-- 22/05/2016 14h10min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801131,0,'Número Nif do Tomador',800035,'LBR_NIFTomador',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:10:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:10:34','YYYY-MM-DD HH24:MI:SS'),100,800307,'Y','N','U','N','N','N','Y','483c4891-336e-44d2-bea7-b65414ebdbe8','Y',0,'N','N')
;

-- 22/05/2016 14h11min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801132,0,'Parceiro de Negócios Intermediário','Parceiro de Negócios Intermediário do Serviço.',800035,'LBR_IntermediateBPartner_ID',11,'N','N','Y','N','N',0,'N',30,138,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:10:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:10:59','YYYY-MM-DD HH24:MI:SS'),100,800306,'Y','N','U','N','N','N','Y','845f2112-f985-463b-818a-7093c19c39d7','Y',0,'N','N')
;

-- 22/05/2016 14h13min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801133,0,'Localização do Parc. de Negócios Intermediário','Localização do Parc. de Negócios Intermediário do Serviço.',800035,131,'LBR_IntermediateBPLocation_ID',11,'N','N','Y','N','N',0,'N',18,159,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:13:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:13:04','YYYY-MM-DD HH24:MI:SS'),100,800305,'Y','N','U','N','N','N','Y','bb1419ae-9c50-493b-90ef-31d9d1600bf1','Y',0,'N','N')
;

-- 22/05/2016 14h13min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801134,0,'Número da RPS',800035,'LBR_RPSNumero',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:13:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:13:39','YYYY-MM-DD HH24:MI:SS'),100,800304,'Y','N','U','N','N','N','Y','7731be34-4d9d-49c3-bdf4-8f489482d9b2','Y',0,'N','N')
;

-- 22/05/2016 14h13min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801135,0,'Série da RPS',800035,'LBR_RPSSerie',5,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:13:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:13:54','YYYY-MM-DD HH24:MI:SS'),100,800303,'Y','N','U','N','N','N','Y','a1561919-ccdf-4a22-92ae-c084c5072d09','Y',0,'N','N')
;

-- 22/05/2016 14h14min9s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800031,'LBR_RPSTipo','L',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:14:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:14:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','0b0a4f0a-492e-46b1-9442-1ebe16bfef8e')
;

-- 22/05/2016 14h14min30s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800148,'Recibo Provisorio de Servicos',800031,'1',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:14:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:14:29','YYYY-MM-DD HH24:MI:SS'),100,'U','83253338-7409-4315-9747-e31dc907bb22')
;

-- 22/05/2016 14h14min34s BRT
UPDATE AD_Ref_List SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 14:14:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=800148
;

-- 22/05/2016 14h14min45s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800149,'RPS Nota Fiscal Conjugada (Mista)',800031,'2',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:14:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:14:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR','e92cbeb1-3f88-4694-b0cc-ad71cb18aa9b')
;

-- 22/05/2016 14h14min51s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800150,'Cupom',800031,'3',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:14:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:14:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR','c18ef796-7fc0-4744-8d1b-2e3e8c9d2294')
;

-- 22/05/2016 14h15min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801136,0,'Tipo da RPS','Tipo do RPS
1 – Recibo Provisorio de Servicos;
2 – RPS Nota Fiscal Conjugada (Mista); 
3 – Cupom.',800035,'LBR_RPSTipo',1,'N','N','N','N','N',0,'N',17,800031,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:15:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:15:06','YYYY-MM-DD HH24:MI:SS'),100,800302,'Y','N','U','N','N','N','Y','195349a4-c829-4e21-a20a-a16466dc3b56','Y',0,'N','N')
;

-- 22/05/2016 14h15min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801137,0,'Número da RPS Substituída',800035,'LBR_RPSNumeroSubstituida',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:15:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:15:23','YYYY-MM-DD HH24:MI:SS'),100,800301,'Y','N','U','N','N','N','Y','5e8adf9c-c7ca-42a8-95a4-08019da88e54','Y',0,'N','N')
;

-- 22/05/2016 14h15min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801138,0,'Série da RPS Substituída',800035,'LBR_RPSSerieSubstituida',5,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:15:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:15:33','YYYY-MM-DD HH24:MI:SS'),100,800300,'Y','N','U','N','N','N','Y','107395f6-349b-47cd-a588-6891a1ff5edc','Y',0,'N','N')
;

-- 22/05/2016 14h15min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801139,0,'Tipo da RPS Substituída',800035,'LBR_RPSTipoSubstituida',1,'N','N','N','N','N',0,'N',17,800031,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:15:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:15:59','YYYY-MM-DD HH24:MI:SS'),100,800299,'Y','N','U','N','N','N','Y','e0495c89-46c6-4a4a-9dd2-1f6dc9531003','Y',0,'N','N')
;

UPDATE AD_Column SET EntityType = 'LBR' WHERE AD_Table_ID=800035;

-- 22/05/2016 14h18min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800312,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:18:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:18:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CodigoNBS','Código NBS','Código NBS','LBR','09ff6400-ce70-4dad-ba58-ec3974906649')
;

-- 22/05/2016 14h18min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801140,0,'Código NBS',1000032,'LBR_CodigoNBS',9,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:18:58','YYYY-MM-DD HH24:MI:SS'),100,800312,'Y','N','U','N','N','N','Y','73a646d5-a93a-41d2-9152-3e4fbc26dae5','Y',0,'N','N')
;

-- 22/05/2016 14h19min31s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800032,'LBR_ResponsavelRetencao','L',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','512dbe32-ad1f-4b19-90dd-1a04e686f89d')
;

-- 22/05/2016 14h19min49s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800151,'Tomador',800032,'1',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:19:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:19:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR','81f5b36a-a3cc-4a22-bde2-f650b3f58d1e')
;

-- 22/05/2016 14h19min59s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800152,'Intermediário',800032,'2',0,0,'Y',TO_TIMESTAMP('2016-05-22 14:19:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:19:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR','8d062a2a-f548-4cc6-9fd7-246e2993a38d')
;

-- 22/05/2016 14h20min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801141,0,'Responsável pela Retenção','Informado somente se IssRetido igual a “1 – Sim” A opção “2 – Intermediário” somente poderá ser selecionada se “CpfCnpjIntermediario” informado.
1 – Tomador;
2 – Intermediário.',1000032,'LBR_ResponsavelRetencao',1,'N','N','N','N','N',0,'N',17,800032,0,0,'Y',TO_TIMESTAMP('2016-05-22 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,800298,'Y','N','U','N','N','N','Y','1b283995-c088-4549-b55c-90cfedd51798','Y',0,'N','N')
;

-- 22/05/2016 14h20min22s BRT
UPDATE AD_Column SET DefaultValue='1',Updated=TO_TIMESTAMP('2016-05-22 14:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801141
;

-- 22/05/2016 14h20min35s BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_TIMESTAMP('2016-05-22 14:20:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801141
;

-- 22/05/2016 18h17min24s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800014,'Nota Fiscal de Serviço',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:24','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBR','Y','N',0,0,'N','796b893a-a2f9-43f5-b315-bd68cc77823c')
;

-- 22/05/2016 18h17min43s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800043,'Nota Fiscal de Serviço',800014,10,'Y',800035,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:43','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','U','Y','N','77b50396-b992-47f7-81e3-63e1ece97276','B')
;

-- 22/05/2016 18h17min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (800995,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800043,801096,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','f26704df-e9ac-4320-9505-03a8643eadde','N',2)
;

-- 22/05/2016 18h17min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (800996,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800043,801097,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','627de442-28dc-4e24-88cb-ac695bfb574b','Y','Y',10,4,2)
;

-- 22/05/2016 18h17min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (800997,'Description','Optional short description of the record','A description is limited to 255 characters.',800043,801100,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','0e57ed38-6d0c-4bf9-8068-ebf882201657','Y',20,5,3)
;

-- 22/05/2016 18h17min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (800998,'Nota Fiscal de Serviço',800043,801102,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','b5a0967d-67c9-44f2-9692-503bba6f79be','N',2)
;

-- 22/05/2016 18h17min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (800999,'LBR_NFS_UU',800043,801103,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','50f3a53b-6ab6-4913-86b1-536ca5f75f5c','N',2)
;

-- 22/05/2016 18h17min48s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801000,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800043,801106,'Y',15,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','95cad599-ab67-4225-9465-cbc8986c4f77','Y',30,2)
;

-- 22/05/2016 18h17min48s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801001,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800043,801107,'Y',11,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','5370d9ec-059a-4cc3-b4a3-ba5cbeb72094','Y',40,2)
;

-- 22/05/2016 18h17min49s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801002,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800043,801108,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','67728cd1-30d7-4749-92a8-0d75ea29f567','Y',50,2)
;

-- 22/05/2016 18h17min49s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801003,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',800043,801109,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','55645109-a22b-4154-9eee-3da54868cbfe','Y',60,2)
;

-- 22/05/2016 18h17min49s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801004,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',800043,801110,'Y',22,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','4b6dd57b-10e1-4313-9aab-6760ad6aad00','Y',70,2)
;

-- 22/05/2016 18h17min50s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801005,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',800043,801111,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','ab6e8e8d-cf5f-4e0c-b889-d64d01764c1d','Y',80,2)
;

-- 22/05/2016 18h17min50s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801006,'Invoice','Invoice Identifier','The Invoice Document.',800043,801112,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','a5f9b262-b320-4837-b8e9-f866e0766651','Y',90,2)
;

-- 22/05/2016 18h17min51s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801007,'Total Lines','Total of all document lines','The Total amount displays the total of all lines in document currency',800043,801113,'Y',131089,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','268d1cfb-6bcc-42ab-8620-c83c02f4ac61','Y',100,5)
;

-- 22/05/2016 18h17min51s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801008,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',800043,801114,'Y',22,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','5b47e5af-14d9-4928-8d83-fb5ba457c1b0','Y',110,2)
;

-- 22/05/2016 18h17min52s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801009,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',800043,801115,'Y',2,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','be87ff6c-ff3f-4442-912a-937dc03a4cc1','Y',120,2)
;

-- 22/05/2016 18h17min52s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801010,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',800043,801116,'Y',2,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','32a47d88-65f3-4639-9620-b2a290851d68','Y',130,2,2)
;

-- 22/05/2016 18h17min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801011,'Process Now',800043,801117,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','ece72630-e797-4d46-8df1-bd4a865a9742','Y',140,2,2)
;

-- 22/05/2016 18h17min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801012,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',800043,801118,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','cbc25608-d3a3-4260-91f1-ea017fb6e1ec','Y',150,2,2)
;

-- 22/05/2016 18h17min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801013,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800043,801119,'Y',1,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c4e697bd-6807-49ea-9c5e-fe1690edf7a4','Y',160,2,2)
;

-- 22/05/2016 18h17min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801014,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',800043,801120,'Y',22,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','224492dc-a6dd-4d3f-8dc2-f81af59b6328','Y',170,2)
;

-- 22/05/2016 18h17min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801015,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',800043,801121,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c287f35a-623e-46d5-80c9-b33c6d253369','Y',180,2)
;

-- 22/05/2016 18h17min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801016,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',800043,801122,'Y',22,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','04a5e662-9572-4a38-81db-11794f013b63','Y',190,2)
;

-- 22/05/2016 18h17min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801017,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',800043,801123,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','20eda4e6-fa05-4fa2-9b41-0fe3c66774d7','Y',200,2)
;

-- 22/05/2016 18h17min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801018,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',800043,801124,'Y',22,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','fca6f195-78e1-436f-8ac8-3eec9b2a29bd','Y',210,2)
;

-- 22/05/2016 18h17min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801019,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',800043,801125,'Y',22,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','43453087-2771-4a44-a981-5fc702004a46','Y',220,2)
;

-- 22/05/2016 18h17min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801020,'Price','Price','The Price indicates the Price for a product or service.',800043,801126,'Y',14,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','0f6d6a5e-4df6-420d-978f-7ca3f7a7bd1e','Y',230,2)
;

-- 22/05/2016 18h17min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801021,'Situação da NFS-e','Situação do RPS 
1 – Normal
2 – Cancelado',800043,801127,'Y',1,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','f653125b-3912-4a2b-bf4b-261c28a9747a','Y',240,2)
;

-- 22/05/2016 18h17min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801022,'Situação da RPS','Situação do RPS 
1 – Normal
2 – Cancelado',800043,801128,'Y',1,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','e353a326-736b-4577-861f-a09b7533b1aa','Y',250,2)
;

-- 22/05/2016 18h17min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801023,'Código de Verificação da NFS-e',800043,801129,'Y',9,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','59ddca78-e9c3-49c8-9649-7bbdc671df6d','Y',260,2)
;

-- 22/05/2016 18h17min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801024,'Número da NFS-e Substituída','Número da NFSe Substituída.',800043,801130,'Y',15,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','67f5f3a1-b614-4021-9eea-e7339c3492cc','Y',270,2)
;

-- 22/05/2016 18h18min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801025,'Número Nif do Tomador',800043,801131,'Y',40,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:17:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:17:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','efcb6b7d-3298-43ff-be63-edf070b2ab53','Y',280,2)
;

-- 22/05/2016 18h18min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801026,'Parceiro de Negócios Intermediário','Parceiro de Negócios Intermediário do Serviço.',800043,801132,'Y',11,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','1b41fb8f-1c61-484f-849e-c1dba0b5f286','Y',290,2)
;

-- 22/05/2016 18h18min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801027,'Localização do Parc. de Negócios Intermediário','Localização do Parc. de Negócios Intermediário do Serviço.',800043,801133,'Y',11,310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','2d92648a-1d93-4577-bc07-910d1f5ea9f0','Y',300,2)
;

-- 22/05/2016 18h18min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801028,'Número da RPS',800043,801134,'Y',15,320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','35ecfea9-47a5-4eb0-837d-efcdbe7154ef','Y',310,2)
;

-- 22/05/2016 18h18min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801029,'Série da RPS',800043,801135,'Y',5,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','42c40e21-7b18-403c-8ca7-5218699c728e','Y',320,2)
;

-- 22/05/2016 18h18min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801030,'Tipo da RPS','Tipo do RPS
1 – Recibo Provisorio de Servicos;
2 – RPS Nota Fiscal Conjugada (Mista); 
3 – Cupom.',800043,801136,'Y',1,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','e8ec4663-5e1f-42b6-9c45-9a55694d33d7','Y',330,2)
;

-- 22/05/2016 18h18min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801031,'Número da RPS Substituída',800043,801137,'Y',15,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','828f0405-404b-47d6-9ed3-9b33e3092ad2','Y',340,2)
;

-- 22/05/2016 18h18min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801032,'Série da RPS Substituída',800043,801138,'Y',5,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','4ffa96ce-bb6d-461a-bce8-de404880a7be','Y',350,2)
;

-- 22/05/2016 18h18min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801033,'Tipo da RPS Substituída',800043,801139,'Y',1,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','60fde7c2-6ba8-4d5a-810b-9210095775e6','Y',360,2)
;

-- 22/05/2016 18h18min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801034,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800043,801101,'Y',1,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:18:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:18:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c301cc98-7de7-4e5a-8bfa-a57c66237e68','Y',370,2,2)
;

-- 22/05/2016 18h31min44s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800010,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:31:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:31:43','YYYY-MM-DD HH24:MI:SS'),100,'Descrição do Serviço','LBR','C','N','911e16ee-718e-43b5-8db0-10b96d3e3a9c')
;

-- 22/05/2016 18h32min12s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800011,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:32:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:32:12','YYYY-MM-DD HH24:MI:SS'),100,'Intermediário','U','C','Y','fbf1bee1-c3a4-412d-ac21-b0af96004b1d')
;

-- 22/05/2016 18h33min32s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=125, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801004
;

-- 22/05/2016 18h33min32s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=1, NumLines=15,Updated=TO_TIMESTAMP('2016-05-22 18:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 22/05/2016 18h33min32s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-05-22 18:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 22/05/2016 18h33min32s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-05-22 18:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 22/05/2016 18h33min32s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801034
;

-- 22/05/2016 18h33min32s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-05-22 18:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800999
;

-- 22/05/2016 18h33min32s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-05-22 18:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800998
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801021
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801000
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801001
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_FieldGroup_ID=800010, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801015
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_FieldGroup_ID=800011, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=170, AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_FieldGroup_ID=101, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=220, ColumnSpan=2,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801012
;

-- 22/05/2016 18h36min33s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801013
;

-- 22/05/2016 18h37min34s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800313,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:37:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:37:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFSNumero','Código da NFS-e','Código da NFS-e','LBR','9c681197-4bf6-4ee7-919b-69b9aafdfd3c')
;

-- 22/05/2016 18h38min12s BRT
UPDATE AD_Element SET ColumnName='LBR_NFSeNumero',Updated=TO_TIMESTAMP('2016-05-22 18:38:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800313
;

-- 22/05/2016 18h38min12s BRT
UPDATE AD_Column SET ColumnName='LBR_NFSeNumero', Name='Código da NFS-e', Description=NULL, Help=NULL WHERE AD_Element_ID=800313
;

-- 22/05/2016 18h38min12s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeNumero', Name='Código da NFS-e', Description=NULL, Help=NULL, AD_Element_ID=800313 WHERE UPPER(ColumnName)='LBR_NFSENUMERO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2016 18h38min12s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeNumero', Name='Código da NFS-e', Description=NULL, Help=NULL WHERE AD_Element_ID=800313 AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 18h38min12s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_NFSeNumero', Name='Código da NFS-e', Description=NULL, Help=NULL WHERE AD_Element_ID=800313 AND IsCentrallyMaintained='Y'
;

-- 22/05/2016 18h38min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801142,0,'Código da NFS-e',800035,'LBR_NFSeNumero',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:38:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:38:25','YYYY-MM-DD HH24:MI:SS'),100,800313,'Y','N','U','N','N','N','Y','cd6bb810-a28c-455d-a8b6-cf8fdffe4ea4','Y',0,'N','N')
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801096
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801097
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801108
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='CBPartnerLocation_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801109
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='CCharge_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801121
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='CDocType_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801110
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='CInvoiceLine_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801122
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='CInvoice_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801112
;

-- 22/05/2016 18h38min54s BRT
UPDATE AD_Column SET FKConstraintName='COrderLine_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801123
;

-- 22/05/2016 18h38min55s BRT
UPDATE AD_Column SET FKConstraintName='COrder_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801111
;

-- 22/05/2016 18h38min55s BRT
UPDATE AD_Column SET FKConstraintName='CUOM_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801125
;

-- 22/05/2016 18h38min55s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801099
;

-- 22/05/2016 18h38min55s BRT
UPDATE AD_Column SET FKConstraintName='LBRIntermediateBPLocation_LBRN', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801133
;

-- 22/05/2016 18h38min55s BRT
UPDATE AD_Column SET FKConstraintName='LBRIntermediateBPartner_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801132
;

-- 22/05/2016 18h38min55s BRT
UPDATE AD_Column SET FKConstraintName='MProduct_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801120
;

-- 22/05/2016 18h38min55s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 18:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801105
;

-- 22/05/2016 18h38min55s BRT
CREATE TABLE LBR_NFS (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) DEFAULT NULL , C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_BPartner_Location_ID NUMERIC(10) DEFAULT NULL , C_Charge_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) DEFAULT NULL , C_InvoiceLine_ID NUMERIC(10) DEFAULT NULL , C_Invoice_ID NUMERIC(10) DEFAULT NULL , C_OrderLine_ID NUMERIC(10) DEFAULT NULL , C_Order_ID NUMERIC(10) DEFAULT NULL , C_UOM_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT NULL , CreatedBy NUMERIC(10) DEFAULT NULL , DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', DocumentNo VARCHAR(15) DEFAULT NULL , GrandTotal NUMERIC DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_IntermediateBPLocation_ID NUMERIC(10) NOT NULL, LBR_IntermediateBPartner_ID NUMERIC(10) NOT NULL, LBR_NFS_ID NUMERIC(10) NOT NULL, LBR_NFS_UU VARCHAR(36) DEFAULT NULL , LBR_NFSeCodVerificacao NUMERIC(10) DEFAULT NULL , LBR_NFSeNumero VARCHAR(15) DEFAULT NULL , LBR_NFSeStatus CHAR(1) NOT NULL, LBR_NFSeSubstituida VARCHAR(15) DEFAULT NULL , LBR_NIFTomador VARCHAR(40) DEFAULT NULL , LBR_RPSNumero VARCHAR(15) DEFAULT NULL , LBR_RPSNumeroSubstituida VARCHAR(15) DEFAULT NULL , LBR_RPSSerie VARCHAR(5) DEFAULT NULL , LBR_RPSSerieSubstituida VARCHAR(5) DEFAULT NULL , LBR_RPSStatus CHAR(1) DEFAULT NULL , LBR_RPSTipo CHAR(1) DEFAULT NULL , LBR_RPSTipoSubstituida CHAR(1) DEFAULT NULL , M_Product_ID NUMERIC(10) DEFAULT NULL , Posted CHAR(1) DEFAULT NULL CHECK (Posted IN ('Y','N')), Price NUMERIC DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , Qty NUMERIC NOT NULL, TotalLines NUMERIC DEFAULT NULL , Updated TIMESTAMP DEFAULT NULL , UpdatedBy NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_NFS_Key PRIMARY KEY (LBR_NFS_ID), CONSTRAINT LBR_NFS_UU_idx UNIQUE (LBR_NFS_UU))
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT ADClient_LBRNFS FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT ADOrg_LBRNFS FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CBPartner_LBRNFS FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CBPartnerLocation_LBRNFS FOREIGN KEY (C_BPartner_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CCharge_LBRNFS FOREIGN KEY (C_Charge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CDocType_LBRNFS FOREIGN KEY (C_DocType_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CInvoiceLine_LBRNFS FOREIGN KEY (C_InvoiceLine_ID) REFERENCES c_invoiceline(c_invoiceline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CInvoice_LBRNFS FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT COrderLine_LBRNFS FOREIGN KEY (C_OrderLine_ID) REFERENCES c_orderline(c_orderline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT COrder_LBRNFS FOREIGN KEY (C_Order_ID) REFERENCES c_order(c_order_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CUOM_LBRNFS FOREIGN KEY (C_UOM_ID) REFERENCES c_uom(c_uom_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CreatedBy_LBRNFS FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT LBRIntermediateBPLocation_LBRN FOREIGN KEY (LBR_IntermediateBPLocation_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT LBRIntermediateBPartner_LBRNFS FOREIGN KEY (LBR_IntermediateBPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT MProduct_LBRNFS FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h38min55s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT UpdatedBy_LBRNFS FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 18h48min22s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801035,'Código da NFS-e',800043,801142,'Y',15,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 18:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:48:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','8ea344f9-1cfd-455a-94cb-251a78076adf','Y',380,2)
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801035
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801023
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801015
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801025
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 22/05/2016 18h48min56s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-05-22 18:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 22/05/2016 18h50min44s BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,AccessLevel,EntityType,Author,WorkingTime,Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,AD_Table_ID,Value,WorkflowType,IsValid,DocumentNo,QtyBatchSize,IsBetaFunctionality,Yield,AD_Workflow_UU) VALUES ('Process_NFS','(Standard Process NFS)',800001,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:50:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:50:43','YYYY-MM-DD HH24:MI:SS'),100,1000003,'1','U','iDempiereLBR',0,1,0,0,'D',0,'R','N',800035,'Process_NFS','P','Y','10000000',1,'N',100,'419288e0-5c15-4a10-9e82-8bb6e178314d')
;

-- 22/05/2016 18h51min22s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800004,'(DocAuto)','(Standard Node)',800001,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:51:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:51:21','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'U',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'4c9fb162-880e-4422-8f84-2eeb6f296987')
;

-- 22/05/2016 18h51min29s BRT
UPDATE AD_WF_Node SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 18:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=800004
;

-- 22/05/2016 18h51min44s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800005,'(DocComplete)','(DocComplete)',800001,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:51:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:51:43','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'U',0,0,0,0,0,0,0,'X','X',0,'CO','(DocComplete)',0,'N','N',0,0,100,'637dbf31-7803-473e-acbd-361332df9dac')
;

-- 22/05/2016 18h51min46s BRT
UPDATE AD_WF_Node SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 18:51:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=800005
;

-- 22/05/2016 18h52min0s BRT
UPDATE AD_WF_Node SET Description='(Standard Node)',Updated=TO_TIMESTAMP('2016-05-22 18:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=800005
;

-- 22/05/2016 18h52min16s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800006,'(DocPrepare)','(Standard Node)',800001,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:52:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:52:15','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'U',0,0,0,0,0,0,0,'X','X',0,'PR','(DocPrepare)',0,'N','N',0,0,100,'19fd7d58-1d4a-4833-a361-9fa2c05d458e')
;

-- 22/05/2016 18h52min23s BRT
UPDATE AD_WF_Node SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 18:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=800006
;

-- 22/05/2016 18h52min46s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800007,'(Start)','(Standard Node)',800001,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:52:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:52:45','YYYY-MM-DD HH24:MI:SS'),100,'Z','Y',0,'U',0,0,0,0,0,0,0,'X','X',0,'CO','(Start)',0,'N','N',0,0,100,'c675621e-894d-4e39-96b6-68985636e2c5')
;

-- 22/05/2016 18h52min52s BRT
UPDATE AD_WF_Node SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 18:52:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=800007
;

-- 22/05/2016 18h53min5s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800017,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:53:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:53:04','YYYY-MM-DD HH24:MI:SS'),100,'Processar NFS','N','LBR_ProcessarNFS','N','3','LBR',0,0,800001,'N','N','Y','N','a2b49643-d6b6-42f0-abc5-be46d2151857')
;

-- 22/05/2016 18h53min54s BRT
UPDATE AD_Column SET AD_Process_ID=800017,Updated=TO_TIMESTAMP('2016-05-22 18:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801117
;

-- 22/05/2016 18h53min57s BRT
INSERT INTO t_alter_column values('lbr_nfs','Processing','CHAR(1)',null,'NULL')
;

-- 22/05/2016 18h55min1s BRT
UPDATE AD_Column SET IsToolbarButton='N',Updated=TO_TIMESTAMP('2016-05-22 18:55:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801117
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=90, AD_FieldGroup_ID=107,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801025
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801015
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310, AD_FieldGroup_ID=103, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 22/05/2016 18h57min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360, XPosition=5,Updated=TO_TIMESTAMP('2016-05-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 22/05/2016 18h58min11s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800012,0,0,'Y',TO_TIMESTAMP('2016-05-22 18:58:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 18:58:10','YYYY-MM-DD HH24:MI:SS'),100,'Recibo Provisório de Serviço (RPS)','U','C','Y','731a5f16-00af-4f34-b82c-c526c6fb6e47')
;

-- 22/05/2016 18h58min16s BRT
UPDATE AD_FieldGroup SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 18:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=800012
;

-- 22/05/2016 18h59min1s BRT
UPDATE AD_Field SET SeqNo=240, AD_FieldGroup_ID=800012,Updated=TO_TIMESTAMP('2016-05-22 18:59:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 22/05/2016 19h1min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801144,0,'Nota Fiscal de Serviço',1000026,'LBR_NFS_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:27','YYYY-MM-DD HH24:MI:SS'),100,800296,'N','N','U','N','N','N','Y','0339c09e-c92e-43b9-b3c6-d7dd339cb863','Y',0,'N','N','N')
;

-- 22/05/2016 19h1min30s BRT
UPDATE AD_Column SET FKConstraintName='LBRNFS_LBRDocLineDetails', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 19:01:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801144
;

-- 22/05/2016 19h1min30s BRT
ALTER TABLE LBR_DocLine_Details ADD COLUMN LBR_NFS_ID NUMERIC(10) DEFAULT NULL 
;

-- 22/05/2016 19h1min30s BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBRNFS_LBRDocLineDetails FOREIGN KEY (LBR_NFS_ID) REFERENCES lbr_nfs(lbr_nfs_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 19h1min48s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800044,'Detalhes',800014,20,'Y',1000026,0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:47','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','U','@Processed@=Y','Y','N','2b82508d-ec2c-46d1-a28b-e8e6501666ed','B')
;

-- 22/05/2016 19h1min50s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801036,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800044,1000416,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','d285a1d6-a66a-46a6-b2e6-c77978bdec3b','N',2)
;

-- 22/05/2016 19h1min51s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801037,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800044,1000417,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','f98a309f-38dc-4400-8fd1-1aa4c6b407cc','Y','Y',10,4,2)
;

-- 22/05/2016 19h1min51s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801038,'Siscomex Amount',800044,800522,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','05eef33a-b8bd-4a6d-99c4-22f7fc5753d6','Y',20,2)
;

-- 22/05/2016 19h1min52s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801039,'Declarant CFOP Code','CFOP code from the point of view of the declarant',800044,800561,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','8f49a41b-98c3-438b-bf4f-707fb18220f4','Y',30,2)
;

-- 22/05/2016 19h1min52s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801040,'Nota Fiscal de Serviço',800044,801144,'Y',10,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','3312f622-c6fa-475b-a9b4-39b6fafd6ed6','Y',40,2)
;

-- 22/05/2016 19h1min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801041,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800044,1000423,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','2f61c826-d404-4e15-8c23-9d1d11e70ba4','N',2)
;

-- 22/05/2016 19h1min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801042,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800044,1000424,'Y',36,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','1d971662-4894-452e-a746-40367e449902','Y',50,2)
;

-- 22/05/2016 19h1min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801043,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',800044,1000425,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','df300c4d-ddba-42e1-905b-97591529ab21','Y',60,2)
;

-- 22/05/2016 19h1min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801044,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',800044,1000426,'Y',22,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','a77493d8-9ff2-4d25-9f5f-68ea582745db','Y',70,2)
;

-- 22/05/2016 19h1min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801045,'RMA Line','Return Material Authorization Line','Detail information about the returned goods',800044,1000427,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','8af7550d-2382-4d7f-b2ce-94a321f41bad','Y',80,2)
;

-- 22/05/2016 19h1min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801046,'Product Key','Key of the Product',800044,1000428,'Y',40,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','b17020be-ca3b-48dc-ae3f-7337a95a5352','Y',90,2)
;

-- 22/05/2016 19h1min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801047,'Product Name','Name of the Product',800044,1000429,'Y',255,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','60b4c0d9-d57d-4706-a435-b03ad77623fd','Y',100,5)
;

-- 22/05/2016 19h1min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801048,'NCM','NCM stands for Nomenclatura Comum do MERCOSUL',800044,1000430,'Y',22,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','7129994d-055e-47d9-a117-98bda0773a40','Y',110,2)
;

-- 22/05/2016 19h1min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801049,'EX TIPI','NCM Exception','Identifies an exception to a NCM rule.',800044,1000431,'Y',6,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','815f5655-20db-428f-9763-85c42d9c1e85','Y',120,2)
;

-- 22/05/2016 19h1min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801050,'CFOP','Indentifies the CFOP',800044,1000432,'Y',22,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','ee9d76b6-4b16-4e71-a319-39f82eca621d','Y',130,2)
;

-- 22/05/2016 19h1min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801051,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800044,1000433,'Y',22,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','66b8f562-e8b3-40f8-9314-10f442abf039','Y',140,2)
;

-- 22/05/2016 19h1min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801052,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800044,1000434,'Y',22,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','2e01a88c-b743-45e0-a755-0f75d3f8ec92','Y',150,2)
;

-- 22/05/2016 19h1min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801053,'Taxable Price','Taxable Price','The Taxable Price indicates the Price for a product or service.',800044,1000435,'Y',22,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','7753586b-f404-4b66-921a-fa0f4914037a','Y',160,2)
;

-- 22/05/2016 19h1min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801054,'Insured Amount',800044,1000436,'Y',14,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','b1cda002-16ee-4cac-8b53-22d55fa1cd1a','Y',170,2)
;

-- 22/05/2016 19h2min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801055,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',800044,1000437,'Y',22,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:01:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','7ee85787-6ebc-4d45-8eea-89c7edb3bcb1','Y',180,2)
;

-- 22/05/2016 19h2min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801056,'Freight Amount','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.',800044,1000438,'Y',22,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','173bd283-1128-405f-9f4a-e07e1a779812','Y',190,2)
;

-- 22/05/2016 19h2min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801057,'Taxable UPC/EAN','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ',800044,1000439,'Y',30,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','a5b6962c-7529-477f-a61a-dea7222e21d1','Y',200,2)
;

-- 22/05/2016 19h2min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801058,'Surcharges',800044,1000440,'Y',14,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','e165ff71-9389-4ad6-80ff-f0eb54aca399','Y',210,2)
;

-- 22/05/2016 19h2min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801059,'Gross Amount','Gross Amount','Indicates the gross amount for a product/service/tax/etc.',800044,1000441,'Y',22,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c94a4e0e-9412-4627-b251-9c19e1bb43e8','Y',220,2)
;

-- 22/05/2016 19h2min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801060,'Gross Amount is in Grand Total','This Gross Amount is in Grand Total','The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.',800044,1000442,'Y',1,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','40d4c527-afd2-43ba-b327-7a0f8ebd6cc5','Y',230,2,2)
;

-- 22/05/2016 19h2min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801061,'Order Reference','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',800044,1000443,'Y',20,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','b808cef8-0f8a-4925-88d5-6e6626fe4127','Y',240,2)
;

-- 22/05/2016 19h2min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801062,'Order Line Reference','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.',800044,1000444,'Y',22,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','e2b806d7-d80f-41b3-b702-05a41a3bad62','Y',250,2)
;

-- 22/05/2016 19h2min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801063,'NF-e Specific Product','Specific Product in a NF-e',800044,1000445,'Y',3,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','a75bab88-0d85-4627-8ca0-d28a464e0142','Y',260,2)
;

-- 22/05/2016 19h2min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801064,'FCI Control Number','Import Content Sheet (FCI) Control Number','Identifies the FCI Control Number',800044,1000446,'Y',36,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','5571ed5e-bca3-438e-ba58-b26da3b57403','Y',270,2)
;

-- 22/05/2016 19h2min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801065,'Transaction Tax','Identifies a transaction tax (document/line)',800044,1000447,'Y',10,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','39ae893d-0fbf-4cd3-9054-2816e05b589d','Y',280,2)
;

-- 22/05/2016 19h2min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (801066,'Memo','Memo Text',800044,1000448,'Y',500,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','ebce8cd8-e96f-4de8-a9e0-8222dcb425e7','Y',290,5,8)
;

-- 22/05/2016 19h2min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801067,'Tax Line Total','Tax Line Total Amount',800044,1000449,'Y',22,310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','d3070535-c71a-48bf-b9ef-0c4bf28b9bed','Y',300,2)
;

-- 22/05/2016 19h2min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801068,'Taxation Type','Taxation type used to calculate taxes','Indicates the taxation type used to calculate taxes',800044,1000450,'Y',2,320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','ae3157cc-e5a7-49aa-b94f-6490b2620f9d','Y',310,2)
;

-- 22/05/2016 19h2min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801069,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',800044,1000674,'Y',22,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','9a46fbd6-61bb-4388-b54c-9988c3f23d92','Y',320,2)
;

-- 22/05/2016 19h2min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801070,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800044,1000422,'Y',1,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:02:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:02:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','30d35427-6e75-402d-a2fb-0c3fc4b5f564','Y',330,2,2)
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET SeqNo=30,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801040
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET SeqNo=40,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801046
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801047
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET SeqNo=60, AD_FieldGroup_ID=1000002,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801065
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801068
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_FieldGroup_ID=103, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801053
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801052
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801051
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801067
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_FieldGroup_ID=NULL, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801059
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, XPosition=5,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801060
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801070
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801069
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801050
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801039
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801055
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801042
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801041
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801049
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801064
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801056
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801054
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801044
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801066
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801048
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801063
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801062
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801061
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801045
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801043
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801038
;

-- 22/05/2016 19h7min17s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801058
;

-- 22/05/2016 19h7min18s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801057
;

-- 22/05/2016 19h16min13s BRT
UPDATE AD_Tab SET AD_Column_ID=801144, TabLevel=1,Updated=TO_TIMESTAMP('2016-05-22 19:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=800044
;

-- 22/05/2016 19h16min49s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800045,'ISSQN',800014,30,'Y',1000032,0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:48','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1000581,'N','N',2,'N','U','Y','N','74ad0bb9-8150-486a-851f-17a368ecc687','B')
;

-- 22/05/2016 19h16min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801071,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800045,1000574,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','2b56bfe5-d795-40a0-a984-69d20e34c43f','N',2)
;

-- 22/05/2016 19h16min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801072,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800045,1000575,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','721aa004-6c99-4652-9bc8-62985513ac25','Y','Y',10,4,2)
;

-- 22/05/2016 19h16min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801073,'Código NBS',800045,801140,'Y',9,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','3ab95af6-f145-4991-afa5-552b71ee1944','Y',20,2)
;

-- 22/05/2016 19h16min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801074,'Responsável pela Retenção','Informado somente se IssRetido igual a “1 – Sim” A opção “2 – Intermediário” somente poderá ser selecionada se “CpfCnpjIntermediario” informado.
1 – Tomador;
2 – Intermediário.',800045,801141,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','aa19614b-406f-4cae-ad20-dcfa7d7e687e','Y',30,2)
;

-- 22/05/2016 19h16min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801075,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800045,1000581,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','f289740a-b396-4916-8384-ccbf8e3cde1f','Y',40,2)
;

-- 22/05/2016 19h16min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801076,'Doc Line ISSQN','Doc Line ISSQN','The Doc Line ISSQN is a unique identifier for a doc line details.',800045,1000582,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','d6abe0e3-773d-40bc-9673-11b9d9c6a1d7','N',2)
;

-- 22/05/2016 19h16min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801077,'Doc Line ISSQN','Doc Line ISSQN','The Doc Line ISSQN is a unique identifier for a doc line details.',800045,1000583,'Y',36,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','cf2140c1-f050-4d23-b50f-237feea977cb','Y',50,2)
;

-- 22/05/2016 19h16min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801078,'Tax Base Amount','Defines the Tax Base Amount',800045,1000584,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','1a60a87f-c8b8-47e9-be12-22d18594e5b2','Y',60,2)
;

-- 22/05/2016 19h16min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801079,'Tax Rate','Indicates the Tax Rate',800045,1000585,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','e001d443-5a59-4d4e-9102-e63f07e35382','Y',70,2)
;

-- 22/05/2016 19h16min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801080,'Service Type',800045,1000586,'Y',5,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','3e2622c1-a477-40ab-9b10-6151ffa71e67','Y',80,2)
;

-- 22/05/2016 19h16min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801081,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800045,1000587,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','cda09e51-9255-4da1-b5bc-26ea11d1cb39','Y',90,2)
;

-- 22/05/2016 19h17min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801082,'Tax Amount','Defines the Tax Amount',800045,1000588,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:16:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:16:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','eaf34474-d8ca-4ebe-b147-87dc96182fb5','Y',100,2)
;

-- 22/05/2016 19h17min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801083,'City','City','City in a country',800045,1000589,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','9b8a3a4d-de9b-49d2-a09f-2b29a9e4c685','Y',110,2)
;

-- 22/05/2016 19h17min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801084,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800045,1000594,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','1a01c3f4-50aa-4531-a74d-3d06a3cfb1a3','Y',120,2,2)
;

-- 22/05/2016 19h17min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801085,'Tax Base Deduction Amount','Defines the Tax Base Deduction Amount',800045,1000850,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','28a01f92-dbf6-441c-9dbf-0a08d2fd3cdd','Y',130,2)
;

-- 22/05/2016 19h17min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801086,'Other Withholdings Amount',800045,1000851,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','2fa538f3-6e5c-4e51-b607-4666ba8e8233','Y',140,2)
;

-- 22/05/2016 19h17min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801087,'Unconditioned Discount Amount',800045,1000852,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','4e9dfd51-fcb3-4f16-b86b-71a54d5257aa','Y',150,2)
;

-- 22/05/2016 19h17min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801088,'Conditioned Discount Amount',800045,1000853,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','98f1ca6b-3ed4-4dfd-95c5-4b3e3a57b5e9','Y',160,2)
;

-- 22/05/2016 19h17min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801089,'ISS Withholding Amount',800045,1000854,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','3a0bd344-418a-4165-9b6b-c1e8fad54c6d','Y',170,2)
;

-- 22/05/2016 19h17min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801090,'ISS Chargeability Indicator',800045,1000855,'Y',2,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','750c866e-83a7-48d7-9d29-0c0f1a7d53f9','Y',180,2)
;

-- 22/05/2016 19h17min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801091,'Service Code',800045,1000856,'Y',20,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','e8187c57-820f-4984-9642-c2042845d217','Y',190,2)
;

-- 22/05/2016 19h17min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801092,'Country','Country ','The Country defines a Country.  Each Country must be defined before it can be used in any document.',800045,1000857,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','2fcdbbae-865c-4a92-bfd0-fb8b4b7f5a01','Y',200,2)
;

-- 22/05/2016 19h17min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801093,'Incidence Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800045,1000858,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','5e1f4140-0e29-44c3-b820-694d8ef983e7','Y',210,2)
;

-- 22/05/2016 19h17min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801094,'Incidence City','Incidence City','City in a country',800045,1000859,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','128b98b7-dc3d-429c-a3ee-1cad78cb8beb','Y',220,2)
;

-- 22/05/2016 19h17min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801095,'Process Name','Name of the Process',800045,1000860,'Y',30,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','464b4b75-2979-47bb-9131-e07681958f6d','Y',230,2)
;

-- 22/05/2016 19h17min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801096,'Tax Incentive Indicator',800045,1000861,'Y',1,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','a72421e6-e920-48a6-955e-12a0ec064ff5','Y',240,2)
;

-- 22/05/2016 19h17min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801097,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800045,1000580,'Y',1,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 19:17:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 19:17:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','d3d150fc-45fa-4340-81fe-17599a9b80b5','Y',250,2,2)
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=1000002, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801078
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801079
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801082
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=5,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801084
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801089
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_FieldGroup_ID=104, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801086
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801085
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801087
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801088
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_FieldGroup_ID=800010, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801091
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801073
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801074
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801080
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801090
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801096
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801095
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801097
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801083
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801092
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801075
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801077
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801076
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801094
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801093
;

-- 22/05/2016 19h26min49s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 19:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801081
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801091
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801073
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801074
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801090
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801096
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801095
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801078
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801079
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_FieldGroup_ID=NULL, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801086
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801085
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801082
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801084
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=2,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801100
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801089
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET SeqNo=170, AD_FieldGroup_ID=1000023,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801087
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801088
;

-- 22/05/2016 20h38min24s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801080
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001556
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000454
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000455
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001551
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001552
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000458
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=110, AD_FieldGroup_ID=NULL, ColumnSpan=2,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800511
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001555
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001553
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001554
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001558
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001560
;

-- 22/05/2016 20h39min36s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001559
;

-- 22/05/2016 20h39min39s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801101,'Código NBS',1000032,801140,'Y',9,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 20:39:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 20:39:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','fdb53d76-b530-441e-8548-2a583d71fadd','Y',220,2)
;

-- 22/05/2016 20h39min39s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801102,'Responsável pela Retenção','Informado somente se IssRetido igual a “1 – Sim” A opção “2 – Intermediário” somente poderá ser selecionada se “CpfCnpjIntermediario” informado.
1 – Tomador;
2 – Intermediário.',1000032,801141,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 20:39:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 20:39:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','5d4b2467-06dc-4ef6-815f-33a725b59a47','Y',230,2)
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801101
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801102
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001556
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001562
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001561
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000454
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000455
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001551
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001552
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000458
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, XPosition=5,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001550
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800511
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001555
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001553
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001554
;

-- 22/05/2016 20h41min14s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000456
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001583
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001582
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001588
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001587
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=70, AD_FieldGroup_ID=1000002,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000600
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000601
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000604
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000605
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001577
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001578
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001579
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001580
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001581
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001584
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001586
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001585
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000603
;

-- 22/05/2016 20h42min58s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000602
;

-- 22/05/2016 20h43min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801103,'Has WithHold','Indicates if the Tax has WithHold',1000039,801018,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 20:43:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 20:43:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','e41e4246-80ea-495d-9af5-c2e08d09e8b0','Y',210,2,2)
;

-- 22/05/2016 20h43min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801104,'Código NBS',1000039,801140,'Y',9,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 20:43:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 20:43:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','3326c98c-2a7a-413d-ba6e-8f40e6578654','Y',220,2)
;

-- 22/05/2016 20h43min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801105,'Responsável pela Retenção','Informado somente se IssRetido igual a “1 – Sim” A opção “2 – Intermediário” somente poderá ser selecionada se “CpfCnpjIntermediario” informado.
1 – Tomador;
2 – Intermediário.',1000039,801141,'Y',1,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 20:43:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 20:43:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','c2a89b89-b2b3-4882-a34b-908694475dd6','Y',230,2)
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801104
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801105
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001582
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001588
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001587
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000600
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000601
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000605
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, XPosition=5,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001576
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=2,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801103
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001581
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_FieldGroup_ID=1000023, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001579
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001580
;

-- 22/05/2016 20h44min3s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 20:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000604
;

-- 22/05/2016 20h44min32s BRT
UPDATE AD_Field SET SeqNo=30, AD_FieldGroup_ID=800005,Updated=TO_TIMESTAMP('2016-05-22 20:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801091
;

-- 22/05/2016 20h44min45s BRT
UPDATE AD_Field SET SeqNo=30, AD_FieldGroup_ID=800005,Updated=TO_TIMESTAMP('2016-05-22 20:44:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001583
;

-- 22/05/2016 20h46min39s BRT
UPDATE AD_Tab SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 20:46:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=800045
;

-- 22/05/2016 20h46min59s BRT
UPDATE AD_Field SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 20:46:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801105
;

-- 22/05/2016 20h47min8s BRT
UPDATE AD_Field SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 20:47:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801103
;

-- 22/05/2016 20h47min51s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800028,'Nota Fiscal de Serviço','W',800014,0,0,'Y',TO_TIMESTAMP('2016-05-22 20:47:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 20:47:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','U','Y','2a596447-c5b9-4f96-9aaa-4628fe738fb6')
;

-- 22/05/2016 20h47min51s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 800028, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800028)
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 22/05/2016 20h47min56s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 22/05/2016 20h48min0s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 22/05/2016 20h48min59s BRT
UPDATE AD_Workflow SET EntityType='LBR', IsValid='Y',Updated=TO_TIMESTAMP('2016-05-22 20:48:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=800001
;

-- 22/05/2016 20h49min16s BRT
UPDATE AD_Menu SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-05-22 20:49:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=800028
;

-- 22/05/2016 21h21min26s BRT
UPDATE AD_Table SET AD_Window_ID=800014,Updated=TO_TIMESTAMP('2016-05-22 21:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800035
;

-- 22/05/2016 21h22min18s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (800036,'Impostos da NFS',800014,'LBR_NFSTax',0,'3',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','N','N','L','N','Y','e6046f59-df23-44e5-8811-56d53244895a','N','N','N')
;

-- 22/05/2016 21h22min18s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFSTax',1000000,'N','N','Table LBR_NFSTax','Y','Y',0,0,TO_TIMESTAMP('2016-05-22 21:22:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:18','YYYY-MM-DD HH24:MI:SS'),100,800094,'Y',1000000,1,200000,'31a036ea-077c-4a98-8149-0d9cce8d10c6')
;

-- 22/05/2016 21h22min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801145,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800036,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:27','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBR','N','N','N','Y','08167df9-88be-4a34-a33d-b5bfe372c387','N',0,'N','N','N')
;

-- 22/05/2016 21h22min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801146,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800036,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:28','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','N','N','Y','4d0906dc-694f-42af-950a-5cdfd1d14660','N',0,'N','N','N')
;

-- 22/05/2016 21h22min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801147,0,'Tax Provider',800036,'C_TaxProvider_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:28','YYYY-MM-DD HH24:MI:SS'),100,202582,'N','N','LBR','N','N','N','Y','39d6b163-9c77-46c7-a8de-9704c5da8296','Y',0,'N','N','N')
;

-- 22/05/2016 21h22min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801148,0,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',800036,'C_Tax_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:29','YYYY-MM-DD HH24:MI:SS'),100,213,'N','N','LBR','N','N','N','Y','62d76cf8-ae87-49e1-9a33-cd4907252ccd','Y',0,'N','N','N')
;

-- 22/05/2016 21h22min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801149,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800036,'Created',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:29','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','N','N','Y','53620adb-0b18-4471-ae08-a8c12d98d57a','N',0,'N','N','N')
;

-- 22/05/2016 21h22min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801150,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800036,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:30','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','N','N','Y','6d0aebad-ddfe-416d-bf9e-67be584b7b82','N',0,'N','N','N')
;

-- 22/05/2016 21h22min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801151,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800036,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:30','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','N','N','Y','1453caa4-25ce-45d0-b83a-f92f2904715f','N',0,'N','N','N')
;

-- 22/05/2016 21h22min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801152,0,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800036,'IsTaxIncluded',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:31','YYYY-MM-DD HH24:MI:SS'),100,1065,'Y','N','LBR','N','N','N','Y','1d8e5cd0-b0cb-412f-8697-7930ebca83ec','Y',0,'N','N','N')
;

-- 22/05/2016 21h22min32s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800314,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFSTax_ID','Impostos da NFS','Impostos da NFS','LBR','9218acea-18e4-437d-8660-2b231c278015')
;

-- 22/05/2016 21h22min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801153,0,'Impostos da NFS',800036,'LBR_NFSTax_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:31','YYYY-MM-DD HH24:MI:SS'),100,800314,'N','N','LBR','N','N','N','Y','c8cd0f8e-e8ca-4b6d-bc71-24cd902caee5','N',0,'N','N','N')
;

-- 22/05/2016 21h22min33s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800315,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFSTax_UU','LBR_NFSTax_UU','LBR_NFSTax_UU','LBR','d85fa4c9-e19f-4ecc-a955-45a994cfe767')
;

-- 22/05/2016 21h22min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801154,0,'LBR_NFSTax_UU',800036,'LBR_NFSTax_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:32','YYYY-MM-DD HH24:MI:SS'),100,800315,'N','N','LBR','N','N','N','Y','7dd2864a-04df-432a-bcb9-7a0540f8e1a2','N',0,'N','N','N')
;

-- 22/05/2016 21h22min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801155,0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800036,'LBR_NotaFiscal_ID',22,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:33','YYYY-MM-DD HH24:MI:SS'),100,1000169,'N','N','LBR','N','N','N','Y','47d86c64-5e54-4e04-aa43-d91993e7c9d5','Y',0,'N','N','N')
;

-- 22/05/2016 21h22min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801156,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800036,'Processed',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:34','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBR','N','N','N','Y','47359f04-7976-41c1-aab7-4d1c67833535','Y',0,'N','N','N')
;

-- 22/05/2016 21h22min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801157,0,'Tax Amount','Tax Amount for a document','The Tax Amount displays the total tax amount for a document.',800036,'TaxAmt',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:34','YYYY-MM-DD HH24:MI:SS'),100,1133,'N','N','LBR','N','N','N','Y','e3699226-a5b6-4213-bc5a-a7dcad606ddf','Y',0,'N','N','N')
;

-- 22/05/2016 21h22min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801158,0,'Tax base Amount','Base for calculating the tax amount','The Tax Base Amount indicates the base amount used for calculating the tax amount.',800036,'TaxBaseAmt',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:35','YYYY-MM-DD HH24:MI:SS'),100,1134,'N','N','LBR','N','N','N','Y','b8f14898-e480-40c1-a45a-1e9fdb04d469','Y',0,'N','N','N')
;

-- 22/05/2016 21h22min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801159,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800036,'Updated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:35','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','N','N','Y','966d2004-4446-4960-ae48-f1055e8dbe29','N',0,'N','N','N')
;

-- 22/05/2016 21h22min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801160,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800036,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:22:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:22:36','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','N','N','Y','85bbf0f4-a641-49a3-a82c-b081113efeae','N',0,'N','N','N')
;

-- 22/05/2016 21h22min53s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801155
;

-- 22/05/2016 21h22min53s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801155
;

-- 22/05/2016 21h23min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801161,0,'Nota Fiscal de Serviço',800036,'LBR_NFS_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:23:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:23:11','YYYY-MM-DD HH24:MI:SS'),100,800296,'N','N','U','N','N','N','Y','6a0a4557-88de-492b-9724-773bcdcda5bc','Y',0,'N','N','N')
;

-- 22/05/2016 21h23min13s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNFSTax', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801145
;

-- 22/05/2016 21h23min13s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNFSTax', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801146
;

-- 22/05/2016 21h23min13s BRT
UPDATE AD_Column SET FKConstraintName='CTaxProvider_LBRNFSTax', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801147
;

-- 22/05/2016 21h23min13s BRT
UPDATE AD_Column SET FKConstraintName='CTax_LBRNFSTax', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801148
;

-- 22/05/2016 21h23min13s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNFSTax', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801150
;

-- 22/05/2016 21h23min13s BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNFS_LBRNFSTax', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801161
;

-- 22/05/2016 21h23min14s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNFSTax', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:23:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801160
;

-- 22/05/2016 21h23min14s BRT
CREATE TABLE LBR_NFSTax (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_TaxProvider_ID NUMERIC(10) DEFAULT NULL , C_Tax_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT NULL , CreatedBy NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsTaxIncluded CHAR(1) CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL, LBR_NFSTax_ID NUMERIC(10) NOT NULL, LBR_NFSTax_UU VARCHAR(36) DEFAULT NULL , LBR_NFS_ID NUMERIC(10) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, TaxAmt NUMERIC NOT NULL, TaxBaseAmt NUMERIC NOT NULL, Updated TIMESTAMP DEFAULT NULL , UpdatedBy NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_NFSTax_Key PRIMARY KEY (LBR_NFSTax_ID), CONSTRAINT LBR_NFSTax_UU_idx UNIQUE (LBR_NFSTax_UU))
;

-- 22/05/2016 21h23min14s BRT
ALTER TABLE LBR_NFSTax ADD CONSTRAINT ADClient_LBRNFSTax FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h23min14s BRT
ALTER TABLE LBR_NFSTax ADD CONSTRAINT ADOrg_LBRNFSTax FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h23min14s BRT
ALTER TABLE LBR_NFSTax ADD CONSTRAINT CTaxProvider_LBRNFSTax FOREIGN KEY (C_TaxProvider_ID) REFERENCES c_taxprovider(c_taxprovider_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h23min14s BRT
ALTER TABLE LBR_NFSTax ADD CONSTRAINT CTax_LBRNFSTax FOREIGN KEY (C_Tax_ID) REFERENCES c_tax(c_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h23min14s BRT
ALTER TABLE LBR_NFSTax ADD CONSTRAINT CreatedBy_LBRNFSTax FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h23min14s BRT
ALTER TABLE LBR_NFSTax ADD CONSTRAINT LBRNFS_LBRNFSTax FOREIGN KEY (LBR_NFS_ID) REFERENCES lbr_nfs(lbr_nfs_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h23min14s BRT
ALTER TABLE LBR_NFSTax ADD CONSTRAINT UpdatedBy_LBRNFSTax FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h24min1s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800046,'Impostos',800014,40,'Y',800036,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:00','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',801161,'N','N',1,'N','U','N','N','74bbccd4-41ca-444a-8421-15f5430514a8','B')
;

-- 22/05/2016 21h24min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801106,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800046,801145,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c4440f9c-5849-432f-a0f7-938d9299b7ea','N',2)
;

-- 22/05/2016 21h24min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801107,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800046,801146,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','14bcc05c-6dd6-4dfa-8ddc-a9083fd6fdd8','Y','Y',10,4,2)
;

-- 22/05/2016 21h24min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801108,'Tax Provider',800046,801147,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','a28bbd7f-e043-4002-99b0-a1ae7cb42d77','Y',20,2)
;

-- 22/05/2016 21h24min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801109,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',800046,801148,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','4251dea1-b821-43a9-b218-735f565143cd','Y',30,2)
;

-- 22/05/2016 21h24min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801110,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800046,801152,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','763ff0af-e49a-46ac-8e06-6fe1551f3441','Y',40,2,2)
;

-- 22/05/2016 21h24min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801111,'Impostos da NFS',800046,801153,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','3c57feb7-aaa9-48c6-a2ca-73ffa411cbae','N',2)
;

-- 22/05/2016 21h24min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801112,'LBR_NFSTax_UU',800046,801154,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','8608757c-aed1-41cf-9aa6-35e1c448e21d','N',2)
;

-- 22/05/2016 21h24min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801113,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800046,801156,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','8bfb80e2-b5ad-4a5e-a416-11162043cfbe','Y',50,2,2)
;

-- 22/05/2016 21h24min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801114,'Tax Amount','Tax Amount for a document','The Tax Amount displays the total tax amount for a document.',800046,801157,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','03788e21-8c1d-4de7-9ebe-51bca2a9bbda','Y',60,2)
;

-- 22/05/2016 21h24min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801115,'Tax base Amount','Base for calculating the tax amount','The Tax Base Amount indicates the base amount used for calculating the tax amount.',800046,801158,'Y',22,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','33273e52-5f50-40eb-9e0a-6c03007e84d8','Y',70,2)
;

-- 22/05/2016 21h24min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801116,'Nota Fiscal de Serviço',800046,801161,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','da173a0c-a914-43d7-bfd3-8604bed513f5','Y',80,2)
;

-- 22/05/2016 21h24min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801117,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800046,801151,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:24:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:24:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c59ac9eb-110a-425f-904f-c12c09aef5b9','Y',90,2,2)
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET SeqNo=30, AD_FieldGroup_ID=1000002,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801109
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=5,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801110
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801115
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801114
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801117
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801111
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801112
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801116
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801113
;

-- 22/05/2016 21h24min48s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 21:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801108
;

-- 22/05/2016 21h36min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801162,0,'Transaction Type','Identifies a Transaction Type',800035,'LBR_TransactionType',3,'N','N','N','N','N',0,'N',17,1000003,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:36:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:36:02','YYYY-MM-DD HH24:MI:SS'),100,1000048,'Y','N','U','N','N','N','Y','45558e17-0e29-43b3-bf6e-b001734a59de','Y',0,'N','N','N')
;

-- 22/05/2016 21h36min4s BRT
ALTER TABLE LBR_NFS ADD COLUMN LBR_TransactionType VARCHAR(3) DEFAULT NULL 
;

-- 22/05/2016 21h36min15s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-05-22 21:36:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801162
;

-- 22/05/2016 21h36min16s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_TransactionType','VARCHAR(3)',null,null)
;

-- 22/05/2016 21h36min16s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_TransactionType',null,'NOT NULL',null)
;

-- 22/05/2016 21h36min30s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801118,'Transaction Type','Identifies a Transaction Type',800043,801162,'Y',3,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:36:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:36:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','fade1909-245b-4b80-9258-88eb3530860b','Y',390,2)
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=125, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801021
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=40, AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801004
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801118
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801000
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801001
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801035
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801023
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801025
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801015
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 22/05/2016 21h37min3s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-05-22 21:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 22/05/2016 21h37min31s BRT
UPDATE AD_Column SET DefaultValue='1',Updated=TO_TIMESTAMP('2016-05-22 21:37:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801127
;

-- 22/05/2016 21h37min33s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_NFSeStatus','CHAR(1)',null,'1')
;

-- 22/05/2016 21h37min33s BRT
UPDATE LBR_NFS SET LBR_NFSeStatus='1' WHERE LBR_NFSeStatus IS NULL
;

-- 22/05/2016 21h37min41s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:37:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801021
;

-- 22/05/2016 21h37min54s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:37:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801000
;

-- 22/05/2016 21h38min4s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:38:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801035
;

-- 22/05/2016 21h38min9s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:38:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801023
;

-- 22/05/2016 21h38min51s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 22/05/2016 21h38min53s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 22/05/2016 21h38min55s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 22/05/2016 21h38min57s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:38:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 22/05/2016 21h39min9s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 22/05/2016 21h39min12s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 22/05/2016 21h39min15s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 22/05/2016 21h39min17s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 22/05/2016 21h39min21s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 22/05/2016 21h39min23s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 22/05/2016 21h39min26s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 22/05/2016 21h39min30s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 22/05/2016 21h39min32s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 22/05/2016 21h39min36s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 22/05/2016 21h39min39s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 22/05/2016 21h39min45s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-05-22 21:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 22/05/2016 21h45min47s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801163,0,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800035,'IsTaxIncluded','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:45:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:45:46','YYYY-MM-DD HH24:MI:SS'),100,1065,'Y','N','U','N','N','N','Y','3d85ed39-f857-4d42-926d-75bc6b4cd399','Y',0,'N','N')
;

-- 22/05/2016 21h45min50s BRT
ALTER TABLE LBR_NFS ADD COLUMN IsTaxIncluded CHAR(1) DEFAULT 'Y' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- 22/05/2016 21h46min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801164,0,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',800035,'M_PriceList_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 21:46:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:46:16','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','N','U','N','N','N','Y','16eb93ed-5b2c-4624-8521-0907cd4a4e5f','Y',0,'N','N','N')
;

-- 22/05/2016 21h46min18s BRT
UPDATE AD_Column SET FKConstraintName='MPriceList_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 21:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801164
;

-- 22/05/2016 21h46min18s BRT
ALTER TABLE LBR_NFS ADD COLUMN M_PriceList_ID NUMERIC(10) DEFAULT NULL 
;

-- 22/05/2016 21h46min18s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT MPriceList_LBRNFS FOREIGN KEY (M_PriceList_ID) REFERENCES m_pricelist(m_pricelist_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 21h46min27s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801119,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800043,801163,'Y',1,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:46:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:46:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','a5f8a81c-0b0e-4cd7-b865-1007b99df14e','Y',400,2,2)
;

-- 22/05/2016 21h46min27s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801120,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',800043,801164,'Y',22,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 21:46:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 21:46:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','704d19a2-8316-4e86-b357-b6a16a73181a','Y',410,2)
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801120
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=5,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801119
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801025
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801015
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 22/05/2016 21h49min0s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-05-22 21:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 22/05/2016 22h1min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801165,0,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',800035,'C_Tax_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-05-22 22:01:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 22:01:21','YYYY-MM-DD HH24:MI:SS'),100,213,'Y','N','U','N','N','N','Y','b7a88d52-3221-47c7-bd39-3f614905233d','Y',0,'N','N')
;

-- 22/05/2016 22h1min23s BRT
UPDATE AD_Column SET FKConstraintName='CTax_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-05-22 22:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801165
;

-- 22/05/2016 22h1min23s BRT
ALTER TABLE LBR_NFS ADD COLUMN C_Tax_ID NUMERIC(10) NOT NULL
;

-- 22/05/2016 22h1min23s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CTax_LBRNFS FOREIGN KEY (C_Tax_ID) REFERENCES c_tax(c_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22/05/2016 22h1min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801121,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',800043,801165,'Y',22,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-05-22 22:01:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-22 22:01:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','4779d88c-cbab-417b-af0e-5f40fed47964','Y',420,2)
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801119
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801025
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_FieldGroup_ID=800010, XPosition=1,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801120
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, XPosition=4,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801121
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801015
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 22/05/2016 22h2min22s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-05-22 22:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 23/05/2016 10h3min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801166,0,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',800035,'DateAcct',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2016-05-23 10:03:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-23 10:03:30','YYYY-MM-DD HH24:MI:SS'),100,263,'Y','N','U','N','N','N','Y','fa37d12f-9227-423c-bbe7-74ccc8dd43b0','Y',0,'N','N')
;

-- 23/05/2016 10h3min32s BRT
ALTER TABLE LBR_NFS ADD COLUMN DateAcct TIMESTAMP DEFAULT NULL 
;

-- 23/05/2016 10h3min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801167,0,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',800035,'ProcessedOn',20,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2016-05-23 10:03:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-05-23 10:03:41','YYYY-MM-DD HH24:MI:SS'),100,54128,'Y','N','U','N','N','N','Y','a8ee26d1-ea9d-4832-9cc0-68b2ac542aca','Y',0,'N','N')
;

-- 23/05/2016 10h3min42s BRT
ALTER TABLE LBR_NFS ADD COLUMN ProcessedOn NUMERIC DEFAULT NULL 
;

-- 07/06/2016 22h2min4s BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2016-06-07 22:02:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801133
;

-- 07/06/2016 22h2min5s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_IntermediateBPLocation_ID','NUMERIC(10)',null,'NULL')
;

-- 07/06/2016 22h2min5s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_IntermediateBPLocation_ID',null,'NULL',null)
;

-- 07/06/2016 22h2min10s BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2016-06-07 22:02:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801132
;

-- 07/06/2016 22h2min11s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_IntermediateBPartner_ID','NUMERIC(10)',null,'NULL')
;

-- 07/06/2016 22h2min11s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_IntermediateBPartner_ID',null,'NULL',null)
;

-- 07/06/2016 22h2min30s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-07 22:02:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801108
;

-- 07/06/2016 22h2min33s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-07 22:02:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801109
;

-- 07/06/2016 22h2min36s BRT
INSERT INTO t_alter_column values('lbr_nfs','C_BPartner_ID','NUMERIC(10)',null,null)
;

-- 07/06/2016 22h2min36s BRT
INSERT INTO t_alter_column values('lbr_nfs','C_BPartner_ID',null,'NOT NULL',null)
;

-- 07/06/2016 22h2min41s BRT
INSERT INTO t_alter_column values('lbr_nfs','C_BPartner_Location_ID','NUMERIC(10)',null,null)
;

-- 07/06/2016 22h2min41s BRT
INSERT INTO t_alter_column values('lbr_nfs','C_BPartner_Location_ID',null,'NOT NULL',null)
;

-- 07/06/2016 22h5min53s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800153,'Nota Fiscal de Serviço',183,'NFS',0,0,'Y',TO_TIMESTAMP('2016-06-07 22:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-07 22:05:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR','cefbe339-386b-4aaf-89bf-d8d6a0c1a4f8')
;

-- 07/06/2016 22h9min2s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB'' | @DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-07 22:09:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001513
;

-- 07/06/2016 22h9min6s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB'' | @DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-07 22:09:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001514
;

-- 07/06/2016 22h9min53s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB'' | @DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-07 22:09:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001515
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, XPosition=4,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=220, NumLines=5,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 07/06/2016 22h21min51s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801015
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801120
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801121
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 07/06/2016 22h23min2s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801025
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=30, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801004
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=4,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801021
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801000
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801001
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801035
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801023
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=4,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=4,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, XPosition=4,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=4,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801120
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801121
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801119
;

-- 07/06/2016 22h26min4s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:26:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801118
;

-- 07/06/2016 22h27min7s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=203, AD_Reference_ID=30, AD_Reference_Value_ID=271, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2016-06-07 22:27:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801123
;

-- 07/06/2016 22h27min56s BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800008,'C_InvoiceLine of Invoice','S','C_InvoiceLine.C_Invoice_ID=@C_Invoice_ID@',0,0,'Y',TO_TIMESTAMP('2016-06-07 22:27:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-07 22:27:55','YYYY-MM-DD HH24:MI:SS'),100,'U','b56d57b8-2cd8-423a-8ffb-e4489c773fb5')
;

-- 07/06/2016 22h27min59s BRT
UPDATE AD_Val_Rule SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-06-07 22:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=800008
;

-- 07/06/2016 22h28min27s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=800008, AD_Reference_Value_ID=336,Updated=TO_TIMESTAMP('2016-06-07 22:28:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801122
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=1,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801024
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801022
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801028
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801029
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801030
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801031
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801032
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801033
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801002
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801003
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801120
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801121
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 07/06/2016 22h33min9s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-07 22:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 07/06/2016 23h21min23s BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_CodigoNBS VARCHAR(9) DEFAULT NULL 
;

-- 07/06/2016 23h21min51s BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_ResponsavelRetencao CHAR(1) DEFAULT NULL 
;

-- 07/06/2016 23h55min16s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801122,'Has WithHold','Indicates if the Tax has WithHold',800045,801018,'Y',1,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-07 23:55:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-07 23:55:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','f429d84b-a4d8-46f7-b8d7-08d0ace2e05a','Y',260,2,2)
;

-- 07/06/2016 23h55min37s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=2,Updated=TO_TIMESTAMP('2016-06-07 23:55:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801122
;

-- 08/06/2016 0h15min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801168,0,'Service Code',208,'LBR_ServiceCode',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-08 00:15:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-08 00:15:51','YYYY-MM-DD HH24:MI:SS'),100,1000249,'Y','N','U','N','N','N','Y','e9041814-5c60-487c-bb30-91aaf653542b','Y',0,'N','N','N')
;

-- 08/06/2016 0h15min54s BRT
ALTER TABLE M_Product ADD COLUMN LBR_ServiceCode VARCHAR(20) DEFAULT NULL 
;

-- 08/06/2016 0h16min22s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801123,'Service Code',180,801168,'Y',20,530,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-08 00:16:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-08 00:16:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','ce07dc3b-29d3-4f8f-ba72-7d1816fa91ae','Y',710,2)
;

-- 08/06/2016 0h17min13s BRT
UPDATE AD_Field SET SeqNo=500, AD_FieldGroup_ID=800005,Updated=TO_TIMESTAMP('2016-06-08 00:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801123
;

-- 08/06/2016 0h23min31s BRT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-08 00:23:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801123
;

-- 08/06/2016 0h24min4s BRT
UPDATE AD_Field SET DisplayLogic='@ProductType@=S',Updated=TO_TIMESTAMP('2016-06-08 00:24:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801123
;

-- 08/06/2016 0h26min33s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000002,Updated=TO_TIMESTAMP('2016-06-08 00:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801120
;

-- 08/06/2016 0h27min7s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=131,Updated=TO_TIMESTAMP('2016-06-08 00:27:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801109
;

-- 08/06/2016 0h29min38s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-08 00:29:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801122
;

-- 08/06/2016 0h29min46s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-08 00:29:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801084
;

-- 08/06/2016 0h30min57s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-08 00:30:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800511
;

-- 08/06/2016 0h31min0s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-08 00:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001550
;

-- 08/06/2016 0h31min32s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-08 00:31:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801103
;

-- 08/06/2016 0h31min35s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-08 00:31:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001576
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 10/06/2016 17h42min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801170,0,'Is Document Issued by Client/Org?',800035,'LBR_IsDocIssuedByOrg','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-10 17:42:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:42:14','YYYY-MM-DD HH24:MI:SS'),100,1000232,'Y','N','U','N','N','N','Y','8ed94ef5-bc43-4ae6-83c1-60a1eb45384f','Y',0,'N','N','N')
;

-- 10/06/2016 17h42min23s BRT
ALTER TABLE LBR_NFS ADD COLUMN LBR_IsDocIssuedByOrg CHAR(1) DEFAULT 'Y' CHECK (LBR_IsDocIssuedByOrg IN ('Y','N'))
;

-- 10/06/2016 17h42min59s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-10 17:42:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801170
;

-- 10/06/2016 17h43min5s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_IsDocIssuedByOrg','CHAR(1)',null,'Y')
;

-- 10/06/2016 17h43min5s BRT
UPDATE LBR_NFS SET LBR_IsDocIssuedByOrg='Y' WHERE LBR_IsDocIssuedByOrg IS NULL
;

-- 10/06/2016 17h43min5s BRT
INSERT INTO t_alter_column values('lbr_nfs','LBR_IsDocIssuedByOrg',null,'NOT NULL',null)
;

-- 10/06/2016 17h45min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801172,0,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',800035,'PaymentRule','B',1,'N','N','Y','N','N',0,'N',17,195,0,0,'Y',TO_TIMESTAMP('2016-06-10 17:45:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:45:13','YYYY-MM-DD HH24:MI:SS'),100,1143,'Y','N','U','N','N','N','Y','9c708757-4a32-46ec-a51b-4b1ab55a50eb','Y',0,'N','N')
;

-- 10/06/2016 17h45min15s BRT
ALTER TABLE LBR_NFS ADD COLUMN PaymentRule CHAR(1) DEFAULT 'B' NOT NULL
;

-- 10/06/2016 17h45min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801173,0,'Payment Term','The terms of Payment (timing, discount)','Payment Terms identify the method and timing of payment.',800035,'C_PaymentTerm_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-10 17:45:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:45:34','YYYY-MM-DD HH24:MI:SS'),100,204,'Y','N','U','N','N','N','Y','ac792ff3-965e-4143-866b-e6c78c7e8842','Y',0,'N','N')
;

-- 10/06/2016 17h45min40s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-10 17:45:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801173
;

-- 10/06/2016 17h45min41s BRT
UPDATE AD_Column SET FKConstraintName='CPaymentTerm_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-10 17:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801173
;

-- 10/06/2016 17h45min41s BRT
ALTER TABLE LBR_NFS ADD COLUMN C_PaymentTerm_ID NUMERIC(10) NOT NULL
;

-- 10/06/2016 17h46min16s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CPaymentTerm_LBRNFS FOREIGN KEY (C_PaymentTerm_ID) REFERENCES c_paymentterm(c_paymentterm_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10/06/2016 17h47min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801125,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',800043,801166,'Y',7,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 17:47:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:47:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','beedca17-0b02-4d10-b5e7-50898f9b2167','Y',430,2)
;

-- 10/06/2016 17h47min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801126,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',800043,801167,'Y',20,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 17:47:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:47:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','16dd7ae3-d860-4d08-a191-64189bb426d5','Y',440,2)
;

-- 10/06/2016 17h47min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801127,'Is Document Issued by Client/Org?',800043,801170,'Y',1,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 17:47:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:47:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','a78a72f5-9ce1-422a-9253-2f6f832fbe99','Y',450,2,2)
;

-- 10/06/2016 17h47min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801128,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',800043,801172,'Y',1,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 17:47:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:47:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','8bbd98a3-e5c4-491b-bff4-d45f35e867d5','Y',460,2)
;

-- 10/06/2016 17h47min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801129,'Payment Term','The terms of Payment (timing, discount)','Payment Terms identify the method and timing of payment.',800043,801173,'Y',10,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 17:47:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:47:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','e7b50fa5-3492-4005-acce-52e873d073b0','Y',470,2)
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, XPosition=1,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801128
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200, XPosition=4,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801129
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801026
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801027
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801120
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801121
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801014
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801020
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801018
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801019
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800997
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801005
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801017
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801006
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801016
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801007
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801008
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801009
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801011
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801125
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801126
;

-- 10/06/2016 17h47min49s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2016-06-10 17:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801127
;

-- 10/06/2016 17h52min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801174,0,'Tipo da RPS','Tipo do RPS
1 – Recibo Provisorio de Servicos;
2 – RPS Nota Fiscal Conjugada (Mista); 
3 – Cupom.',217,'LBR_RPSTipo',1,'N','N','N','N','N',0,'N',17,800031,0,0,'Y',TO_TIMESTAMP('2016-06-10 17:52:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:52:19','YYYY-MM-DD HH24:MI:SS'),100,800302,'Y','N','U','N','N','N','Y','195883d9-e5f6-4e40-b293-9b229c54f602','Y',0,'N','N','N')
;

-- 10/06/2016 17h52min21s BRT
ALTER TABLE C_DocType ADD COLUMN LBR_RPSTipo CHAR(1) DEFAULT NULL 
;

-- 10/06/2016 17h56min28s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800317,0,0,'Y',TO_TIMESTAMP('2016-06-10 17:56:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:56:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsRPS','RPS',NULL,'RPS','LBR','bd3d0a37-d709-42d4-a775-afead9cb3481')
;

-- 10/06/2016 17h58min25s BRT
UPDATE AD_Element SET Description='Flag para indicação ser o Documento é um RPS',Updated=TO_TIMESTAMP('2016-06-10 17:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800317
;

-- 10/06/2016 17h58min25s BRT
UPDATE AD_Column SET ColumnName='LBR_IsRPS', Name='RPS', Description='Flag para indicação ser o Documento é um RPS', Help=NULL WHERE AD_Element_ID=800317
;

-- 10/06/2016 17h58min25s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsRPS', Name='RPS', Description='Flag para indicação ser o Documento é um RPS', Help=NULL, AD_Element_ID=800317 WHERE UPPER(ColumnName)='LBR_ISRPS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10/06/2016 17h58min25s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsRPS', Name='RPS', Description='Flag para indicação ser o Documento é um RPS', Help=NULL WHERE AD_Element_ID=800317 AND IsCentrallyMaintained='Y'
;

-- 10/06/2016 17h58min25s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_IsRPS', Name='RPS', Description='Flag para indicação ser o Documento é um RPS', Help=NULL WHERE AD_Element_ID=800317 AND IsCentrallyMaintained='Y'
;

-- 10/06/2016 17h58min25s BRT
UPDATE AD_Field SET Name='RPS', Description='Flag para indicação ser o Documento é um RPS', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800317) AND IsCentrallyMaintained='Y'
;

-- 10/06/2016 17h58min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801175,0,'RPS','Flag para indicação ser o Documento é um RPS',217,'LBR_IsRPS','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-10 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,800317,'Y','N','U','N','N','N','Y','b310cdab-6592-41f7-8e13-74f115526b9f','Y',0,'N','N')
;

-- 10/06/2016 17h59min52s BRT
ALTER TABLE C_DocType ADD COLUMN LBR_IsRPS CHAR(1) DEFAULT 'N' CHECK (LBR_IsRPS IN ('Y','N')) NOT NULL
;

-- 10/06/2016 18h29min8s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800319,0,0,'Y',TO_TIMESTAMP('2016-06-10 18:29:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 18:29:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DocTypeNFS_ID','Tipo de Documento de NFS','Indica o Tipo de Documento de NFS','Tipo de Documento de NFS','U','7ddd0241-39f7-4f97-8ba2-7aa616e0c01a')
;

-- 10/06/2016 18h32min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801177,0,'Tipo de Documento de NFS','Indica o Tipo de Documento de NFS',217,800007,'LBR_DocTypeNFS_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-10 18:32:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 18:32:15','YYYY-MM-DD HH24:MI:SS'),100,800319,'Y','N','U','N','N','N','Y','a7e45957-811b-460f-b09b-e1fee2570e51','Y',0,'N','N')
;

-- 10/06/2016 18h32min16s BRT
ALTER TABLE C_DocType ADD COLUMN LBR_DocTypeNFS_ID NUMERIC(10) DEFAULT NULL 
;

-- 10/06/2016 18h32min34s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801132,'Tipo de Documento de NFS','Indica o Tipo de Documento de NFS',167,801177,'Y',10,530,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 18:32:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 18:32:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','cf35c7bd-35d1-4ab1-94f0-224069102cbe','Y',480,2)
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310, XPosition=1,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801132
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320, XPosition=2,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801131
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330, XPosition=4,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801130
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001935
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001936
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001937
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001938
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001939
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=807
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=808
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54233
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54230
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54232
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=440,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200004
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=450,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3075
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=460,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3072
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=470,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10481
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=480,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10480
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=490,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58859
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=500,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10528
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=510,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10340
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=520,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6567
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=530,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3125
;

-- 10/06/2016 18h33min52s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-10 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10371
;

-- 10/06/2016 18h34min49s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-10 18:34:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801132
;

-- 10/06/2016 18h34min56s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-10 18:34:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801131
;

-- 10/06/2016 18h35min17s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFS'' & @LBR_IsRPS@=Y',Updated=TO_TIMESTAMP('2016-06-10 18:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801130
;

-- 10/06/2016 18h39min30s BRT
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=170,Updated=TO_TIMESTAMP('2016-06-10 18:39:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801177
;

-- 10/06/2016 18h39min31s BRT
UPDATE AD_Column SET FKConstraintName='LBRDocTypeNFS_CDocType', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-10 18:39:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801177
;

-- 10/06/2016 18h39min31s BRT
INSERT INTO t_alter_column values('c_doctype','LBR_DocTypeNFS_ID','NUMERIC(10)',null,'NULL')
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, XPosition=4,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801132
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10345
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10346
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001511
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001512
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001513
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001514
;

-- 10/06/2016 18h50min2s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-10 18:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001515
;

-- 10/06/2016 18h50min3s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-10 18:50:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001710
;

-- 10/06/2016 18h50min3s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-10 18:50:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001711
;

-- 10/06/2016 18h50min40s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' | @DocBaseType@=''POO'' | @DocBaseType@=''APC'' | @DocBaseType@=''ARC'' | @DocBaseType@=''API'' | @DocBaseType@=''ARI'' ',Updated=TO_TIMESTAMP('2016-06-10 18:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801132
;

-- 10/06/2016 19h16min8s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,AD_Process_UU) VALUES (800018,0,0,'Y',TO_TIMESTAMP('2016-06-10 19:16:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 19:16:07','YYYY-MM-DD HH24:MI:SS'),100,'Gerar Nota Fiscal de Serviço',NULL,'Processo para Geração da Nota Fiscal de Serviço irá criar uma NFS baseada neste Documento. Obs.: É obrigatório que um dos itens seja serviço.','N','LBR_ProcCreateNFS','N','org.idempierelbr.nfs.process.ProcCreateNFS','1','LBR',0,0,'N','N','Y','c2412dad-8861-4789-8afa-419fa23f67d7')
;

-- 10/06/2016 19h17min9s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800320,0,0,'Y',TO_TIMESTAMP('2016-06-10 19:17:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 19:17:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProcCreateNFS','Gerar Nota Fiscal de Serviço','Processo para geração da Nota Fiscal de Serviço baseado neste documento.','Gerar Nota Fiscal de Serviço','U','d52356f1-8cb0-4ad0-be9a-ddaa92da0533')
;

-- 10/06/2016 19h17min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801178,0,'Gerar Nota Fiscal de Serviço','Processo para geração da Nota Fiscal de Serviço baseado neste documento.',259,'LBR_ProcCreateNFS',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2016-06-10 19:17:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 19:17:30','YYYY-MM-DD HH24:MI:SS'),100,800320,'Y','N','U','N','N','N','Y','e9412c1b-d6c6-4fc3-8e04-52a9eed3055a','Y',0,'Y','N')
;

-- 10/06/2016 19h17min31s BRT
ALTER TABLE C_Order ADD COLUMN LBR_ProcCreateNFS CHAR(1) DEFAULT NULL 
;

-- 10/06/2016 19h18min33s BRT
UPDATE AD_Column SET AD_Process_ID=800018,Updated=TO_TIMESTAMP('2016-06-10 19:18:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801178
;

-- 10/06/2016 19h18min36s BRT
INSERT INTO t_alter_column values('c_order','LBR_ProcCreateNFS','CHAR(1)',null,'NULL')
;

-- 10/06/2016 19h18min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801179,0,'Gerar Nota Fiscal de Serviço','Processo para geração da Nota Fiscal de Serviço baseado neste documento.',318,'LBR_ProcCreateNFS',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2016-06-10 19:18:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 19:18:41','YYYY-MM-DD HH24:MI:SS'),100,800320,'Y',800018,'N','U','N','N','N','Y','28763390-1e56-4c22-a82d-01b7ecd06d39','Y',0,'Y','N','N')
;

-- 10/06/2016 19h18min43s BRT
ALTER TABLE C_Invoice ADD COLUMN LBR_ProcCreateNFS CHAR(1) DEFAULT NULL 
;

-- 10/06/2016 19h22min33s BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2016-06-10 19:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801178
;

-- 10/06/2016 19h22min51s BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2016-06-10 19:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801179
;

-- 10/06/2016 19h25min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801133,'Gerar Nota Fiscal de Serviço','Processo para geração da Nota Fiscal de Serviço baseado neste documento.',186,801178,'Y',1,460,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 19:25:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 19:25:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','4e5fe587-6110-441c-b63c-bb00a321fe89','Y',680,2,2)
;

-- 10/06/2016 19h25min13s BRT
UPDATE AD_Field SET DisplayLogic='@DocStatus@=CO | @DocStatus@=CL',Updated=TO_TIMESTAMP('2016-06-10 19:25:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801133
;

-- 10/06/2016 19h26min15s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801134,'Gerar Nota Fiscal de Serviço','Processo para geração da Nota Fiscal de Serviço baseado neste documento.',263,801179,'Y',1,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-10 19:26:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-10 19:26:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','1fa972b3-5391-4a0f-aa34-d9e7384afe73','Y',560,2,2)
;

-- 10/06/2016 19h26min27s BRT
UPDATE AD_Field SET DisplayLogic='@DocStatus@=CO | @DocStatus@=CL',Updated=TO_TIMESTAMP('2016-06-10 19:26:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801134
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, XPosition=1,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801021
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=40,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801004
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=4,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801000
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=1,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801001
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=4,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801125
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801035
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801023
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801024
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=5,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801127
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801022
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801028
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801029
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801030
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801031
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801032
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801033
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801002
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801003
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801128
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801129
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801026
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801027
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801120
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801121
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801014
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801020
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801018
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801019
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800997
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801005
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801017
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801006
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801016
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801007
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801008
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801009
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801010
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801011
;

-- 10/06/2016 20h33min31s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-10 20:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801126
;

-- 10/06/2016 20h37min47s BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2016-06-10 20:37:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800997
;

-- 10/06/2016 20h38min5s BRT
UPDATE AD_Field SET Name='Descrição do Serviço', Description='Descrição do Serviço', Help='Descrição do Serviço prestado.',Updated=TO_TIMESTAMP('2016-06-10 20:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800997
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 11/06/2016 9h14min59s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800321,0,0,'Y',TO_TIMESTAMP('2016-06-11 09:14:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-11 09:14:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSSerie','Série da NFS','Série da NFS','U','aabfd5aa-8996-417c-aec6-624b51268059')
;

-- 11/06/2016 9h15min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801180,0,'Série da NFS',800035,'LBR_NFSSerie',5,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-11 09:15:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-11 09:15:11','YYYY-MM-DD HH24:MI:SS'),0,800321,'Y','N','U','N','N','N','Y','1dbc6ed5-c789-4c9d-98a0-a819b3584f30','Y',0,'N','N','N')
;

-- 11/06/2016 9h15min13s BRT
ALTER TABLE LBR_NFS ADD COLUMN LBR_NFSSerie VARCHAR(5) DEFAULT NULL 
;

-- 11/06/2016 9h15min33s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801135,'Série da NFS',800043,801180,'Y',5,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-11 09:15:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-11 09:15:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','d2f6b82a-a572-4d08-a46b-aa09db49ef30','Y',480,2)
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, XPosition=1,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801004
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=4,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801021
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801000
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801135
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801001
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801125
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801035
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801023
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801024
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801127
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801022
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801028
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801029
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801030
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801031
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801032
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801033
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801002
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801003
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801128
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801129
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801026
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801027
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801120
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801121
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801014
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801020
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801018
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801019
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800997
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801005
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801017
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801006
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801016
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801007
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801008
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801009
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801010
;

-- 11/06/2016 9h16min8s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2016-06-11 09:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801011
;

-- 11/06/2016 14h48min31s BRT
UPDATE AD_Table SET IsHighVolume='Y',Updated=TO_TIMESTAMP('2016-06-11 14:48:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800035
;

-- 11/06/2016 14h52min55s BRT
UPDATE AD_Column SET AD_Process_ID=800017,Updated=TO_TIMESTAMP('2016-06-11 14:52:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801116
;

-- 11/06/2016 14h58min6s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=801011
;

-- 11/06/2016 15h4min27s BRT
UPDATE AD_Column SET IsMandatory='Y', IsToolbarButton='B',Updated=TO_TIMESTAMP('2016-06-11 15:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801116
;

-- 11/06/2016 15h5min27s BRT
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2016-06-11 15:05:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801010
;

-- 13/06/2016 21h31min42s BRT
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-13 21:31:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801110
;

-- 13/06/2016 21h31min43s BRT
INSERT INTO t_alter_column values('lbr_nfs','C_DocType_ID','NUMERIC(10)',null,'0')
;

-- 13/06/2016 21h31min43s BRT
UPDATE LBR_NFS SET C_DocType_ID=0 WHERE C_DocType_ID IS NULL
;

-- 13/06/2016 21h31min43s BRT
INSERT INTO t_alter_column values('lbr_nfs','C_DocType_ID',null,'NOT NULL',null)
;

-- 13/06/2016 21h32min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801182,0,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',800035,'C_DocTypeTarget_ID','0',10,'N','N','Y','N','N',0,'N',18,170,0,0,'Y',TO_TIMESTAMP('2016-06-13 21:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 21:31:57','YYYY-MM-DD HH24:MI:SS'),0,197,'Y','N','U','N','N','N','Y','b07caa24-86ca-4454-9f80-0876b2fcc235','Y',0,'N','N')
;

-- 13/06/2016 21h32min3s BRT
UPDATE AD_Column SET FKConstraintName='CDocTypeTarget_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-13 21:32:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801182
;

-- 13/06/2016 21h32min3s BRT
ALTER TABLE LBR_NFS ADD COLUMN C_DocTypeTarget_ID NUMERIC(10) DEFAULT '0' NOT NULL
;

-- 13/06/2016 21h32min3s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT CDocTypeTarget_LBRNFS FOREIGN KEY (C_DocTypeTarget_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/06/2016 21h33min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801183,0,'Approved','Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.',800035,'IsApproved',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-13 21:33:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 21:33:05','YYYY-MM-DD HH24:MI:SS'),0,351,'Y','N','Y','U','N','N','N','Y','5713b66c-f66b-4fe7-8b11-04e4764ffbed','Y',0,'N','N')
;

-- 13/06/2016 21h33min10s BRT
ALTER TABLE LBR_NFS ADD COLUMN IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL
;

-- 13/06/2016 21h34min0s BRT
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2016-06-13 21:34:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801119
;

-- 13/06/2016 21h34min1s BRT
INSERT INTO t_alter_column values('lbr_nfs','Processed','CHAR(1)',null,'N')
;

-- 13/06/2016 21h34min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801136,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',800043,801182,'Y',10,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-13 21:34:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 21:34:40','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','8b499a2d-0dc5-4254-a5bd-befe27c6284a','Y',490,2)
;

-- 13/06/2016 21h34min50s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801137,'Approved','Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.',800043,801183,'Y',1,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-13 21:34:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 21:34:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','43b70953-da9b-4cc4-a529-2e41b851202d','Y',500,2,2)
;

-- 13/06/2016 21h36min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=125, XPosition=1,Updated=TO_TIMESTAMP('2016-06-13 21:36:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801136
;

-- 13/06/2016 21h36min7s BRT
UPDATE AD_Field SET SeqNo=40, AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2016-06-13 21:36:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801021
;

-- 13/06/2016 21h36min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400, XPosition=5,Updated=TO_TIMESTAMP('2016-06-13 21:36:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801010
;

-- 13/06/2016 21h36min7s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-13 21:36:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801137
;

-- 13/06/2016 21h36min7s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-13 21:36:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801004
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 13/06/2016 21h50min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801184,0,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',800035,123,'AD_User_ID',22,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-06-13 21:49:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 21:49:50','YYYY-MM-DD HH24:MI:SS'),0,138,'Y','N','U','N','N','N','Y','b9d26ae9-842a-4753-8683-86a6666e894f','Y',0,'N','N')
;

-- 13/06/2016 21h50min9s BRT
UPDATE AD_Column SET FKConstraintName='ADUser_LBRNFS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-13 21:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801184
;

-- 13/06/2016 21h50min9s BRT
ALTER TABLE LBR_NFS ADD COLUMN AD_User_ID NUMERIC(10) NOT NULL
;

-- 13/06/2016 21h50min9s BRT
ALTER TABLE LBR_NFS ADD CONSTRAINT ADUser_LBRNFS FOREIGN KEY (AD_User_ID) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/06/2016 21h50min26s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801138,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',800043,801184,'Y',22,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-13 21:50:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 21:50:24','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','cf3f59cd-857a-4cad-88aa-316d4e1d9dcc','Y',510,2)
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, XPosition=1,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801138
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801128
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801129
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801026
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801027
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801120
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801121
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801014
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801020
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801018
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801019
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800997
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801005
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801017
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801006
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801016
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801007
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801008
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801009
;

-- 13/06/2016 21h51min5s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2016-06-13 21:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801010
;

-- 13/06/2016 21h51min19s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-13 21:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801127
;

-- 13/06/2016 22h12min27s BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2016-06-13 22:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801184
;

-- 13/06/2016 22h12min28s BRT
INSERT INTO t_alter_column values('lbr_nfs','AD_User_ID','NUMERIC(10)',null,'NULL')
;

-- 13/06/2016 22h12min28s BRT
INSERT INTO t_alter_column values('lbr_nfs','AD_User_ID',null,'NULL',null)
;

-- 13/06/2016 22h25min56s BRT
UPDATE AD_Column SET DefaultValue='Y', ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2016-06-13 22:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801183
;

-- 13/06/2016 22h25min57s BRT
INSERT INTO t_alter_column values('lbr_nfs','IsApproved','CHAR(1)',null,'Y')
;

-- 13/06/2016 22h25min57s BRT
UPDATE LBR_NFS SET IsApproved='Y' WHERE IsApproved IS NULL
;

-- 13/06/2016 23h24min28s BRT
UPDATE AD_Workflow SET Duration=1, IsValid='Y',Updated=TO_TIMESTAMP('2016-06-13 23:24:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Workflow_ID=800001
;	

-- 13/06/2016 23h24min57s BRT
UPDATE AD_WF_Node SET Priority=NULL,Updated=TO_TIMESTAMP('2016-06-13 23:24:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800004
;

-- 13/06/2016 23h25min28s BRT
UPDATE AD_WF_Node SET WorkingTime=NULL,Updated=TO_TIMESTAMP('2016-06-13 23:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800004
;

-- 13/06/2016 23h25min47s BRT
UPDATE AD_WF_Node SET WorkingTime=NULL, Priority=NULL,Updated=TO_TIMESTAMP('2016-06-13 23:25:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800005
;

-- 13/06/2016 23h26min2s BRT
UPDATE AD_WF_Node SET WorkingTime=NULL, Priority=NULL,Updated=TO_TIMESTAMP('2016-06-13 23:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800006
;

-- 13/06/2016 23h26min29s BRT
UPDATE AD_WF_Node SET WorkingTime=NULL, Priority=NULL,Updated=TO_TIMESTAMP('2016-06-13 23:26:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800007
;

-- 13/06/2016 23h27min11s BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (800006,'Y',TO_TIMESTAMP('2016-06-13 23:27:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 23:27:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,800005,'LBR',100,800000,'N','0f090c5b-f036-4fb7-872b-2c9c584d5506')
;

-- 13/06/2016 23h27min51s BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (800007,'Y',TO_TIMESTAMP('2016-06-13 23:27:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 23:27:48','YYYY-MM-DD HH24:MI:SS'),0,0,0,800006,'LBR',10,800001,'Y','556dd7e6-d7b8-48b7-8e86-383ec20de552')
;

-- 13/06/2016 23h28min9s BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (800007,'Y',TO_TIMESTAMP('2016-06-13 23:28:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-13 23:28:06','YYYY-MM-DD HH24:MI:SS'),0,0,0,800004,'LBR',100,800002,'N','4ab77db9-88eb-4c8f-ae9f-2bd06af11982')
;

-- 14/06/2016 19h9min15s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801139,'Tipo da RPS','Tipo do RPS
1 – Recibo Provisorio de Servicos;
2 – RPS Nota Fiscal Conjugada (Mista); 
3 – Cupom.',167,801174,'Y',1,540,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-14 19:09:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-14 19:09:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','eb7e4bb4-530b-43e8-ad6e-821fc3660277','Y',490,2)
;

-- 14/06/2016 19h9min16s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801140,'RPS','Flag para indicação ser o Documento é um RPS',167,801175,'Y',1,550,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-14 19:09:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-14 19:09:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','c480d0aa-d93e-4750-9892-f081bcc72af8','Y',500,2,2)
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=10,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10371
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=20,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=793
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=30,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2033
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=40,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=795
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=796
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2081
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2080
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=794
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3126
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=812
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3317
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2079
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2581
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201886
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3071
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3073
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001709
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800153
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1002045
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801132
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10345
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10346
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001511
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, XPosition=2,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801140
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, XPosition=4,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801139
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001935
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001936
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001937
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001938
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001939
;

-- 14/06/2016 19h9min38s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-14 19:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=807
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=808
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54233
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54230
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54232
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200004
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3075
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=440,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3072
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=450,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10481
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=460,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10480
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=470,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58859
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=480,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10528
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=490,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10340
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=500,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6567
;

-- 14/06/2016 19h9min39s BRT
UPDATE AD_Field SET SeqNo=510,Updated=TO_TIMESTAMP('2016-06-14 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3125
;

-- 14/06/2016 19h10min11s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB'' | @DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-14 19:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001511
;

-- 14/06/2016 19h10min20s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-14 19:10:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801140
;

-- 14/06/2016 19h10min43s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFS'' & @LBR_IsRPS@=''Y''',Updated=TO_TIMESTAMP('2016-06-14 19:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801139
;

-- 14/06/2016 19h14min27s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=800007,Updated=TO_TIMESTAMP('2016-06-14 19:14:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801182
;

-- 14/06/2016 19h19min25s BRT
--INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_DI',1000000,'N','N','Table LBR_DI','Y','Y',0,0,TO_TIMESTAMP('2016-06-14 19:19:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-14 19:19:23','YYYY-MM-DD HH24:MI:SS'),100,800161,'Y',1000000,1,200000,'6e186858-d85f-4e70-8dc0-3c09e119c4d6')
--;

-- 14/06/2016 19h19min25s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFS',1000000,'N','N','Table LBR_NFS','Y','Y',0,0,TO_TIMESTAMP('2016-06-14 19:19:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-06-14 19:19:25','YYYY-MM-DD HH24:MI:SS'),100,800162,'Y',1000000,1,200000,'e05db274-d919-4079-9e9c-55274e644024')
;

-- 14/06/2016 23h6min15s BRT
UPDATE AD_Process SET AD_Workflow_ID=NULL,Updated=TO_TIMESTAMP('2016-06-14 23:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800017
;

-- 14/06/2016 23h6min25s BRT
DELETE FROM AD_Workflow_Trl WHERE AD_Workflow_ID=800001
;

-- 14/06/2016 23h6min25s BRT
DELETE FROM AD_Workflow WHERE AD_Workflow_ID=800001
;

-- 14/06/2016 23h7min26s BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AccessLevel,EntityType,Author,Priority,WorkingTime,"limit",Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,ValidateWorkflow,Value,WorkflowType,IsValid,SetupTime,MovingTime,DocumentNo,QtyBatchSize,QueuingTime,IsBetaFunctionality,Yield,UnitsCycles,OverlapUnits,AD_Workflow_UU) VALUES ('Process_NFS','(Standard Process NFS)',800003,0,0,'Y',TO_TIMESTAMP('2016-06-14 23:07:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:07:24','YYYY-MM-DD HH24:MI:SS'),0,'1','LBR','RoundIT, Pablo',0,0,0,0,0,0,'D',0,'R','N','N','Process_NFS','P','N',0,0,'10000000',1,0,'N',100,0,0,'fff5e4a1-4afd-4c32-a7b4-6d0e62acabc7')
;

-- 14/06/2016 23h8min9s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800016,'(DocAuto)','(Standard Node)',800003,0,0,'Y',TO_TIMESTAMP('2016-06-14 23:08:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:08:09','YYYY-MM-DD HH24:MI:SS'),0,'D','Y',0,'LBR',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'fcb6295f-40d0-4075-9334-2acb013b0b02')
;

-- 14/06/2016 23h8min25s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800017,'(DocComplete)','(Standard Node)',800003,0,0,'Y',TO_TIMESTAMP('2016-06-14 23:08:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:08:25','YYYY-MM-DD HH24:MI:SS'),0,'Z','Y',0,'U',0,0,0,0,0,0,0,'X','X',0,'CO','(DocComplete)',0,'N','N',0,0,100,'20f3874b-d0d6-4998-a63e-9e406cd93332')
;

-- 14/06/2016 23h8min32s BRT
UPDATE AD_WF_Node SET "action"='D', EntityType='LBR',Updated=TO_TIMESTAMP('2016-06-14 23:08:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800017
;

-- 14/06/2016 23h8min55s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800018,'(DocPrepare)','(Standard Node)',800003,0,0,'Y',TO_TIMESTAMP('2016-06-14 23:08:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:08:55','YYYY-MM-DD HH24:MI:SS'),0,'D','Y',0,'LBR',0,0,0,0,0,0,0,'X','X',0,'PR','(DocPrepare)',0,'N','N',0,0,100,'b32df8fa-0c0f-4fbb-be03-fbd890964d5b')
;

-- 14/06/2016 23h9min21s BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU) VALUES (800019,'(Start)','(Standard Node)',800003,0,0,'Y',TO_TIMESTAMP('2016-06-14 23:09:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:09:20','YYYY-MM-DD HH24:MI:SS'),0,'Z','Y',0,'LBR',0,0,0,0,0,0,0,'X','X',0,'CO','(Start)',0,'N','N',0,0,100,'e2371e57-fbdf-4a75-a314-33c41c8bf34e')
;

-- 14/06/2016 23h10min2s BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,Description,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (800019,'Y',TO_TIMESTAMP('2016-06-14 23:10:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:10:01','YYYY-MM-DD HH24:MI:SS'),0,0,0,800018,'LBR',10,'(Standard Approval)',800011,'Y','8880f4be-1905-4184-a0a4-5db978c8e50e')
;

-- 14/06/2016 23h10min32s BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (800019,'Y',TO_TIMESTAMP('2016-06-14 23:10:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:10:32','YYYY-MM-DD HH24:MI:SS'),0,0,0,800016,'LBR',100,800012,'N','9f5cb5cc-268c-4990-afc9-3cac44e8d934')
;

-- 14/06/2016 23h10min59s BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,Description,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (800018,'Y',TO_TIMESTAMP('2016-06-14 23:10:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-14 23:10:58','YYYY-MM-DD HH24:MI:SS'),0,0,0,800017,'LBR',100,'(Standard Transition)',800013,'N','54e38f18-d139-408a-b536-e40b493104bc')
;

-- 14/06/2016 23h12min7s BRT
UPDATE AD_WF_Node SET YPosition=4, XPosition=1,Updated=TO_TIMESTAMP('2016-06-14 23:12:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800016
;

-- 14/06/2016 23h12min9s BRT
UPDATE AD_WF_Node SET YPosition=3, XPosition=3,Updated=TO_TIMESTAMP('2016-06-14 23:12:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800017
;

-- 14/06/2016 23h12min12s BRT
UPDATE AD_WF_Node SET YPosition=2, XPosition=1,Updated=TO_TIMESTAMP('2016-06-14 23:12:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800016
;

-- 14/06/2016 23h12min13s BRT
UPDATE AD_WF_Node SET YPosition=3, XPosition=1,Updated=TO_TIMESTAMP('2016-06-14 23:12:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800016
;

-- 14/06/2016 23h12min17s BRT
UPDATE AD_WF_Node SET YPosition=1, XPosition=1,Updated=TO_TIMESTAMP('2016-06-14 23:12:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800019
;

-- 14/06/2016 23h12min20s BRT
UPDATE AD_WF_Node SET YPosition=1, XPosition=3,Updated=TO_TIMESTAMP('2016-06-14 23:12:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_Node_ID=800018
;

-- 14/06/2016 23h12min58s BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=800019, IsValid='Y',Updated=TO_TIMESTAMP('2016-06-14 23:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Workflow_ID=800003
;

-- 14/06/2016 23h13min17s BRT
UPDATE AD_WF_NodeNext SET Description='(Standard Approval)',Updated=TO_TIMESTAMP('2016-06-14 23:13:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WF_NodeNext_ID=800012
;

-- 14/06/2016 23h15min5s BRT
UPDATE AD_Workflow SET AD_Table_ID=800035, IsValid='Y',Updated=TO_TIMESTAMP('2016-06-14 23:15:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Workflow_ID=800003
;

-- 14/06/2016 23h15min13s BRT
UPDATE AD_Process SET AD_Workflow_ID=800003,Updated=TO_TIMESTAMP('2016-06-14 23:15:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800017
;

-- 14/06/2016 23h35min25s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-14 23:35:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801164
;

-- 14/06/2016 23h35min51s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-14 23:35:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801120
;

-- 14/06/2016 23h36min2s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-14 23:36:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801126
;

-- 14/06/2016 23h36min22s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-14 23:36:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801125
;

-- 14/06/2016 23h36min29s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-14 23:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801100
;

-- 16/06/2016 10h2min4s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800038,'Lote de RPS','Identifies a NF-e Lot','LBR_NFSLot',0,'1',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','Y','L','N','Y','00ccf53a-0dee-4f08-9b66-c9f3742ca952','N','N')
;

-- 16/06/2016 10h2min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801185,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800038,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:33','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','N','N','N','Y','a32471f2-e13e-49f5-a5b5-6615ccc53b79','N',0,'N','N','N')
;

-- 16/06/2016 10h2min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801186,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800038,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:33','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','N','N','N','Y','f1795932-67a6-42d1-9167-e44f3d496b68','N',0,'N','N','N')
;

-- 16/06/2016 10h2min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801187,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800038,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:34','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','N','N','N','Y','42f066a1-706f-402d-ad32-f54724abb1b0','N',0,'N','N','N')
;

-- 16/06/2016 10h2min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801188,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800038,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:34','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','N','N','N','Y','c512f2b5-6101-4a00-860e-d88b22f40172','N',0,'N','N','N')
;

-- 16/06/2016 10h2min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801189,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800038,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:35','YYYY-MM-DD HH24:MI:SS'),0,275,'Y','Y','LBR','N','N','N','Y','8c7f6ab0-e4a7-41c9-8062-c168ec43480a','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801190,0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800038,'DocumentNo',30,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:35','YYYY-MM-DD HH24:MI:SS'),0,290,'N','Y','LBR','N','N','N','Y','cf2e9a85-e58d-4327-a5d8-1f051ac57411','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801191,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800038,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:36','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','N','N','N','Y','245a763f-e396-4fc0-b778-cb3b60b790a1','N',0,'N','N','N')
;

-- 16/06/2016 10h2min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801192,0,'NF-e Lot Queried','Indicate if the NF-e Lot was queried correctly to Sefaz',800038,'LBR_LotQueried','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:36','YYYY-MM-DD HH24:MI:SS'),0,1000266,'Y','N','LBR','N','N','N','Y','ad4a147c-7e13-4ab3-9626-68236787d1d4','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801193,0,'NF-e Lot Queried On','The date+time (expressed in decimal format) when the NF-e Lot has been queried',800038,'LBR_LotQueriedOn',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:37','YYYY-MM-DD HH24:MI:SS'),0,1000258,'Y','N','LBR','N','N','N','Y','3602dc04-4658-4012-a48b-219ad28faccc','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801194,0,'NF-e Lot Query Status','Indicates the status of the query process to Sefaz',800038,'LBR_LotQueryStatus',3,'N','N','N','N','N',0,'N',17,1000039,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:37','YYYY-MM-DD HH24:MI:SS'),0,1000268,'Y','N','LBR','N','N','N','Y','fd364523-6f4b-4bcb-b203-f9477177863b','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801195,0,'NF-e Lot Sending Protocol','Indicates the protocol of the sending process to Sefaz',800038,'LBR_LotSendingProt',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:38','YYYY-MM-DD HH24:MI:SS'),0,1000270,'Y','N','LBR','N','N','N','Y','de3ac902-3f58-4364-acd1-36fa49a87a31','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801196,0,'NF-e Lot Sending Receipt','Indicates the receipt of the sending process to Sefaz',800038,'LBR_LotSendingRec',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:38','YYYY-MM-DD HH24:MI:SS'),0,1000269,'Y','N','LBR','N','N','N','Y','7d682bce-a8b2-4caf-be57-513529f6f407','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801197,0,'NF-e Lot Sending Status','Indicates the status of the sending process to Sefaz',800038,'LBR_LotSendingStatus',3,'N','N','N','N','N',0,'N',17,1000039,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:39','YYYY-MM-DD HH24:MI:SS'),0,1000267,'Y','N','LBR','N','N','N','Y','b3819208-8471-4460-9657-fab459bac43b','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801198,0,'NF-e Lot Sent','Indicate if the NF-e Lot was sent correctly to Sefaz',800038,'LBR_LotSent','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:39','YYYY-MM-DD HH24:MI:SS'),0,1000265,'Y','N','LBR','N','N','N','Y','82725b65-451c-40f0-bb2a-225c6b5269d4','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801199,0,'NF-e Lot Sent On','The date+time (expressed in decimal format) when the NF-e Lot has been sent',800038,'LBR_LotSentOn',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:40','YYYY-MM-DD HH24:MI:SS'),0,1000259,'Y','N','LBR','N','N','N','Y','be32d0a6-2fc5-4ad0-ac56-00b5ec5697eb','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800322,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSLot_ID','Lote de RPS','Lote de RPS','LBR','2fd7d138-a84a-4b2b-af5f-0df9be2575af')
;

-- 16/06/2016 10h2min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801200,0,'Lote de RPS',800038,'LBR_NFSLot_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:40','YYYY-MM-DD HH24:MI:SS'),0,800322,'N','N','LBR','N','N','N','Y','2fd354cb-cfc1-4bf5-bd54-37271493a217','N',0,'N','N','N')
;

-- 16/06/2016 10h2min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800323,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:41','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSLot_UU','LBR_NFSLot_UU','LBR_NFSLot_UU','LBR','f73ed5c4-2328-42fb-863d-5c59fb20b8ee')
;

-- 16/06/2016 10h2min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801201,0,'LBR_NFSLot_UU',800038,'LBR_NFSLot_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:41','YYYY-MM-DD HH24:MI:SS'),0,800323,'N','N','LBR','N','N','N','Y','9e8b3494-a0d8-41ec-bac5-aedf8f7506a0','N',0,'N','N','N')
;

-- 16/06/2016 10h2min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801202,0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800038,'LBR_NotaFiscal_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:42','YYYY-MM-DD HH24:MI:SS'),0,1000170,'N','N','LBR','N','N','N','Y','44259e9b-9d0b-4b32-b725-1be2563d7b4c','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801203,0,'Query NF-e Lot','Process to query NF-e Lot to Sefaz',800038,'LBR_ProcQueryNFeLot',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:43','YYYY-MM-DD HH24:MI:SS'),0,1000264,'Y',1000003,'N','@LBR_LotQueried@=Y','LBR','N','N','N','Y','e012bffc-da7a-4612-a8b2-e56f92241d95','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801204,0,'Send NF-e Lot','Process to send NF-e Lot to Sefaz',800038,'LBR_ProcSendNFeLot',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:43','YYYY-MM-DD HH24:MI:SS'),0,1000263,'Y',1000002,'N','@LBR_LotSent@=Y','LBR','N','N','N','Y','594c4454-0839-4c45-bd35-3260a138bd8c','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801205,0,'Processing Type',800038,'LBR_ProcessingType',1,'N','N','Y','N','N',0,'N',17,1000057,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:44','YYYY-MM-DD HH24:MI:SS'),0,1000262,'N','N','LBR','N','N','N','Y','a9dcd9db-fe2c-4a6f-a897-1543fdac37da','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801206,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800038,'Processed','N',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:44','YYYY-MM-DD HH24:MI:SS'),0,1047,'Y','N','LBR','N','N','N','Y','bdf5ef61-ce38-4b73-b3f5-4771746fb285','Y',0,'N','N','N')
;

-- 16/06/2016 10h2min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801207,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800038,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','N','N','N','Y','3ca776c9-2f48-4bbd-80c3-af27945b5591','N',0,'N','N','N')
;

-- 16/06/2016 10h2min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801208,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800038,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','N','N','N','Y','72aa4432-0177-4be2-8711-fcaceb4fde4f','N',0,'N','N','N')
;

-- 16/06/2016 10h16min22s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800324,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:16:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:16:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcSendNFSLot','Enviar Lote a Prefeitura','Processo para enviar lote da NFS-e para a Prefeitura.','Enviar Lote a Prefeitura','LBR','00b25e1b-ad70-496d-9350-f40d99e39ec3')
;

-- 16/06/2016 10h16min52s BRT
UPDATE AD_Column SET Name='Enviar Lote a Prefeitura', Description='Processo para enviar lote da NFS-e para a Prefeitura.', Help=NULL, ColumnName='LBR_ProcSendNFSLot', AD_Element_ID=800324, AD_Process_ID=NULL,Updated=TO_TIMESTAMP('2016-06-16 10:16:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801204
;

-- 16/06/2016 10h18min13s BRT
UPDATE AD_Element SET Name='Enviar Lote', PrintName='Enviar Lote',Updated=TO_TIMESTAMP('2016-06-16 10:18:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800324
;

-- 16/06/2016 10h18min13s BRT
UPDATE AD_Column SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da NFS-e para a Prefeitura.', Help=NULL WHERE AD_Element_ID=800324
;

-- 16/06/2016 10h18min13s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da NFS-e para a Prefeitura.', Help=NULL, AD_Element_ID=800324 WHERE UPPER(ColumnName)='LBR_PROCSENDNFSLOT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16/06/2016 10h18min13s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da NFS-e para a Prefeitura.', Help=NULL WHERE AD_Element_ID=800324 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h18min13s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da NFS-e para a Prefeitura.', Help=NULL WHERE AD_Element_ID=800324 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h18min13s BRT
UPDATE AD_Field SET Name='Enviar Lote', Description='Processo para enviar lote da NFS-e para a Prefeitura.', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800324) AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h18min13s BRT
UPDATE AD_PrintFormatItem SET PrintName='Enviar Lote', Name='Enviar Lote' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800324)
;

-- 16/06/2016 10h18min30s BRT
UPDATE AD_Element SET Description='Processo para enviar lote da RPS/NFS-e para a Prefeitura.',Updated=TO_TIMESTAMP('2016-06-16 10:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800324
;

-- 16/06/2016 10h18min30s BRT
UPDATE AD_Column SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da RPS/NFS-e para a Prefeitura.', Help=NULL WHERE AD_Element_ID=800324
;

-- 16/06/2016 10h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da RPS/NFS-e para a Prefeitura.', Help=NULL, AD_Element_ID=800324 WHERE UPPER(ColumnName)='LBR_PROCSENDNFSLOT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16/06/2016 10h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da RPS/NFS-e para a Prefeitura.', Help=NULL WHERE AD_Element_ID=800324 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_ProcSendNFSLot', Name='Enviar Lote', Description='Processo para enviar lote da RPS/NFS-e para a Prefeitura.', Help=NULL WHERE AD_Element_ID=800324 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h18min30s BRT
UPDATE AD_Field SET Name='Enviar Lote', Description='Processo para enviar lote da RPS/NFS-e para a Prefeitura.', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800324) AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h22min26s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800325,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:22:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:22:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcQueryNFSLot','Consultar Lote','Processo para Consultar Lote de RPS/NFS-e na Prefeitura','Consultar Lote','LBR','4f1f09b2-f3b8-4635-8c6b-9a5d13936bf2')
;

-- 16/06/2016 10h22min34s BRT
UPDATE AD_Column SET Name='Consultar Lote', Description='Processo para Consultar Lote de RPS/NFS-e na Prefeitura', Help=NULL, ColumnName='LBR_ProcQueryNFSLot', AD_Element_ID=800325, AD_Process_ID=NULL,Updated=TO_TIMESTAMP('2016-06-16 10:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801203
;

-- 16/06/2016 10h22min39s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNFSLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:22:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801185
;

-- 16/06/2016 10h22min39s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNFSLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:22:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801186
;

-- 16/06/2016 10h22min39s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNFSLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:22:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801188
;

-- 16/06/2016 10h22min39s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNFSLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:22:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801208
;

-- 16/06/2016 10h22min39s BRT
CREATE TABLE LBR_NFSLot (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp(), CreatedBy NUMERIC(10) DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , DocumentNo VARCHAR(30) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_LotQueried CHAR(1) DEFAULT 'N' CHECK (LBR_LotQueried IN ('Y','N')) NOT NULL, LBR_LotQueriedOn TIMESTAMP DEFAULT NULL , LBR_LotQueryStatus VARCHAR(3) DEFAULT NULL , LBR_LotSendingProt VARCHAR(255) DEFAULT NULL , LBR_LotSendingRec VARCHAR(255) DEFAULT NULL , LBR_LotSendingStatus VARCHAR(3) DEFAULT NULL , LBR_LotSent CHAR(1) DEFAULT 'N' CHECK (LBR_LotSent IN ('Y','N')) NOT NULL, LBR_LotSentOn TIMESTAMP DEFAULT NULL , LBR_NFSLot_ID NUMERIC(10) DEFAULT NULL , LBR_NFSLot_UU VARCHAR(36) DEFAULT NULL , LBR_NotaFiscal_UU VARCHAR(36) DEFAULT NULL , LBR_ProcQueryNFSLot CHAR(1) DEFAULT NULL , LBR_ProcSendNFSLot CHAR(1) DEFAULT NULL , LBR_ProcessingType CHAR(1) NOT NULL, Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')), Updated TIMESTAMP DEFAULT statement_timestamp(), UpdatedBy NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_NFSLot_Key PRIMARY KEY (LBR_NFSLot_ID), CONSTRAINT LBR_NFSLot_UU_idx UNIQUE (LBR_NFSLot_UU))
;

-- 16/06/2016 10h22min39s BRT
ALTER TABLE LBR_NFSLot ADD CONSTRAINT ADClient_LBRNFSLot FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h22min39s BRT
ALTER TABLE LBR_NFSLot ADD CONSTRAINT ADOrg_LBRNFSLot FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h22min39s BRT
ALTER TABLE LBR_NFSLot ADD CONSTRAINT CreatedBy_LBRNFSLot FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h22min39s BRT
ALTER TABLE LBR_NFSLot ADD CONSTRAINT UpdatedBy_LBRNFSLot FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h23min7s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (800039,'Linha do Lote de RPS','LBR_NFSLotLine',0,'3',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','Y','N','LBR','N','N','L','N','Y','a9f65253-8f24-4ad9-b05b-4afd00a24c17','N','N','N')
;

-- 16/06/2016 10h23min8s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFSLotLine',1000000,'N','N','Table LBR_NFSLotLine','Y','Y',0,0,TO_TIMESTAMP('2016-06-16 10:23:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:07','YYYY-MM-DD HH24:MI:SS'),0,800209,'Y',1000000,1,200000,'c4588ba3-afad-4239-9f38-a7553d137397')
;

-- 16/06/2016 10h23min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801209,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800039,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:26','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','N','N','N','Y','be1aa40c-7e10-49e6-8e75-86ba692a8529','N',0,'N','N','N')
;

-- 16/06/2016 10h23min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801210,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800039,104,'AD_Org_ID','@AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:26','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','N','N','N','Y','830f2cd5-f3f6-4819-9152-2f54057ce8ee','N',0,'N','N','N')
;

-- 16/06/2016 10h23min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801211,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800039,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:27','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','N','N','N','Y','82415a0c-b6bf-4fa2-ad35-028c2ee0a9a3','N',0,'N','N','N')
;

-- 16/06/2016 10h23min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801212,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800039,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:27','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','N','N','N','Y','93bfb8e0-84d8-4082-8784-f4655d581629','N',0,'N','N','N')
;

-- 16/06/2016 10h23min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801213,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800039,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:28','YYYY-MM-DD HH24:MI:SS'),0,275,'Y','Y','LBR','N','Y','N','Y','2ed7360a-17fe-4344-9631-d2321f83cb1d','Y',0,'N','N','N')
;

-- 16/06/2016 10h23min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801214,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800039,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:28','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','N','N','N','Y','b382d677-ace9-48cd-ae14-22809603889d','N',0,'N','N','N')
;

-- 16/06/2016 10h23min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801215,0,'DigestValue','Identifies a DigestValue',800039,'LBR_DigestValue',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:29','YYYY-MM-DD HH24:MI:SS'),0,1000273,'Y','N','LBR','N','N','N','Y','b124a363-b20f-4c17-9bb1-900e4ceccc0b','Y',0,'N','N','N')
;

-- 16/06/2016 10h23min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801216,0,'NF-e Lot Sending Protocol','Indicates the protocol of the sending process to Sefaz',800039,'LBR_LotSendingProt',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:29','YYYY-MM-DD HH24:MI:SS'),0,1000270,'Y','N','LBR','N','N','N','Y','d750a665-0bd5-4af5-8016-deab6697d7be','Y',0,'N','N','N')
;

-- 16/06/2016 10h23min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801217,0,'NFe ID',800039,'LBR_NFeID',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:30','YYYY-MM-DD HH24:MI:SS'),0,1000172,'Y','N','LBR','N','N','N','Y','36391058-e2a9-498f-b802-87969f2b2610','Y',0,'N','N','N')
;

-- 16/06/2016 10h23min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801218,0,'NFe Status',800039,'LBR_NFeStatus',3,'N','N','N','N','N',0,'N',17,1000039,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:30','YYYY-MM-DD HH24:MI:SS'),0,1000171,'Y','N','LBR','N','N','N','Y','7a3edfbe-ecc4-46ad-bad9-bf0a28dcdc63','Y',0,'N','N','N')
;

-- 16/06/2016 10h23min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800326,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSLotLine_ID','Linha do Lote de RPS','Linha do Lote de RPS','LBR','59b18858-c26c-4008-bf78-23a0bf4f22cd')
;

-- 16/06/2016 10h23min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801219,0,'Linha do Lote de RPS',800039,'LBR_NFSLotLine_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:31','YYYY-MM-DD HH24:MI:SS'),0,800326,'N','N','LBR','N','N','N','Y','7cb423ea-c227-4053-ac4f-d06debc00280','N',0,'N','N','N')
;

-- 16/06/2016 10h23min32s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800327,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSLotLine_UU','LBR_NFSLotLine_UU','LBR_NFSLotLine_UU','LBR','e04f5ade-052c-4ac9-bb7b-f61408a4acec')
;

-- 16/06/2016 10h23min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801220,0,'LBR_NFSLotLine_UU',800039,'LBR_NFSLotLine_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:32','YYYY-MM-DD HH24:MI:SS'),0,800327,'N','N','LBR','N','N','N','Y','42ed4e2d-6995-4bb3-8227-c1ee1ffd1921','N',0,'N','N','N')
;

-- 16/06/2016 10h23min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801221,0,'NF-e Lot','Identifies a NF-e Lot',800039,'LBR_NotaFiscalLot_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,1000260,'N','N','LBR','N','N','N','Y','ee6040dd-8d4a-4571-8c61-e4bf6c7f5d09','Y',0,'N','N','C')
;

-- 16/06/2016 10h23min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801222,0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800039,'LBR_NotaFiscal_ID',22,'N','N','Y','N','N',0,'N',30,1000058,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,1000169,'N','N','LBR','N','N','N','Y','9337f7c0-da12-45a5-945f-45370950b4ed','Y',0,'N','N','C')
;

-- 16/06/2016 10h23min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801223,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800039,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:34','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','N','N','N','Y','a2eae7d9-fd4e-4aac-b1ff-2192ec9aff61','N',0,'N','N','N')
;

-- 16/06/2016 10h23min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801224,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800039,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:23:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:23:34','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','N','N','N','Y','d06057b8-36e3-4cac-ad87-bcf10468232c','N',0,'N','N','N')
;

-- 16/06/2016 10h27min48s BRT
UPDATE AD_Column SET Name='Código da NFS-e', Description=NULL, Help=NULL, ColumnName='LBR_NFSeNumero', FieldLength=15, AD_Element_ID=800313,Updated=TO_TIMESTAMP('2016-06-16 10:27:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801217
;

-- 16/06/2016 10h29min33s BRT
UPDATE AD_Column SET Name='Número da RPS', Description=NULL, Help=NULL, ColumnName='LBR_RPSNumero', AD_Element_ID=800304,Updated=TO_TIMESTAMP('2016-06-16 10:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801217
;

-- 16/06/2016 10h29min49s BRT
UPDATE AD_Column SET Name='Nota Fiscal de Serviço', Description=NULL, Help=NULL, ColumnName='LBR_NFS_ID', FieldLength=10, AD_Reference_ID=19, AD_Reference_Value_ID=NULL, AD_Element_ID=800296, FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:29:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801222
;

-- 16/06/2016 10h30min3s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801221
;

-- 16/06/2016 10h30min3s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801221
;

-- 16/06/2016 10h30min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801225,0,'Lote de RPS',800039,'LBR_NFSLot_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:30:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:30:26','YYYY-MM-DD HH24:MI:SS'),0,800322,'N','N','U','N','N','N','Y','365e7545-8315-4f7d-a63d-4508203c476b','Y',0,'N','N','N')
;

-- 16/06/2016 10h34min36s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800328,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:34:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:34:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSeStatusCode','Código de Status','Código de Status de Validação do RPS/NFS-e','Código de Status','U','099ddc1e-06cb-4c75-bb27-9c704bac4cdd')
;

-- 16/06/2016 10h34min40s BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-06-16 10:34:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800328
;

-- 16/06/2016 10h35min44s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800329,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:35:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:35:44','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSeStatusDescr','Descrição do Estado do RPS/NFS-e','Código de Status de Validação do RPS/NFS-e','Descrição do Estado do RPS/NFS-e','U','cde36b4b-b375-4ade-a001-9597ee3784b3')
;

-- 16/06/2016 10h36min49s BRT
UPDATE AD_Element SET Name='Código de Retorno', PrintName='Código de Retorno',Updated=TO_TIMESTAMP('2016-06-16 10:36:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800328
;

-- 16/06/2016 10h36min49s BRT
UPDATE AD_Column SET ColumnName='LBR_NFSeStatusCode', Name='Código de Retorno', Description=NULL, Help='Código de Status de Validação do RPS/NFS-e' WHERE AD_Element_ID=800328
;

-- 16/06/2016 10h36min49s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeStatusCode', Name='Código de Retorno', Description=NULL, Help='Código de Status de Validação do RPS/NFS-e', AD_Element_ID=800328 WHERE UPPER(ColumnName)='LBR_NFSESTATUSCODE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16/06/2016 10h36min49s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeStatusCode', Name='Código de Retorno', Description=NULL, Help='Código de Status de Validação do RPS/NFS-e' WHERE AD_Element_ID=800328 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h36min49s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_NFSeStatusCode', Name='Código de Retorno', Description=NULL, Help='Código de Status de Validação do RPS/NFS-e' WHERE AD_Element_ID=800328 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h36min49s BRT
UPDATE AD_Field SET Name='Código de Retorno', Description=NULL, Help='Código de Status de Validação do RPS/NFS-e' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800328) AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h36min49s BRT
UPDATE AD_PrintFormatItem SET PrintName='Código de Retorno', Name='Código de Retorno' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800328)
;

-- 16/06/2016 10h37min30s BRT
UPDATE AD_Element SET Name='Descrição do Retorno', Help='Descrição do Retorno da Validação do RPS/NFS-e', PrintName='Descrição do Retorno',Updated=TO_TIMESTAMP('2016-06-16 10:37:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800329
;

-- 16/06/2016 10h37min30s BRT
UPDATE AD_Column SET ColumnName='LBR_NFSeStatusDescr', Name='Descrição do Retorno', Description=NULL, Help='Descrição do Retorno da Validação do RPS/NFS-e' WHERE AD_Element_ID=800329
;

-- 16/06/2016 10h37min30s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeStatusDescr', Name='Descrição do Retorno', Description=NULL, Help='Descrição do Retorno da Validação do RPS/NFS-e', AD_Element_ID=800329 WHERE UPPER(ColumnName)='LBR_NFSESTATUSDESCR' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16/06/2016 10h37min30s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFSeStatusDescr', Name='Descrição do Retorno', Description=NULL, Help='Descrição do Retorno da Validação do RPS/NFS-e' WHERE AD_Element_ID=800329 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h37min30s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_NFSeStatusDescr', Name='Descrição do Retorno', Description=NULL, Help='Descrição do Retorno da Validação do RPS/NFS-e' WHERE AD_Element_ID=800329 AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h37min30s BRT
UPDATE AD_Field SET Name='Descrição do Retorno', Description=NULL, Help='Descrição do Retorno da Validação do RPS/NFS-e' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800329) AND IsCentrallyMaintained='Y'
;

-- 16/06/2016 10h37min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='Descrição do Retorno', Name='Descrição do Retorno' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800329)
;

-- 16/06/2016 10h37min45s BRT
UPDATE AD_Column SET Name='Código de Retorno', Description=NULL, Help='Código de Status de Validação do RPS/NFS-e', ColumnName='LBR_NFSeStatusCode', AD_Element_ID=800328,Updated=TO_TIMESTAMP('2016-06-16 10:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801218
;

-- 16/06/2016 10h38min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801226,0,'Descrição do Retorno','Descrição do Retorno da Validação do RPS/NFS-e',800039,'LBR_NFSeStatusDescr',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:38:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:38:11','YYYY-MM-DD HH24:MI:SS'),0,800329,'Y','N','U','N','N','N','Y','7846e95f-5f73-4ec7-9321-68e9335e036b','Y',0,'N','N')
;

-- 16/06/2016 10h38min39s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801215
;

-- 16/06/2016 10h38min39s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801215
;

-- 16/06/2016 10h38min44s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801216
;

-- 16/06/2016 10h38min44s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801216
;

-- 16/06/2016 10h38min52s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNFSLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801209
;

-- 16/06/2016 10h38min53s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNFSLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801210
;

-- 16/06/2016 10h38min53s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNFSLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801212
;

-- 16/06/2016 10h38min53s BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNFSLot_LBRNFSLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801225
;

-- 16/06/2016 10h38min53s BRT
UPDATE AD_Column SET FKConstraintName='LBRNFS_LBRNFSLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801222
;

-- 16/06/2016 10h38min53s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNFSLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-16 10:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801224
;

-- 16/06/2016 10h38min53s BRT
CREATE TABLE LBR_NFSLotLine (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT statement_timestamp(), CreatedBy NUMERIC(10) DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_NFSLotLine_ID NUMERIC(10) DEFAULT NULL , LBR_NFSLotLine_UU VARCHAR(36) DEFAULT NULL , LBR_NFSLot_ID NUMERIC(10) NOT NULL, LBR_NFS_ID NUMERIC(10) NOT NULL, LBR_NFSeStatusCode VARCHAR(3) DEFAULT NULL , LBR_NFSeStatusDescr VARCHAR(255) DEFAULT NULL , LBR_RPSNumero VARCHAR(15) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp(), UpdatedBy NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_NFSLotLine_Key PRIMARY KEY (LBR_NFSLotLine_ID), CONSTRAINT LBR_NFSLotLine_UU_idx UNIQUE (LBR_NFSLotLine_UU))
;

-- 16/06/2016 10h38min53s BRT
ALTER TABLE LBR_NFSLotLine ADD CONSTRAINT ADClient_LBRNFSLotLine FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h38min53s BRT
ALTER TABLE LBR_NFSLotLine ADD CONSTRAINT ADOrg_LBRNFSLotLine FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h38min53s BRT
ALTER TABLE LBR_NFSLotLine ADD CONSTRAINT CreatedBy_LBRNFSLotLine FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h38min53s BRT
ALTER TABLE LBR_NFSLotLine ADD CONSTRAINT LBRNFSLot_LBRNFSLotLine FOREIGN KEY (LBR_NFSLot_ID) REFERENCES lbr_nfslot(lbr_nfslot_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h38min53s BRT
ALTER TABLE LBR_NFSLotLine ADD CONSTRAINT LBRNFS_LBRNFSLotLine FOREIGN KEY (LBR_NFS_ID) REFERENCES lbr_nfs(lbr_nfs_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h38min53s BRT
ALTER TABLE LBR_NFSLotLine ADD CONSTRAINT UpdatedBy_LBRNFSLotLine FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/06/2016 10h39min15s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800015,'Lote de RPS',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:15','YYYY-MM-DD HH24:MI:SS'),0,'M','N','LBR','Y','N',0,0,'N','b3d8b2e7-b782-4230-b880-31cbff6a0548')
;

-- 16/06/2016 10h39min29s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800047,'Lote de RPS',800015,10,'Y',800038,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',0,'N','LBR','Y','N','445da11f-6f2d-4a90-8702-790a35f5d184','B')
;

-- 16/06/2016 10h39min32s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801141,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800047,801185,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f107608a-f04f-4ccc-a7ab-23b844d70491','N',2)
;

-- 16/06/2016 10h39min33s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801142,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800047,801186,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:32','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0027390b-afe3-4a37-b0bb-61ba99f6c0ca','Y','Y',10,4,2)
;

-- 16/06/2016 10h39min33s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801143,'Description','Optional short description of the record','A description is limited to 255 characters.',800047,801189,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','b8e76e92-5f63-4532-a73b-c7faf9537357','Y',20,5)
;

-- 16/06/2016 10h39min36s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801144,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800047,801190,'Y',30,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','8f151884-b7e7-44fe-8675-7363dbeb1541','Y',30,2)
;

-- 16/06/2016 10h39min38s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801145,'NF-e Lot Queried','Indicate if the NF-e Lot was queried correctly to Sefaz',800047,801192,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:36','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','19fcc6b8-8a46-416e-9301-bcb8e5a79f9b','Y',40,2,2)
;

-- 16/06/2016 10h39min39s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801146,'NF-e Lot Queried On','The date+time (expressed in decimal format) when the NF-e Lot has been queried',800047,801193,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:38','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4c5a3bec-326f-4a1d-ba9e-bfc959655916','Y',50,2)
;

-- 16/06/2016 10h39min40s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801147,'NF-e Lot Query Status','Indicates the status of the query process to Sefaz',800047,801194,'Y',3,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:39','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5cffc38e-92fa-4977-9a9c-911b01740572','Y',60,2)
;

-- 16/06/2016 10h39min40s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801148,'NF-e Lot Sending Protocol','Indicates the protocol of the sending process to Sefaz',800047,801195,'Y',255,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:40','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a42d7f7e-7ab7-47b3-80fa-e0ed3bbd9829','Y',70,5)
;

-- 16/06/2016 10h39min41s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801149,'NF-e Lot Sending Receipt','Indicates the receipt of the sending process to Sefaz',800047,801196,'Y',255,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:40','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','dd75a49e-8766-4ce5-a344-96dc3af5339b','Y',80,5)
;

-- 16/06/2016 10h39min41s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801150,'NF-e Lot Sending Status','Indicates the status of the sending process to Sefaz',800047,801197,'Y',3,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:41','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d0c5aa25-cef6-45d6-842d-76601051fc9b','Y',90,2)
;

-- 16/06/2016 10h39min42s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801151,'NF-e Lot Sent','Indicate if the NF-e Lot was sent correctly to Sefaz',800047,801198,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:41','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d69333ee-a854-4aeb-8e0f-4b2154297efc','Y',100,2,2)
;

-- 16/06/2016 10h39min42s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801152,'NF-e Lot Sent On','The date+time (expressed in decimal format) when the NF-e Lot has been sent',800047,801199,'Y',7,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:42','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d96a8a50-e827-4ada-984f-f214170b36a1','Y',110,2)
;

-- 16/06/2016 10h39min43s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801153,'Lote de RPS',800047,801200,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:42','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4df06742-6511-4dd4-ae48-d2c71a824ee3','N',2)
;

-- 16/06/2016 10h39min43s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801154,'LBR_NFSLot_UU',800047,801201,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:43','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','83f401c3-7f9d-43f2-ab5d-f6f69c072ae7','N',2)
;

-- 16/06/2016 10h39min44s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801155,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800047,801202,'Y',36,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:43','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3b938f6c-bd54-4a97-95dc-2836f761f38d','Y',120,2)
;

-- 16/06/2016 10h39min44s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801156,'Consultar Lote','Processo para Consultar Lote de RPS/NFS-e na Prefeitura',800047,801203,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:44','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','6404d46d-af0f-441e-8413-4cf991c69506','Y',130,2,2)
;

-- 16/06/2016 10h39min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801157,'Enviar Lote','Processo para enviar lote da RPS/NFS-e para a Prefeitura.',800047,801204,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:44','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','91ef47ae-cf65-4ac1-af02-c7a513180f3e','Y',140,2,2)
;

-- 16/06/2016 10h39min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801158,'Processing Type',800047,801205,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1378f39b-039b-46a9-b08c-a33cd987f2f5','Y',150,2)
;

-- 16/06/2016 10h39min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801159,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800047,801206,'Y',1,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','de34fae7-074a-4594-8f12-9254530ce98b','Y',160,2,2)
;

-- 16/06/2016 10h39min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801160,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800047,801191,'Y',1,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:39:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:39:46','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','2555a46e-46c0-4022-9156-e4a0661f3bd7','Y',170,2,2)
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET SeqNo=30,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801144
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=5,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801159
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=1, ColumnSpan=3,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801158
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801143
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_FieldGroup_ID=1000016, XPosition=2,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801157
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=5,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801151
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801150
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=4,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801146
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET SeqNo=110, ColumnSpan=2,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801148
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=4, ColumnSpan=2,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801149
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_FieldGroup_ID=1000017, XPosition=2,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801156
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, XPosition=5,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801145
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801147
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, XPosition=4,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801152
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801160
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801155
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801154
;

-- 16/06/2016 10h44min51s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-16 10:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801153
;

-- 16/06/2016 10h45min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:45:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801155
;

-- 16/06/2016 10h45min45s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-16 10:45:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801147
;

-- 16/06/2016 10h45min45s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2016-06-16 10:45:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801152
;

-- 16/06/2016 10h46min17s BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=801155
;

-- 16/06/2016 10h46min17s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=801155
;

-- 16/06/2016 10h46min20s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801202
;

-- 16/06/2016 10h46min20s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801202
;

-- 16/06/2016 10h46min51s BRT
UPDATE AD_Column SET FieldLength=255, AD_Reference_ID=10, AD_Reference_Value_ID=NULL, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2016-06-16 10:46:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801194
;

-- 16/06/2016 10h46min52s BRT
INSERT INTO t_alter_column values('lbr_nfslot','LBR_LotQueryStatus','VARCHAR(255)',null,'NULL')
;

-- 16/06/2016 10h47min13s BRT
UPDATE AD_Column SET FieldLength=255, AD_Reference_ID=10, AD_Reference_Value_ID=NULL, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2016-06-16 10:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801197
;

-- 16/06/2016 10h47min14s BRT
INSERT INTO t_alter_column values('lbr_nfslot','LBR_LotSendingStatus','VARCHAR(255)',null,'NULL')
;

-- 16/06/2016 10h50min5s BRT
UPDATE AD_Field SET SeqNo=50, ColumnSpan=2,Updated=TO_TIMESTAMP('2016-06-16 10:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801158
;

-- 16/06/2016 10h50min5s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2016-06-16 10:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801147
;

-- 16/06/2016 10h50min5s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2016-06-16 10:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801152
;

-- 16/06/2016 10h50min56s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800048,'Linhas do Lote',800015,20,'Y',800039,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:50:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:50:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',801225,'N','N',0,'N','U','Y','N','7d95894f-bd2f-45d9-94a8-2b4b7bcec801','B')
;

-- 16/06/2016 10h51min2s BRT
UPDATE AD_Tab SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-06-16 10:51:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800048
;

-- 16/06/2016 10h51min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801161,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800048,801209,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3fed911e-c08e-4eaa-8502-da43d5d873d3','N',2)
;

-- 16/06/2016 10h51min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801162,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800048,801210,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d4b0a620-5421-4a46-af6f-2d2c3107db67','Y','Y',10,4,2)
;

-- 16/06/2016 10h51min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801163,'Description','Optional short description of the record','A description is limited to 255 characters.',800048,801213,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','09210b22-2b36-4b9f-b9b3-7a8c4d406c18','Y',20,5)
;

-- 16/06/2016 10h51min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801164,'Número da RPS',800048,801217,'Y',15,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e7886a3d-293e-427f-8a58-8fb9e7789e53','Y',30,2)
;

-- 16/06/2016 10h51min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801165,'Código de Retorno','Código de Status de Validação do RPS/NFS-e',800048,801218,'Y',3,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','fcf712d2-4751-4a8b-961b-c37c1a2d1848','Y',40,2)
;

-- 16/06/2016 10h51min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801166,'Linha do Lote de RPS',800048,801219,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','93e571bc-1740-42f5-8295-c2433dfccee3','N',2)
;

-- 16/06/2016 10h51min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801167,'LBR_NFSLotLine_UU',800048,801220,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:06','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','03907002-66c3-479f-a59d-e950b75a2ff4','N',2)
;

-- 16/06/2016 10h51min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801168,'Nota Fiscal de Serviço',800048,801222,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:06','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','b3e0d309-2a78-4f0e-bf7a-3c5e21b205e2','Y',50,2)
;

-- 16/06/2016 10h51min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801169,'Lote de RPS',800048,801225,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','5f44e764-43a8-4af3-ba35-b18927dbccd4','Y',60,2)
;

-- 16/06/2016 10h51min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801170,'Descrição do Retorno','Descrição do Retorno da Validação do RPS/NFS-e',800048,801226,'Y',255,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','4a88162a-8aad-4b72-a2dc-ffed5187b3cb','Y',70,5)
;

-- 16/06/2016 10h51min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801171,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800048,801214,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:51:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:51:08','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','fe0aee49-f19b-4abf-9b27-484c32c2a82b','Y',80,2,2)
;

-- 16/06/2016 10h51min42s BRT
UPDATE AD_Column SET FieldLength=255, AD_Reference_ID=10, AD_Reference_Value_ID=NULL, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2016-06-16 10:51:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801218
;

-- 16/06/2016 10h51min43s BRT
INSERT INTO t_alter_column values('lbr_nfslotline','LBR_NFSeStatusCode','VARCHAR(255)',null,'NULL')
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=104, XPosition=1, ColumnSpan=1,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801165
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=1, ColumnSpan=5,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801170
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801164
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801168
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801171
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_FieldGroup_ID=104, XPosition=1, NumLines=2,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801163
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801167
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801166
;

-- 16/06/2016 10h53min43s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-16 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801169
;

-- 16/06/2016 10h54min21s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800033,'LBR_NFS','T',0,0,'Y',TO_TIMESTAMP('2016-06-16 10:54:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:54:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','a8001bbb-f831-4bd8-a567-74c111c4acdb')
;

-- 16/06/2016 10h55min8s BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Window_ID,AD_Ref_Table_UU) VALUES (800033,800035,801102,801106,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:55:08','YYYY-MM-DD HH24:MI:SS'),0,'N','LBR',800015,'d9b4281a-494b-42b9-98f6-7c4d42ac09f9')
;

-- 16/06/2016 10h55min24s BRT
UPDATE AD_Ref_Table SET AD_Window_ID=800014,Updated=TO_TIMESTAMP('2016-06-16 10:55:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=800033
;

-- 16/06/2016 10h55min32s BRT
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=800033, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2016-06-16 10:55:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801222
;

-- 16/06/2016 10h55min38s BRT
UPDATE AD_Table SET AD_Window_ID=800015,Updated=TO_TIMESTAMP('2016-06-16 10:55:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800039
;

-- 16/06/2016 10h55min51s BRT
UPDATE AD_Table SET AD_Window_ID=800015,Updated=TO_TIMESTAMP('2016-06-16 10:55:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800038
;

-- 16/06/2016 10h56min46s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800029,'Lote de RPS','W',800015,0,0,'Y',TO_TIMESTAMP('2016-06-16 10:56:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-16 10:56:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','LBR','Y','048feb21-8d53-422f-9133-1e865ef09d52')
;

-- 16/06/2016 10h56min46s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800029, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800029)
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 16/06/2016 10h56min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800029
;

-- 17/06/2016 9h53min58s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (800041,'Configuração de Nota Fiscal de Serviço','LBR_NFSConfig',0,'3',0,0,'Y',TO_TIMESTAMP('2016-06-17 09:53:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:53:57','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','N','L','N','Y','3310f10d-a854-4a93-876c-f2e3311c8c2d','N','N','N')
;

-- 17/06/2016 9h53min58s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFSConfig',1000000,'N','N','Table LBR_NFSConfig','Y','Y',0,0,TO_TIMESTAMP('2016-06-17 09:53:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:53:58','YYYY-MM-DD HH24:MI:SS'),0,800211,'Y',1000000,1,200000,'8bbb6cd6-c2ab-47af-9b85-14e8e590bd25')
;

-- 17/06/2016 9h54min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801227,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800041,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:05','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','N','N','N','Y','ac08817c-da0c-47dd-aac6-7d800aea98d4','N',0,'N','N','N')
;

-- 17/06/2016 9h54min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801228,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800041,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:06','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','N','N','N','Y','87d20303-c867-4268-bf42-3547bc13919e','N',0,'N','N','N')
;

-- 17/06/2016 9h54min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801229,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800041,'Created',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:06','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','N','N','N','Y','4826a2b5-4190-4d8f-8b32-5cd74013607b','N',0,'N','N','N')
;

-- 17/06/2016 9h54min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801230,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800041,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:07','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','N','N','N','Y','00d8d3ae-7542-4937-937e-5e613e191b03','N',0,'N','N','N')
;

-- 17/06/2016 9h54min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801231,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800041,'Description',255,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:07','YYYY-MM-DD HH24:MI:SS'),0,275,'Y','Y','LBR','N','N','N','Y','b3a8dc2d-b8fb-4e0b-97cc-8e35be2b939b','Y',0,'N','N','N')
;

-- 17/06/2016 9h54min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801232,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800041,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:08','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','N','N','N','Y','53baedc3-07b6-431f-b081-013df5ce64e1','N',0,'N','N','N')
;

-- 17/06/2016 9h54min9s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800330,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:08','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSConfig_ID','Configuração de Nota Fiscal de Serviço','Configuração de Nota Fiscal de Serviço','LBR','1186fae8-9724-4bd2-ba2d-1ad4cf910767')
;

-- 17/06/2016 9h54min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801233,0,'Configuração de Nota Fiscal de Serviço',800041,'LBR_NFSConfig_ID',10,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:08','YYYY-MM-DD HH24:MI:SS'),0,800330,'N','N','LBR','N','N','N','Y','e60d005a-87ce-406e-a6ca-9452940f629f','N',0,'N','N','N')
;

-- 17/06/2016 9h54min10s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800331,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSConfig_UU','LBR_NFSConfig_UU','LBR_NFSConfig_UU','LBR','ce34ed8a-1915-48c5-a18e-0b9bf4d4f32d')
;

-- 17/06/2016 9h54min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801234,0,'LBR_NFSConfig_UU',800041,'LBR_NFSConfig_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:09','YYYY-MM-DD HH24:MI:SS'),0,800331,'N','N','LBR','N','N','N','Y','553a5787-e2a4-4c9b-bfa8-67a73d6ba71e','N',0,'N','N','N')
;

-- 17/06/2016 9h54min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801235,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800041,'Updated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:10','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','N','N','N','Y','d735a2c6-9f9d-4b88-8dec-b85bb4deed7e','N',0,'N','N','N')
;

-- 17/06/2016 9h54min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801236,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800041,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:54:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:54:11','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','N','N','N','Y','fbd4b871-fd01-4bf0-8885-43bd43db41a5','N',0,'N','N','N')
;

-- 17/06/2016 9h58min58s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800332,0,0,'Y',TO_TIMESTAMP('2016-06-17 09:58:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 09:58:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSModel','Modelo de NFS','O modelo de NFS ser refere ao padrão utilizado para geração do XML.','Modelo de NFS','LBR','6b1795f2-1f50-45f7-8135-3e9eed00ae59')
;

-- 17/06/2016 10h0min53s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800034,'LBR_NFSModel','L',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:00:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:00:52','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','d2734fa9-f1d5-46ca-8310-682a5414e3dc')
;

-- 17/06/2016 10h1min12s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800154,'ABRASF 1.0',800034,'01',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:01:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:01:11','YYYY-MM-DD HH24:MI:SS'),0,'LBR','ca640d9a-cb95-4378-b189-12e7728c6d4e')
;

-- 17/06/2016 10h1min23s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800155,'ABRASF 2.0',800034,'02',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:01:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:01:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR','20e740d1-2135-4025-a22c-1d453ab44d0c')
;

-- 17/06/2016 10h2min16s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800156,'NFS-e Paulistana',800034,'03',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:02:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:02:16','YYYY-MM-DD HH24:MI:SS'),0,'LBR','2134526c-4d7b-4c12-8e44-d7693fab6158')
;

-- 17/06/2016 10h2min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801237,0,'Modelo de NFS','O modelo de NFS ser refere ao padrão utilizado para geração do XML.',800041,'LBR_NFSModel','01',3,'N','N','Y','N','N',0,'N',17,800034,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,800332,'Y','N','U','N','N','N','Y','6f7ae233-81c7-4534-9364-1d3157c00322','Y',0,'N','N')
;

-- 17/06/2016 10h4min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801238,0,'Processing Type',800041,'LBR_ProcessingType','A',1,'N','N','Y','N','N',0,'N',17,1000057,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:04:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:04:12','YYYY-MM-DD HH24:MI:SS'),0,1000262,'Y','N','U','N','N','N','Y','cbb31b2d-a7fc-4fbd-ab6d-1c109d3a620e','Y',0,'N','N','N')
;

-- 17/06/2016 10h7min51s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800333,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:07:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:07:51','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSPlayer','Fornecedor de NFS-e para Prefeitura','Fornecedor de NFS-e para Prefeitura','LBR','cfafc167-ecfb-4880-8cf1-5e6da2e8d26e')
;

-- 17/06/2016 10h8min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801239,0,'Fornecedor de NFS-e para Prefeitura',800041,'LBR_NFSPlayer',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:08:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:08:07','YYYY-MM-DD HH24:MI:SS'),0,800333,'Y','N','LBR','N','N','N','Y','b5683516-ad95-4afb-8810-281619f3294a','Y',0,'N','N')
;

-- 17/06/2016 10h8min11s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-06-17 10:08:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801238
;

-- 17/06/2016 10h8min14s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2016-06-17 10:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801237
;

-- 17/06/2016 10h8min47s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=202, IsMandatory='Y', IsUpdateable='Y',Updated=TO_TIMESTAMP('2016-06-17 10:08:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801228
;

-- 17/06/2016 10h17min21s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (800042,'URL dos Web Services da NFS','LBR_NFSeWS',0,'1',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:18','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','N','L','N','Y','ae5a6b17-3875-48c8-bfff-746d0dabf76d','N','N','N')
;

-- 17/06/2016 10h17min21s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFSeWS',1000000,'N','N','Table LBR_NFSeWS','Y','Y',0,0,TO_TIMESTAMP('2016-06-17 10:17:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:21','YYYY-MM-DD HH24:MI:SS'),0,800212,'Y',1000000,1,200000,'8230ba2f-4b0f-430d-96b0-6be40265ab90')
;

-- 17/06/2016 10h17min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801240,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800042,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:50','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','N','N','N','Y','73325a53-e1f7-4dcf-b77f-c2aef5bf22ca','N',0,'N','N','N')
;

-- 17/06/2016 10h17min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801241,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800042,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:51','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','N','N','N','Y','3e13b19c-2d65-409b-a999-41394041a65d','N',0,'N','N','N')
;

-- 17/06/2016 10h17min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801242,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800042,1000001,'C_Region_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:51','YYYY-MM-DD HH24:MI:SS'),0,209,'Y','N','LBR','N','N','N','Y','75340d28-df04-4913-b6aa-1d8a08a075ef','Y',0,'N','N','N')
;

-- 17/06/2016 10h17min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801243,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800042,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:52','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','N','N','N','Y','87248aca-2e82-4978-8515-4a01517b7d20','N',0,'N','N','N')
;

-- 17/06/2016 10h17min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801244,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800042,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:52','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','N','N','N','Y','5ef2f67c-0f6a-4e92-99b8-21f7433c6dac','N',0,'N','N','N')
;

-- 17/06/2016 10h17min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801245,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800042,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:53','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','N','N','N','Y','ee0f79bd-8e90-4615-bd3f-aefa981155f9','N',0,'N','N','N')
;

-- 17/06/2016 10h17min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801246,0,'Sefaz NF-e Environment',800042,'LBR_NFeEnv',1,'N','N','Y','N','N',0,'N',17,1000051,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:53','YYYY-MM-DD HH24:MI:SS'),0,1000234,'Y','N','LBR','N','N','N','Y','6b75d2da-b47e-4282-b422-f654c52db68f','Y',0,'N','N','N')
;

-- 17/06/2016 10h17min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801247,0,'NF Model',800042,'LBR_NFeModel','55',5,'N','N','Y','N','N',0,'N',17,1000040,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:54','YYYY-MM-DD HH24:MI:SS'),0,1000173,'Y','N','LBR','N','N','N','Y','d9a67434-bcff-40f9-b251-aa2852ff2828','Y',0,'N','N','N')
;

-- 17/06/2016 10h17min55s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800334,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSeWS_ID','URL dos Web Services da NFS','URL dos Web Services da NFS','LBR','b443d1e4-9f2f-4aba-ab18-80ebfa5c4cbc')
;

-- 17/06/2016 10h17min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801248,0,'URL dos Web Services da NFS',800042,'LBR_NFSeWS_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:54','YYYY-MM-DD HH24:MI:SS'),0,800334,'N','N','LBR','N','N','N','Y','694e748b-c876-46f8-937c-2c3bc57dc330','N',0,'N','N','N')
;

-- 17/06/2016 10h17min56s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800335,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSeWS_UU','LBR_NFSeWS_UU','LBR_NFSeWS_UU','LBR','e0b72eaa-c2d0-40a5-8ef6-2f9c5b5d7892')
;

-- 17/06/2016 10h17min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801249,0,'LBR_NFSeWS_UU',800042,'LBR_NFSeWS_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:55','YYYY-MM-DD HH24:MI:SS'),0,800335,'N','N','LBR','N','N','N','Y','2c3f9c57-e385-49dd-841f-1bd31b3aa340','N',0,'N','N','N')
;

-- 17/06/2016 10h17min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801250,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800042,'Name',60,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:56','YYYY-MM-DD HH24:MI:SS'),0,469,'Y','Y','LBR','N','N','N','Y','0dbfa00b-5151-452d-acda-262a03b0bce9','Y',0,'N','N','N')
;

-- 17/06/2016 10h17min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801251,0,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',800042,'URL',255,'N','N','Y','N','N',0,'N',40,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:57','YYYY-MM-DD HH24:MI:SS'),0,983,'Y','N','LBR','N','N','N','Y','bd5b282c-4122-42e6-9d93-a3605cbceeaa','Y',0,'N','N','N')
;

-- 17/06/2016 10h17min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801252,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800042,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:57','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','N','N','N','Y','95c1bd5a-4a48-416b-ac8b-95dabfb51c67','N',0,'N','N','N')
;

-- 17/06/2016 10h17min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801253,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800042,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:58','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','N','N','N','Y','7d47a282-b1a4-4867-acf1-ae2edff0ead5','N',0,'N','N','N')
;

-- 17/06/2016 10h17min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801254,0,'Version No','Version Number',800042,'VersionNo',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:17:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:17:58','YYYY-MM-DD HH24:MI:SS'),0,1949,'Y','N','LBR','N','N','N','Y','a013850a-2eac-4a0a-a630-1744516b24f8','Y',0,'N','N','N')
;

-- 17/06/2016 10h20min58s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801246
;

-- 17/06/2016 10h20min58s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801246
;

-- 17/06/2016 10h20min58s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801247
;

-- 17/06/2016 10h20min58s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801247
;

-- 17/06/2016 10h21min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801255,0,'Sefaz NF-e Environment',800042,'LBR_NFeEnv',1,'N','N','Y','N','N',0,'N',17,1000051,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:21:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:21:37','YYYY-MM-DD HH24:MI:SS'),0,1000234,'Y','N','U','N','N','N','Y','c216f6b0-b316-4125-ac02-81bead38d168','Y',0,'N','N','N')
;

-- 17/06/2016 10h22min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801256,0,'Configuração de Nota Fiscal de Serviço',800042,'LBR_NFSConfig_ID',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:22:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:22:06','YYYY-MM-DD HH24:MI:SS'),0,800330,'Y','N','U','N','N','N','Y','7d7f1977-819e-4216-a29e-5cfbba67d795','Y',0,'N','N','N')
;

-- 17/06/2016 10h22min27s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNFSeWS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801240
;

-- 17/06/2016 10h22min27s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNFSeWS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801241
;

-- 17/06/2016 10h22min27s BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNFSeWS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801242
;

-- 17/06/2016 10h22min27s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNFSeWS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801244
;

-- 17/06/2016 10h22min27s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNFSeWS', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801253
;

-- 17/06/2016 10h22min27s BRT
CREATE TABLE LBR_NFSeWS (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) DEFAULT NULL , C_Region_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT statement_timestamp(), CreatedBy NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_NFSConfig_ID NUMERIC(10) NOT NULL, LBR_NFSeWS_ID NUMERIC(10) NOT NULL, LBR_NFSeWS_UU VARCHAR(36) DEFAULT NULL , LBR_NFeEnv CHAR(1) NOT NULL, Name VARCHAR(60) NOT NULL, URL VARCHAR(255) NOT NULL, Updated TIMESTAMP DEFAULT statement_timestamp(), UpdatedBy NUMERIC(10) DEFAULT NULL , VersionNo VARCHAR(20) DEFAULT NULL , CONSTRAINT LBR_NFSeWS_Key PRIMARY KEY (LBR_NFSeWS_ID), CONSTRAINT LBR_NFSeWS_UU_idx UNIQUE (LBR_NFSeWS_UU))
;

-- 17/06/2016 10h22min27s BRT
ALTER TABLE LBR_NFSeWS ADD CONSTRAINT ADClient_LBRNFSeWS FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min27s BRT
ALTER TABLE LBR_NFSeWS ADD CONSTRAINT ADOrg_LBRNFSeWS FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min27s BRT
ALTER TABLE LBR_NFSeWS ADD CONSTRAINT CRegion_LBRNFSeWS FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min27s BRT
ALTER TABLE LBR_NFSeWS ADD CONSTRAINT CreatedBy_LBRNFSeWS FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min27s BRT
ALTER TABLE LBR_NFSeWS ADD CONSTRAINT UpdatedBy_LBRNFSeWS FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min38s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNFSConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801227
;

-- 17/06/2016 10h22min38s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNFSConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801228
;

-- 17/06/2016 10h22min38s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNFSConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801230
;

-- 17/06/2016 10h22min38s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNFSConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-17 10:22:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801236
;

-- 17/06/2016 10h22min38s BRT
CREATE TABLE LBR_NFSConfig (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT NULL , CreatedBy NUMERIC(10) DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_NFSConfig_ID NUMERIC(10) NOT NULL, LBR_NFSConfig_UU VARCHAR(36) DEFAULT NULL , LBR_NFSModel VARCHAR(3) DEFAULT '01' NOT NULL, LBR_NFSPlayer VARCHAR(255) DEFAULT NULL , LBR_ProcessingType CHAR(1) DEFAULT 'A' NOT NULL, Updated TIMESTAMP DEFAULT NULL , UpdatedBy NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_NFSConfig_Key PRIMARY KEY (LBR_NFSConfig_ID), CONSTRAINT LBR_NFSConfig_UU_idx UNIQUE (LBR_NFSConfig_UU))
;

-- 17/06/2016 10h22min38s BRT
ALTER TABLE LBR_NFSConfig ADD CONSTRAINT ADClient_LBRNFSConfig FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min38s BRT
ALTER TABLE LBR_NFSConfig ADD CONSTRAINT ADOrg_LBRNFSConfig FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min38s BRT
ALTER TABLE LBR_NFSConfig ADD CONSTRAINT CreatedBy_LBRNFSConfig FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h22min38s BRT
ALTER TABLE LBR_NFSConfig ADD CONSTRAINT UpdatedBy_LBRNFSConfig FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 17/06/2016 10h23min35s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800016,'Configuração de NFS-e',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:34','YYYY-MM-DD HH24:MI:SS'),0,'M','N','LBR','Y','N',0,0,'N','a4d0f272-f3a6-43f7-ac18-9a3ea445620e')
;

-- 17/06/2016 10h23min50s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800049,'Configuração de NFS-e',800016,10,'Y',800041,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',0,'N','LBR','Y','N','251ce194-998c-4ea0-bd68-3ee97e612d39','B')
;

-- 17/06/2016 10h23min52s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801172,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800049,801227,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','323d03cb-1008-4230-817b-866627c5abfc','N',2)
;

-- 17/06/2016 10h23min52s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801173,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800049,801228,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:52','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','672142f0-6b01-45d0-aae5-9a7cf1c3676c','Y','Y',10,4,2)
;

-- 17/06/2016 10h23min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (801174,'Description','Optional short description of the record','A description is limited to 255 characters.',800049,801231,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:52','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5d6600ae-c2f4-47bb-98ca-6473d3de6e74','Y',20,5,3)
;

-- 17/06/2016 10h23min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801175,'Configuração de Nota Fiscal de Serviço',800049,801233,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:53','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e615cb56-40c5-4723-8571-e95c97dfd259','N',2)
;

-- 17/06/2016 10h23min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801176,'LBR_NFSConfig_UU',800049,801234,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:53','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f9e0bc63-6c54-4ccc-936d-74fe8f749498','N',2)
;

-- 17/06/2016 10h23min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801177,'Modelo de NFS','O modelo de NFS ser refere ao padrão utilizado para geração do XML.',800049,801237,'Y',3,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','567befa8-c635-4be0-b88f-0f3a7e2c8beb','Y',30,2)
;

-- 17/06/2016 10h23min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801178,'Processing Type',800049,801238,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d115018b-db33-4056-9b75-fe53b16e0963','Y',40,2)
;

-- 17/06/2016 10h23min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801179,'Fornecedor de NFS-e para Prefeitura',800049,801239,'Y',255,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0cc019b0-ab2b-49a8-a3f7-66f42ca6753e','Y',50,5)
;

-- 17/06/2016 10h23min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801180,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800049,801232,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:23:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','8bdddc44-9a40-4f0e-a693-e5f3dc8544c6','Y',60,2,2)
;

-- 17/06/2016 10h25min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=50002, XPosition=1, ColumnSpan=2,Updated=TO_TIMESTAMP('2016-06-17 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801179
;

-- 17/06/2016 10h25min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=5,Updated=TO_TIMESTAMP('2016-06-17 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801180
;

-- 17/06/2016 10h25min17s BRT
UPDATE AD_Field SET SeqNo=50, AD_FieldGroup_ID=50002,Updated=TO_TIMESTAMP('2016-06-17 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801177
;

-- 17/06/2016 10h25min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=4,Updated=TO_TIMESTAMP('2016-06-17 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801178
;

-- 17/06/2016 10h25min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_FieldGroup_ID=50002, XPosition=1,Updated=TO_TIMESTAMP('2016-06-17 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801174
;

-- 17/06/2016 10h25min17s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-17 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801175
;

-- 17/06/2016 10h25min17s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-17 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801176
;

-- 17/06/2016 10h25min54s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800050,'URLs dos WS',800016,20,'Y',800042,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:25:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:25:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',1,'N','U','Y','N','1e64bf6c-0b50-47bb-9c04-e6ce950d5cdd','B')
;

-- 17/06/2016 10h26min2s BRT
UPDATE AD_Tab SET AD_Column_ID=801256,Updated=TO_TIMESTAMP('2016-06-17 10:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800050
;

-- 17/06/2016 10h26min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801181,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800050,801240,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','70cbe74d-9797-48ba-a9c8-53f224af8794','N',2)
;

-- 17/06/2016 10h26min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801182,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800050,801241,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','61e5d4a8-202c-49fd-ad60-d80825058731','Y','Y',10,4,2)
;

-- 17/06/2016 10h26min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801183,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800050,801250,'Y',60,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c7fa9da6-e6e0-4072-b4c5-ade2dd20e719','Y',20,5)
;

-- 17/06/2016 10h26min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801184,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800050,801242,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3b5b8b9c-5018-42a2-8c0a-3d662ac9b093','Y',30,2)
;

-- 17/06/2016 10h26min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801185,'URL dos Web Services da NFS',800050,801248,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d9907a27-03e8-49c9-9227-e99614ae1ac3','N',2)
;

-- 17/06/2016 10h26min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801186,'LBR_NFSeWS_UU',800050,801249,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f8abdfa6-265a-4ea5-83ea-872f5a42091e','N',2)
;

-- 17/06/2016 10h26min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801187,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',800050,801251,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:06','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','109e1db7-db04-44ba-b995-3aa95e42617d','Y',40,5)
;

-- 17/06/2016 10h26min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801188,'Version No','Version Number',800050,801254,'Y',20,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:06','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','cd14444a-15b9-4efa-a65a-d938e6e9b318','Y',50,2)
;

-- 17/06/2016 10h26min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801189,'Sefaz NF-e Environment',800050,801255,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','a11bad97-a80c-47f9-9590-34f958c1d72f','Y',60,2)
;

-- 17/06/2016 10h26min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801190,'Configuração de Nota Fiscal de Serviço',800050,801256,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','e525475d-21b6-46bd-9fb2-de04b52865b4','Y',70,2)
;

-- 17/06/2016 10h26min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801191,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800050,801245,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-17 10:26:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:26:08','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3e0a4426-d7ef-4204-ba85-ac2ad1ce04f4','Y',80,2,2)
;

-- 17/06/2016 10h26min34s BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=801184
;

-- 17/06/2016 10h26min34s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=801184
;

-- 17/06/2016 10h26min41s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801242
;

-- 17/06/2016 10h26min41s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=801242
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=50002, XPosition=2,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801191
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=1,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801189
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=4,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801188
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801183
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801187
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801190
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801186
;

-- 17/06/2016 10h27min15s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2016-06-17 10:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801185
;

-- 17/06/2016 10h27min40s BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_TIMESTAMP('2016-06-17 10:27:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800048
;

-- 17/06/2016 10h28min3s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=801191
;

-- 17/06/2016 10h28min3s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=801190
;

-- 17/06/2016 10h28min3s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=801182
;

-- 17/06/2016 10h28min3s BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=801183
;

-- 17/06/2016 10h28min3s BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=801187
;

-- 17/06/2016 10h28min3s BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=801188
;

-- 17/06/2016 10h28min3s BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=801189
;

-- 17/06/2016 10h28min17s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=801180
;

-- 17/06/2016 10h28min17s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=801173
;

-- 17/06/2016 10h28min17s BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=801174
;

-- 17/06/2016 10h28min17s BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=801177
;

-- 17/06/2016 10h28min17s BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=801178
;

-- 17/06/2016 10h28min17s BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=801179
;

-- 17/06/2016 10h29min48s BRT
UPDATE AD_Window SET Name='Configuração de Nota Fiscal de Serviço',Updated=TO_TIMESTAMP('2016-06-17 10:29:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=800016
;

-- 17/06/2016 10h30min2s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800030,'Configuração de NFS-e','W',800016,0,0,'Y',TO_TIMESTAMP('2016-06-17 10:30:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-17 10:30:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','LBR','Y','f197290e-02b5-470f-9ac1-7dbe7fd1c36e')
;

-- 17/06/2016 10h30min2s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800030, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800030)
;

-- 17/06/2016 10h30min5s BRT
UPDATE AD_Menu SET Name='Configuração de Nota Fiscal de Serviço',Updated=TO_TIMESTAMP('2016-06-17 10:30:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=800030
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800030
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 17/06/2016 10h30min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800029
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800029
;

-- 17/06/2016 10h30min10s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800030
;

-- 17/06/2016 10h40min51s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:40:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801152
;

-- 17/06/2016 10h40min54s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801147
;

-- 17/06/2016 10h40min56s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:40:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801145
;

-- 17/06/2016 10h40min59s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:40:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801149
;

-- 17/06/2016 10h41min1s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:41:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801148
;

-- 17/06/2016 10h41min3s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801146
;

-- 17/06/2016 10h41min6s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:41:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801150
;

-- 17/06/2016 10h41min8s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:41:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801151
;

-- 17/06/2016 10h41min13s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:41:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801158
;

-- 17/06/2016 10h41min17s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:41:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801159
;

-- 17/06/2016 10h41min20s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2016-06-17 10:41:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801144
;

-- 20/06/2016 11h11min27s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800019,0,0,'Y',TO_TIMESTAMP('2016-06-20 11:11:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-20 11:11:26','YYYY-MM-DD HH24:MI:SS'),0,'Enviar Lote','N','LBR_ProcSendNFSLot','N','org.idempierelbr.nfs.process.ProcSendNFSeLot','3','LBR',0,0,'N','N','Y','N','9f483a13-b0cd-4cd2-a00b-278c56af1535')
;

-- 20/06/2016 11h11min40s BRT
UPDATE AD_Column SET AD_Process_ID=800019,Updated=TO_TIMESTAMP('2016-06-20 11:11:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801204
;

-- 20/06/2016 11h12min45s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800020,0,0,'Y',TO_TIMESTAMP('2016-06-20 11:12:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-20 11:12:45','YYYY-MM-DD HH24:MI:SS'),0,'Consultar Lote','N','LBR_ProcQueryNFSLot','N','org.idempierelbr.nfs.process.ProcQueryNFSeLot','3','U',0,0,'N','N','Y','N','4fc842a8-5e7c-4cd2-8b16-6eb87c1dccee')
;

-- 20/06/2016 11h13min23s BRT
UPDATE AD_Column SET AD_Process_ID=800020,Updated=TO_TIMESTAMP('2016-06-20 11:13:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801203
;

-- 20/06/2016 11h21min31s BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2016-06-20 11:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801205
;

-- 20/06/2016 11h21min32s BRT
INSERT INTO t_alter_column values('lbr_nfslot','LBR_ProcessingType','CHAR(1)',null,null)
;

-- 20/06/2016 11h21min53s BRT
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2016-06-20 11:21:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801158
;

-- 20/06/2016 15h27min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801257,0,'Configuração de Nota Fiscal de Serviço',217,'LBR_NFSConfig_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-06-20 15:27:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-20 15:27:49','YYYY-MM-DD HH24:MI:SS'),0,800330,'Y','N','U','N','N','N','Y','23ab049c-0408-490b-b0aa-0c0a92d06eb3','Y',0,'N','N','N')
;

-- 20/06/2016 15h27min53s BRT
UPDATE AD_Column SET FKConstraintName='LBRNFSConfig_CDocType', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-06-20 15:27:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801257
;

-- 20/06/2016 15h27min53s BRT
ALTER TABLE C_DocType ADD COLUMN LBR_NFSConfig_ID NUMERIC(10) DEFAULT NULL 
;

-- 20/06/2016 15h27min53s BRT
ALTER TABLE C_DocType ADD CONSTRAINT LBRNFSConfig_CDocType FOREIGN KEY (LBR_NFSConfig_ID) REFERENCES lbr_nfsconfig(lbr_nfsconfig_id) DEFERRABLE INITIALLY DEFERRED
;

-- 20/06/2016 15h28min6s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801192,'Configuração de Nota Fiscal de Serviço',167,801257,'Y',10,520,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-06-20 15:28:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-20 15:28:06','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','08241111-e44b-410d-93ff-a65617eb7869','Y',510,2)
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, XPosition=1,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801192
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001514
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001515
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001710
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001711
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001935
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001936
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001937
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001938
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001939
;

-- 20/06/2016 15h28min34s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-06-20 15:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=807
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=808
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54233
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54230
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54232
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=200004
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=440,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3075
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=450,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3072
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=460,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10481
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=470,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10480
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=480,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58859
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=490,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10528
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=500,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10340
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=510,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6567
;

-- 20/06/2016 15h28min35s BRT
UPDATE AD_Field SET SeqNo=520,Updated=TO_TIMESTAMP('2016-06-20 15:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3125
;

-- 20/06/2016 15h28min57s BRT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-20 15:28:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801139
;

-- 20/06/2016 15h29min4s BRT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-20 15:29:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001513
;

-- 20/06/2016 15h29min11s BRT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2016-06-20 15:29:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801192
;

-- 20/06/2016 15h29min22s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFS''',Updated=TO_TIMESTAMP('2016-06-20 15:29:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801192
;

-- 20/06/2016 16h5min39s BRT
UPDATE AD_Table SET AD_Window_ID=800016,Updated=TO_TIMESTAMP('2016-06-20 16:05:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800041
;

-- 20/06/2016 16h34min59s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFSLot',1000000,'N','N','Table LBR_NFSLot','Y','Y',0,0,TO_TIMESTAMP('2016-06-20 16:34:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-06-20 16:34:58','YYYY-MM-DD HH24:MI:SS'),0,800217,'Y',1000000,1,200000,'b23f91c5-d357-4480-aba9-b7d2909d3911')
;

SELECT lbr_register_migration_script('201605221900-LBR_NFS.sql') FROM dual;