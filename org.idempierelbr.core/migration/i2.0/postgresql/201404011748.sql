-- Apr 1, 2014 4:02:44 PM BRT
-- Table/Tab/Fields for LBR_DocLine_PIS (Order)
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000029,'Y','N','Y','LBR','L','a5f935b1-9fa4-4418-abe9-aca8de9a1de0','Y','Y','LBR_DocLine_PIS','Doc Line PIS','Y',0,0,TO_TIMESTAMP('2014-04-01 16:02:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:02:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Apr 1, 2014 4:02:44 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000033,'Table LBR_DocLine_PIS','LBR_DocLine_PIS',1,'deebda86-2209-4046-841a-a7a1b9f38958',TO_TIMESTAMP('2014-04-01 16:02:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:02:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Apr 1, 2014 4:03:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000514,'N','N','N',0,'N',22,'N','N','N','Y','23880728-a87c-46e9-842e-8107e64a202d','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-04-01 16:03:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:03:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000029,129,0,'LBR')
;

-- Apr 1, 2014 4:03:17 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDocLinePIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-01 16:03:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000514
;

-- Apr 1, 2014 4:03:17 PM BRT
CREATE TABLE LBR_DocLine_PIS (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- Apr 1, 2014 4:03:18 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD CONSTRAINT ADClient_LBRDocLinePIS FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 1, 2014 4:04:07 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000515,'N','N','N',0,'N',22,'N','N','N','Y','2f92bd85-cb07-45fa-97e7-47f4eff0adde','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-04-01 16:04:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:04:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000029,104,0,'LBR')
;

-- Apr 1, 2014 4:04:16 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDocLinePIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-01 16:04:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000515
;

-- Apr 1, 2014 4:04:16 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 1, 2014 4:04:16 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD CONSTRAINT ADOrg_LBRDocLinePIS FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 1, 2014 4:04:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000516,'N','N','N',0,'N',7,'N','N','N','Y','27977246-9204-46a7-949a-3a68336cb5df','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-04-01 16:04:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:04:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000029,0,'LBR')
;

-- Apr 1, 2014 4:04:38 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- Apr 1, 2014 4:04:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000517,'N','N','N',0,'N',22,'N','N','N','Y','8ea467d1-34f3-4563-8f50-34ff7250edd1','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-04-01 16:04:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:04:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000029,0,'LBR')
;

-- Apr 1, 2014 4:05:05 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDocLinePIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-01 16:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000517
;

-- Apr 1, 2014 4:05:05 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Apr 1, 2014 4:05:05 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD CONSTRAINT CreatedBy_LBRDocLinePIS FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 1, 2014 4:05:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000518,'N','N','N',0,'N',7,'N','N','N','Y','fe508f3b-78be-4a38-a0fd-90b41f64d992','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-04-01 16:05:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:05:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000029,0,'LBR')
;

-- Apr 1, 2014 4:05:47 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- Apr 1, 2014 4:06:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000519,'N','N','N',0,'N',22,'N','N','N','Y','a1feea6a-e6f4-4cce-8740-3912bee6deb3','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-04-01 16:06:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:06:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000029,0,'LBR')
;

-- Apr 1, 2014 4:06:02 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDocLinePIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-01 16:06:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000519
;

-- Apr 1, 2014 4:06:02 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Apr 1, 2014 4:06:02 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD CONSTRAINT UpdatedBy_LBRDocLinePIS FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 1, 2014 4:06:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000520,'N','N','N',0,'N',1,'N','N','N','Y','68ff4ee8-b1a4-429d-a3ba-0a4a6508854e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-04-01 16:06:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:06:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000029,0,'LBR')
;

-- Apr 1, 2014 4:06:19 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Apr 1, 2014 4:06:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000521,'N','N','N',0,'N',22,'N','N','N','Y','fe54b792-eb1c-4a1a-b443-9ba312ebb079','Y','LBR_DocLine_Details_ID','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','Y',TO_TIMESTAMP('2014-04-01 16:06:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:06:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000094,19,1000029,0,'LBR')
;

-- Apr 1, 2014 4:06:55 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRDocLineDetails_LBRDocLinePI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-01 16:06:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000521
;

-- Apr 1, 2014 4:06:55 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_DocLine_Details_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 1, 2014 4:06:55 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD CONSTRAINT LBRDocLineDetails_LBRDocLinePI FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 1, 2014 4:08:03 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_PIS_ID',1000143,'The Doc Line PIS is a unique identifier for a doc line details.','Doc Line PIS','Doc Line PIS','Doc Line PIS','5bc8a693-dc08-4219-84a7-830bd3795912',TO_TIMESTAMP('2014-04-01 16:08:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 16:08:03','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 4:08:11 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_PIS_UU',1000144,'The Doc Line PIS is a unique identifier for a doc line details.','Doc Line PIS','Doc Line PIS','Doc Line PIS','5d30568d-76d5-44de-a351-dd0cd85d345f',TO_TIMESTAMP('2014-04-01 16:08:11','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 16:08:11','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 4:08:49 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000522,'N','N','N',0,'N',22,'N','Y','N','Y','8f5c00db-88bf-47d5-b576-5211a62b4cf2','N','LBR_DocLine_PIS_ID','Doc Line PIS','The Doc Line PIS is a unique identifier for a doc line details.','Doc Line PIS','N',TO_TIMESTAMP('2014-04-01 16:08:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:08:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000143,13,1000029,0,'LBR')
;

-- Apr 1, 2014 4:08:53 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_DocLine_PIS_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 1, 2014 4:08:53 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD CONSTRAINT LBR_DocLine_PIS_Key PRIMARY KEY (LBR_DocLine_PIS_ID)
;

-- Apr 1, 2014 4:09:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000523,'N','N','N',0,'N',36,'N','N','N','Y','e036164c-7396-43b4-8a0c-b94958de91ac','N','LBR_DocLine_PIS_UU','Doc Line PIS','The Doc Line PIS is a unique identifier for a doc line details.','Doc Line PIS','N',TO_TIMESTAMP('2014-04-01 16:09:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 16:09:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000144,10,1000029,0,'LBR')
;

-- Apr 1, 2014 4:09:41 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_DocLine_PIS_UU VARCHAR(36) DEFAULT NULL 
;

-- Apr 1, 2014 4:09:41 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD CONSTRAINT LBR_DocLine_PIS_UU_idx UNIQUE (LBR_DocLine_PIS_UU)
;

-- Apr 1, 2014 4:12:24 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000031,'LBR_PIS_TaxStatus','LBR','34ffef38-1cce-4b10-a461-d69286301daa','N','L',0,0,TO_TIMESTAMP('2014-04-01 16:12:24','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-04-01 16:12:24','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Apr 1, 2014 4:17:05 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000097,1000031,'7d496a4b-bb41-4353-bd0b-a594687abfb0','01',TO_TIMESTAMP('2014-04-01 16:17:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:17:05','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'01 - Operacao tributavel (cumulativo/nao cumulativo)')
;

-- Apr 1, 2014 4:17:37 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000098,1000031,'8aaaf2fe-0c22-47c6-a80b-49f4b351cf23','02',TO_TIMESTAMP('2014-04-01 16:17:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:17:37','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'02 - Operacao tributavel (aliquota diferenciada)')
;

-- Apr 1, 2014 4:18:05 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000099,1000031,'e32e82c0-9057-4e63-9a21-38695d12c6fe','03',TO_TIMESTAMP('2014-04-01 16:18:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:18:04','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'03 - Operacao tributavel')
;

-- Apr 1, 2014 4:18:22 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000100,1000031,'ea6037cb-edd0-49bd-a84b-8fcca9699559','04',TO_TIMESTAMP('2014-04-01 16:18:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:18:22','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'04 - Operacao tributavel (aliquota zero)')
;

-- Apr 1, 2014 4:18:53 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000101,1000031,'93ac0c37-c000-4dd8-8d81-6ef52e9cb1b7','05',TO_TIMESTAMP('2014-04-01 16:18:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:18:52','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'05 - Operacao tributavel (ST)')
;

-- Apr 1, 2014 4:19:27 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000102,1000031,'3f989b98-e398-4377-9f9f-6d2775ef300c','06',TO_TIMESTAMP('2014-04-01 16:19:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:19:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'06 - Operacao tributavel (aliquota zero)')
;

-- Apr 1, 2014 4:19:50 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000103,1000031,'a2b652ae-c726-46ad-ae03-547e515c3f54','07',TO_TIMESTAMP('2014-04-01 16:19:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:19:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'07 - Operacao isenta da contribuicao')
;

-- Apr 1, 2014 4:20:10 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000104,1000031,'55f4dc1b-0a5c-442a-83e4-dfabe9fb7a36','08',TO_TIMESTAMP('2014-04-01 16:20:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:20:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'08 - Operacao sem incidencia da contribuicao')
;

-- Apr 1, 2014 4:20:29 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000105,1000031,'d32b41a8-51f0-45a0-b037-898acd99d721','09',TO_TIMESTAMP('2014-04-01 16:20:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:20:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'09 - Operacao com suspensao da contribuicao')
;

-- Apr 1, 2014 4:21:12 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000106,1000031,'1d0cb7df-3645-4bd6-82f3-167e80537c88','49',TO_TIMESTAMP('2014-04-01 16:21:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:21:12','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'49 - Outras operacoes de saida')
;

-- Apr 1, 2014 4:21:46 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000107,1000031,'11f775e0-77f6-4a7a-992b-cfdf787bfefe','50',TO_TIMESTAMP('2014-04-01 16:21:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:21:46','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'50 - Operacao com direito a credito')
;

-- Apr 1, 2014 4:22:03 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000108,1000031,'4c8a43d0-3016-41eb-a23e-b54f3a376438','51',TO_TIMESTAMP('2014-04-01 16:22:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:22:03','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'51 - Operacao com direito a credito')
;

-- Apr 1, 2014 4:22:11 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000109,1000031,'8c1f4342-1b76-48c7-a0be-dd2db02de39c','52',TO_TIMESTAMP('2014-04-01 16:22:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:22:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'52 - Operacao com direito a credito')
;

-- Apr 1, 2014 4:22:21 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000110,1000031,'01717ca6-7430-4a13-bb0d-b5d7f576a31c','53',TO_TIMESTAMP('2014-04-01 16:22:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:22:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'53 - Operacao com direito a credito')
;

-- Apr 1, 2014 4:22:29 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000111,1000031,'83e21dac-f350-4693-9d2c-24f904ed180e','54',TO_TIMESTAMP('2014-04-01 16:22:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:22:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'54 - Operacao com direito a credito')
;

-- Apr 1, 2014 4:22:38 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000112,1000031,'6088ff19-1be3-4703-a453-79dc0224385e','55',TO_TIMESTAMP('2014-04-01 16:22:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:22:38','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'55 - Operacao com direito a credito')
;

-- Apr 1, 2014 4:22:47 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000113,1000031,'2579f538-bedf-47d5-9585-82cee057424f','56',TO_TIMESTAMP('2014-04-01 16:22:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:22:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'56 - Operacao com direito a credito')
;

-- Apr 1, 2014 4:23:14 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000114,1000031,'dfe6596c-e7a3-45b3-89fd-fbc7c5ef7e1d','60',TO_TIMESTAMP('2014-04-01 16:23:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:23:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'60 - Credito presumido')
;

-- Apr 1, 2014 4:23:32 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000115,1000031,'29fd6df6-fec7-48c8-a45d-49ce6c016cfc','61',TO_TIMESTAMP('2014-04-01 16:23:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:23:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'61 - Credito presumido')
;

-- Apr 1, 2014 4:23:47 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000116,1000031,'2096a90a-c577-4bfc-b34e-bc249e878cdf','62',TO_TIMESTAMP('2014-04-01 16:23:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:23:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'62 - Credito presumido')
;

-- Apr 1, 2014 4:23:55 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000117,1000031,'7785a775-1d77-4d49-92c8-adb742a06a1d','63',TO_TIMESTAMP('2014-04-01 16:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:23:55','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'63 - Credito presumido')
;

-- Apr 1, 2014 4:24:04 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000118,1000031,'6f172dd6-287b-4e03-bf31-f1ef24fcb42a','64',TO_TIMESTAMP('2014-04-01 16:24:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:24:04','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'64 - Credito presumido')
;

-- Apr 1, 2014 4:24:13 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000119,1000031,'ff6b7821-400d-48b4-b190-b1ef9cb56d5a','65',TO_TIMESTAMP('2014-04-01 16:24:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:24:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'65 - Credito presumido')
;

-- Apr 1, 2014 4:24:22 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000120,1000031,'eedd2e0f-0f15-4ca0-ad4a-494336012031','66',TO_TIMESTAMP('2014-04-01 16:24:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:24:22','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'66 - Credito presumido')
;

-- Apr 1, 2014 4:24:31 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000121,1000031,'a87bbc69-3d48-4340-9fd9-9792751ae870','67',TO_TIMESTAMP('2014-04-01 16:24:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:24:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'67 - Credito presumido')
;

-- Apr 1, 2014 4:25:06 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000122,1000031,'112794fd-5017-487f-a7ed-f90c6b9fa892','70',TO_TIMESTAMP('2014-04-01 16:25:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:25:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'70 - Operacao de aquisicao sem direito a credito')
;

-- Apr 1, 2014 4:25:32 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000123,1000031,'a2b36b60-9f3f-44c9-8c16-d3b9c1b4463d','71',TO_TIMESTAMP('2014-04-01 16:25:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:25:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'71 - Operacao de aquisicao com isencao')
;

-- Apr 1, 2014 4:25:49 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000124,1000031,'51a48f68-5fea-45b0-99b1-d009895e7491','72',TO_TIMESTAMP('2014-04-01 16:25:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:25:49','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'72 - Operacao de aquisicao com suspensao')
;

-- Apr 1, 2014 4:26:09 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000125,1000031,'cfeed5dc-dd0b-4fc2-b3a7-8f6df18514d3','73',TO_TIMESTAMP('2014-04-01 16:26:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:26:09','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'73 - Operacao de aquisicao a aliquota zero')
;

-- Apr 1, 2014 4:26:32 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000126,1000031,'4d97fd8f-4610-4d9e-b34e-ec51ec3bbbac','74',TO_TIMESTAMP('2014-04-01 16:26:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:26:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'74 - Operacao de aquisicao sem incidencia da contribuicao')
;

-- Apr 1, 2014 4:26:54 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000127,1000031,'27e8c828-6f74-4435-b6ea-5c5b8c23f282','75',TO_TIMESTAMP('2014-04-01 16:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:26:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'75 - Operacao de aquisicao por substituicao tributaria')
;

-- Apr 1, 2014 4:27:15 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000128,1000031,'509b6acf-6bae-4082-b284-a031021dc23f','98',TO_TIMESTAMP('2014-04-01 16:27:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:27:15','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'98 - Outras operacoes de entrada')
;

-- Apr 1, 2014 4:27:29 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000129,1000031,'18655e23-f31f-4697-ba34-b2d2f18f2809','99',TO_TIMESTAMP('2014-04-01 16:27:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 16:27:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'99 - Outras operacoes')
;

-- Apr 1, 2014 5:03:14 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PIS_TaxStatus',1000145,'PIS Tax Status','Identifies a PIS Tax Status','PIS Tax Status','4e284ffa-4c37-43ff-824b-e8d082fdefb9',TO_TIMESTAMP('2014-04-01 17:03:14','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:03:14','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:04:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000524,'N','N','N',0,'N',2,'N','N','N','Y','b58eb7c5-8d18-43e7-991e-9dd46d91422a','Y','LBR_PIS_TaxStatus','Identifies a PIS Tax Status','PIS Tax Status','Y',TO_TIMESTAMP('2014-04-01 17:04:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:04:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000145,17,1000031,1000029,0,'LBR')
;

-- Apr 1, 2014 5:04:20 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PIS_TaxStatus VARCHAR(2) DEFAULT NULL 
;

-- Apr 1, 2014 5:06:25 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000525,'N','N','N',0,'N',3,'N','N','N','Y','9438b2ca-cb8f-4f60-8cdc-ef7ec4b490aa','Y','CalculationType',NULL,'Calculation','Y',TO_TIMESTAMP('2014-04-01 17:06:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:06:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1605,17,1000030,1000029,0,'LBR')
;

-- Apr 1, 2014 5:06:31 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN CalculationType VARCHAR(3) DEFAULT NULL 
;

-- Apr 1, 2014 5:07:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000526,'N','N','N',0,'N',10,'N','N','N','Y','262c3c1d-ad95-4262-9d30-f15810ee766c','Y','LBR_TaxBaseAmt','Defines the Tax Base Amount','Tax Base Amount','Y',TO_TIMESTAMP('2014-04-01 17:07:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:07:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000058,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:07:38 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_TaxBaseAmt NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:08:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000527,'N','N','N',0,'N',10,'N','N','N','Y','c554d999-2981-4c6f-91e1-b2a2920e8ee7','Y','LBR_TaxRate','Indicates the Tax Rate','Tax Rate','Y',TO_TIMESTAMP('2014-04-01 17:08:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:08:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000062,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:09:03 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_TaxRate NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:09:51 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxRateInAmt',1000146,'Tax Rate in Amount','Indicates the Tax Rate in Amount','Tax Rate in Amount','30a3e190-59e9-421a-95a2-0fb060a3b6a8',TO_TIMESTAMP('2014-04-01 17:09:51','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:09:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:11:01 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000528,'N','N','N',0,'N',10,'N','N','N','Y','fe0b2f5c-f1c7-49a5-84b7-350a24d5406d','Y','LBR_TaxRateInAmt','Indicates the Tax Rate in Amount','Tax Rate in Amount','Y',TO_TIMESTAMP('2014-04-01 17:11:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:11:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000146,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:11:05 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_TaxRateInAmt NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:11:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000529,'N','N','N',0,'N',22,'N','N','N','Y','f8e3902a-14f7-40d8-9052-2e51ba822851','Y','TotalQty','Total Quantity','Total Quantity','Y',TO_TIMESTAMP('2014-04-01 17:11:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:11:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',2487,29,1000029,0,'LBR')
;

-- Apr 1, 2014 5:11:30 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN TotalQty NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:11:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000530,'N','N','N',0,'N',10,'N','N','N','Y','a0582796-91bd-4a92-9865-2dbaf0e3f670','Y','LBR_TaxAmt','Defines the Tax Amount','Tax Amount','Y',TO_TIMESTAMP('2014-04-01 17:11:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:11:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000056,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:12:00 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_TaxAmt NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:22:12 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PISST_CalcType',1000147,'Calculation','Calculation','66901a04-aa19-4d5b-943c-4bef30332522',TO_TIMESTAMP('2014-04-01 17:22:12','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:22:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:23:06 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PISST_TaxBaseAmt',1000148,'PIS-ST Tax Base Amount','Defines the PIS-ST Tax Base Amount','PIS-ST Tax Base Amount','5f28f4e1-3299-42b8-bafa-1e051ffcd850',TO_TIMESTAMP('2014-04-01 17:23:06','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:23:06','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:23:38 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PISST_TaxRate',1000149,'PIS-ST Tax Rate','Indicates the PIS-ST Tax Rate','PIS-ST Tax Rate','2156f975-0760-4724-92e0-d132595c09f1',TO_TIMESTAMP('2014-04-01 17:23:38','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:23:38','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:24:07 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PISST_TaxRateInAmt',1000150,'PIS-ST Tax Rate in Amount','Indicates the PIS-ST Tax Rate in Amount','PIS-ST Tax Rate in Amount','5dc69b95-7797-4efd-be76-04e39a48c45d',TO_TIMESTAMP('2014-04-01 17:24:07','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:24:07','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:24:45 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PISST_TotalQty',1000151,'PIS-ST Total Quantity','PIS-ST Total Quantity','PIS-ST Total Qty','18453da9-e3e7-43fa-a553-41850f156193',TO_TIMESTAMP('2014-04-01 17:24:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:24:45','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:25:18 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PISST_TaxAmt',1000152,'PIS-ST Tax Amount','Defines the PIS-ST Tax Amount','PIS-ST Tax Amount','dc59eef4-052d-446d-851a-00e3b655a9ea',TO_TIMESTAMP('2014-04-01 17:25:18','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-01 17:25:18','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 1, 2014 5:26:09 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000531,'N','N','N',0,'N',3,'N','N','N','Y','dcd00d8f-0b25-4328-9c68-568a750ef789','Y','LBR_PISST_CalcType','Calculation','Y',TO_TIMESTAMP('2014-04-01 17:26:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:26:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000147,17,1000030,1000029,0,'LBR')
;

-- Apr 1, 2014 5:26:13 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PISST_CalcType VARCHAR(3) DEFAULT NULL 
;

-- Apr 1, 2014 5:27:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000532,'N','N','N',0,'N',10,'N','N','N','Y','a0f5801a-983d-4e4e-a9f3-20f63b2203a0','Y','LBR_PISST_TaxBaseAmt','Defines the PIS-ST Tax Base Amount','PIS-ST Tax Base Amount','Y',TO_TIMESTAMP('2014-04-01 17:27:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:27:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000148,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:27:04 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PISST_TaxBaseAmt NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:28:27 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000533,'N','N','N',0,'N',10,'N','N','N','Y','840b018f-82c9-4cc4-8eb7-15fc990129ef','Y','LBR_PISST_TaxRate','Indicates the PIS-ST Tax Rate','PIS-ST Tax Rate','Y',TO_TIMESTAMP('2014-04-01 17:28:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:28:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000149,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:28:32 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PISST_TaxRate NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:29:07 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000534,'N','N','N',0,'N',10,'N','N','N','Y','0ba6cfd3-65c0-493b-b135-f9a3f2421adb','Y','LBR_PISST_TaxRateInAmt','Indicates the PIS-ST Tax Rate in Amount','PIS-ST Tax Rate in Amount','Y',TO_TIMESTAMP('2014-04-01 17:29:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:29:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000150,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:29:11 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PISST_TaxRateInAmt NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:31:01 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000535,'N','N','N',0,'N',10,'N','N','N','Y','421c76dd-58b5-4208-bf41-50bad3d9fb3c','Y','LBR_PISST_TotalQty','PIS-ST Total Quantity','PIS-ST Total Quantity','Y',TO_TIMESTAMP('2014-04-01 17:31:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:31:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000151,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:31:06 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PISST_TotalQty NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:31:24 PM BRT
UPDATE AD_Column SET FieldLength=10, AD_Reference_ID=12,Updated=TO_TIMESTAMP('2014-04-01 17:31:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000529
;

-- Apr 1, 2014 5:31:29 PM BRT
INSERT INTO t_alter_column values('lbr_docline_pis','TotalQty','NUMERIC',null,'NULL')
;

-- Apr 1, 2014 5:32:07 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000536,'N','N','N',0,'N',10,'N','N','N','Y','f43d25c6-9563-41e0-801a-3ba4a09c7fe1','Y','LBR_PISST_TaxAmt','Defines the PIS-ST Tax Amount','PIS-ST Tax Amount','Y',TO_TIMESTAMP('2014-04-01 17:32:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-01 17:32:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000152,12,1000029,0,'LBR')
;

-- Apr 1, 2014 5:32:12 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PISST_TaxAmt NUMERIC DEFAULT NULL 
;

-- Apr 1, 2014 5:34:22 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',143,60,'The PIS Tab defines amounts for PIS Tax','N','N','N','N','N','N','N',3,'2c70914f-6e2e-4591-89d0-891e1759d677','LBR','PIS','PIS',1000029,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-01 17:34:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:34:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000029,'B')
;

-- Apr 1, 2014 5:34:57 PM BRT
UPDATE AD_Tab SET AD_Column_ID=1000521,Updated=TO_TIMESTAMP('2014-04-01 17:34:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000029
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,22,'N','N',10,'Y',1000401,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','44f1cf8d-6f90-41e3-817a-c2b6c18d2c4e','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000514)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,22,'N','N',20,'Y',1000402,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','911941a3-89de-405c-9d09-424dff910eac','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000515)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,22,'N','N',30,'Y',1000403,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','00b4d56b-ee9e-4544-96d1-e63f11eab417','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000521)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,22,'N','N',40,'Y',1000404,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','b5caa7cb-39ef-4234-a977-c34402222ebf','N','N',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000522)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,36,'N','N',50,'Y',1000405,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','75dfedc3-d5c1-46e6-b9c9-ecc0b63b8d2a','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000523)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,2,'N','N',60,'Y',1000406,'N','LBR','Identifies a PIS Tax Status','PIS Tax Status','171489b1-54ea-4d85-be39-5137b29ef616','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000524)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,3,'N','N',70,'Y',1000407,'N','LBR','Calculation','7cc8f527-b8bc-4d8c-bff1-24af642048b1','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000525)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',80,'Y',1000408,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','eae4d32b-5071-45a9-801c-b145c2f799fd','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000526)
;

-- Apr 1, 2014 5:35:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',90,'Y',1000409,'N','LBR','Indicates the Tax Rate','Tax Rate','29abc02b-4c10-4807-acbd-2767e22f2dff','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000527)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',100,'Y',1000410,'N','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','21839f88-ca7e-4476-a1dd-d82728b011ba','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:09','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000528)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',110,'Y',1000411,'N','LBR','Total Quantity','Total Quantity','c19a4e16-5494-437c-9602-3f1f0f3b29d3','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000529)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',120,'Y',1000412,'N','LBR','Defines the Tax Amount','Tax Amount','c6221fce-7d48-4c50-afb4-abf464374e45','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000530)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,3,'N','N',130,'Y',1000413,'N','LBR','Calculation','ca5fb1de-b0ae-42f5-932c-bf6507b1e69b','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000531)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',140,'Y',1000414,'N','LBR','Defines the PIS-ST Tax Base Amount','PIS-ST Tax Base Amount','5be3ddf3-b154-410a-b4b8-5b9b5f8f9682','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000532)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',150,'Y',1000415,'N','LBR','Indicates the PIS-ST Tax Rate','PIS-ST Tax Rate','959666a6-c714-46ff-a57d-b014bf0ac611','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000533)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',160,'Y',1000416,'N','LBR','Indicates the PIS-ST Tax Rate in Amount','PIS-ST Tax Rate in Amount','598417b5-e3a2-454a-9a2e-a1433f30a667','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000534)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',170,'Y',1000417,'N','LBR','PIS-ST Total Quantity','PIS-ST Total Quantity','a5ea396e-f691-4503-b029-757ad2d37710','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000535)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,10,'N','N',180,'Y',1000418,'N','LBR','Defines the PIS-ST Tax Amount','PIS-ST Tax Amount','80ee1a16-6266-41a8-897c-f31235db390a','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000536)
;

-- Apr 1, 2014 5:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000029,1,'N','N',190,'Y',1000419,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','777f62bc-f178-4223-9d0c-7baa614dae22','N','Y',0,0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000520)
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000419
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000405
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000403
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000404
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000406
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000407
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000408
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000409
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000410
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000411
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000412
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000413
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000414
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000415
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000416
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000417
;

-- Apr 1, 2014 5:36:46 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000418
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000405
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000403
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000419
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000412
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000408
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000418
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000414
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000407
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000413
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000415
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000416
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000417
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000406
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000409
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000410
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000411
;

-- Apr 1, 2014 5:38:32 PM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000402
;

-- Apr 1, 2014 5:40:17 PM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','PIS','746df6c8-5c1f-43a4-8394-5f30f6e8c5de',1000005,TO_TIMESTAMP('2014-04-01 17:40:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:40:17','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Apr 1, 2014 5:40:25 PM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','PIS-ST','307e402d-f113-4b2b-9a96-e0cbcf40bf72',1000006,TO_TIMESTAMP('2014-04-01 17:40:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-01 17:40:25','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Apr 1, 2014 5:40:40 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000005,Updated=TO_TIMESTAMP('2014-04-01 17:40:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000406
;

-- Apr 1, 2014 5:40:43 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000005,Updated=TO_TIMESTAMP('2014-04-01 17:40:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000407
;

-- Apr 1, 2014 5:40:47 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000005,Updated=TO_TIMESTAMP('2014-04-01 17:40:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000408
;

-- Apr 1, 2014 5:40:50 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000005,Updated=TO_TIMESTAMP('2014-04-01 17:40:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000409
;

-- Apr 1, 2014 5:40:53 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000005,Updated=TO_TIMESTAMP('2014-04-01 17:40:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000410
;

-- Apr 1, 2014 5:40:56 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000005,Updated=TO_TIMESTAMP('2014-04-01 17:40:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000411
;

-- Apr 1, 2014 5:40:59 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000005,Updated=TO_TIMESTAMP('2014-04-01 17:40:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000412
;

-- Apr 1, 2014 5:41:10 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000006,Updated=TO_TIMESTAMP('2014-04-01 17:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000413
;

-- Apr 1, 2014 5:41:19 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000006,Updated=TO_TIMESTAMP('2014-04-01 17:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000414
;

-- Apr 1, 2014 5:41:22 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000006,Updated=TO_TIMESTAMP('2014-04-01 17:41:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000415
;

-- Apr 1, 2014 5:41:25 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000006,Updated=TO_TIMESTAMP('2014-04-01 17:41:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000416
;

-- Apr 1, 2014 5:41:28 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000006,Updated=TO_TIMESTAMP('2014-04-01 17:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000417
;

-- Apr 1, 2014 5:41:32 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000006,Updated=TO_TIMESTAMP('2014-04-01 17:41:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000418
;

-- Apr 1, 2014 5:42:30 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-04-01 17:42:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000402
;

-- Apr 1, 2014 5:42:53 PM BRT
UPDATE AD_Field SET ColumnSpan=5,Updated=TO_TIMESTAMP('2014-04-01 17:42:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000406
;

-- Apr 2, 2014 9:24:23 AM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02',Updated=TO_TIMESTAMP('2014-04-02 09:24:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000408
;

-- Apr 2, 2014 9:24:41 AM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02',Updated=TO_TIMESTAMP('2014-04-02 09:24:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000409
;

-- Apr 2, 2014 9:27:08 AM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03',Updated=TO_TIMESTAMP('2014-04-02 09:27:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000410
;

-- Apr 2, 2014 9:27:22 AM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03',Updated=TO_TIMESTAMP('2014-04-02 09:27:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000411
;

-- Apr 2, 2014 9:28:08 AM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=PER | @CalculationType@=AMT | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02 | @LBR_PIS_TaxStatus@=03',Updated=TO_TIMESTAMP('2014-04-02 09:28:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000412
;

-- Apr 2, 2014 9:29:14 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_PISST_CalcType@=PER',Updated=TO_TIMESTAMP('2014-04-02 09:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000414
;

-- Apr 2, 2014 9:29:25 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_PISST_CalcType@=PER',Updated=TO_TIMESTAMP('2014-04-02 09:29:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000415
;

-- Apr 2, 2014 9:29:36 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_PISST_CalcType@=AMT',Updated=TO_TIMESTAMP('2014-04-02 09:29:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000416
;

-- Apr 2, 2014 9:29:43 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_PISST_CalcType@=AMT',Updated=TO_TIMESTAMP('2014-04-02 09:29:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000417
;

-- Apr 2, 2014 9:29:54 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_PISST_CalcType@=PER | @LBR_PISST_CalcType@=AMT',Updated=TO_TIMESTAMP('2014-04-02 09:29:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000418
;

-- Apr 2, 2014 9:39:57 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_PIS_TaxStatus@!'''' & @LBR_PIS_TaxStatus@!01 & @LBR_PIS_TaxStatus@!02 & @LBR_PIS_TaxStatus@!03 & @LBR_PIS_TaxStatus@!04 & @LBR_PIS_TaxStatus@!05 & @LBR_PIS_TaxStatus@!06 & @LBR_PIS_TaxStatus@!07 & @LBR_PIS_TaxStatus@!08 & @LBR_PIS_TaxStatus@!09',Updated=TO_TIMESTAMP('2014-04-02 09:39:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000407
;

-- Apr 2, 2014 10:07:22 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_PIS_TaxStatus@!''''',Updated=TO_TIMESTAMP('2014-04-02 10:07:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000413
;

SELECT lbr_register_migration_script('201404011748.sql') FROM dual
;
