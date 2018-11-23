SET SQLBLANKLINES ON
SET DEFINE OFF

-- 02/04/2015 18h0min36s BRT
-- National Petrol Agency to fuels and lubricants in NF-e
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CodANP',800104,'ANP Code','Product Code issued by the brazilian National Petrol Agency','ANP Code','2d6a6b0d-9ca1-4673-a7bd-690632c4a3a9',TO_DATE('2015-04-02 18:00:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'U',TO_DATE('2015-04-02 18:00:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h2min44s BRT
UPDATE AD_Element SET Description='Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.',Updated=TO_DATE('2015-04-02 18:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800104
;

-- 02/04/2015 18h2min44s BRT
UPDATE AD_Column SET ColumnName='LBR_CodANP', Name='ANP Code', Description='Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.', Help=NULL WHERE AD_Element_ID=800104
;

-- 02/04/2015 18h2min44s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CodANP', Name='ANP Code', Description='Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.', Help=NULL, AD_Element_ID=800104 WHERE UPPER(ColumnName)='LBR_CODANP' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 02/04/2015 18h2min44s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CodANP', Name='ANP Code', Description='Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.', Help=NULL WHERE AD_Element_ID=800104 AND IsCentrallyMaintained='Y'
;

-- 02/04/2015 18h2min44s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CodANP', Name='ANP Code', Description='Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.', Help=NULL WHERE AD_Element_ID=800104 AND IsCentrallyMaintained='Y'
;

-- 02/04/2015 18h2min44s BRT
UPDATE AD_Field SET Name='ANP Code', Description='Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800104) AND IsCentrallyMaintained='Y'
;

-- 02/04/2015 18h3min23s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800523,'N','N','N',0,'N',9,'N','N','N','Y','1070eb9e-8f15-4850-9727-11214c2d3080','Y','LBR_CodANP','Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.','ANP Code','Y',TO_DATE('2015-04-02 18:03:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:03:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800104,10,208,0,0,'U')
;

-- 02/04/2015 18h4min29s BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800104
;

-- 02/04/2015 18h5min1s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:05:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800523
;

-- 02/04/2015 18h8min7s BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,CreatedBy,UpdatedBy,Processing,DatabaseViewDrop,EntityType,AD_Org_ID,AD_Client_ID,Created,Updated) VALUES ('N','N','N','1',0,1000014,800008,'N','N','Y','L','02e7eb11-a771-4e84-bed7-120710c42678','Y','Y','LBR_NotaFiscalLineComb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Y',0,0,'N','N','LBR',0,0,TO_DATE('2015-04-02 18:08:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-04-02 18:08:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h8min8s BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,AD_Sequence_UU,IncrementNo,AD_Org_ID,CreatedBy,UpdatedBy,Updated,IsActive,StartNo,AD_Client_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800015,'Table LBR_NotaFiscalLineComb','LBR_NotaFiscalLineComb','d55e50b4-3958-4a96-8739-c83e1857c25a',1,0,0,0,TO_DATE('2015-04-02 18:08:07','YYYY-MM-DD HH24:MI:SS'),'Y',1000000,0,TO_DATE('2015-04-02 18:08:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h9min46s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800524,'Y','N','N',0,'N',22,'N','N','N','Y','b370b116-3250-4cfa-a67e-1d9e52de953e','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2015-04-02 18:09:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:09:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',102,19,800008,129,0,0,'LBR')
;

-- 02/04/2015 18h11min8s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800525,'Y','N','N',0,'N',22,'N','N','N','Y','9c4d63ee-27b9-4187-b5b3-1da4429b4817','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2015-04-02 18:11:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:11:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',113,19,800008,104,0,0,'U')
;

-- 02/04/2015 18h12min19s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800526,'N','N','N',0,'N',7,'N','N','N','Y','11caaad1-c122-4058-96a4-156cb8719709','N','Created','Date this record was created',NULL,'The Created field indicates the date that this record was created.','Created','N',TO_DATE('2015-04-02 18:12:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:12:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',245,16,800008,0,0,'LBR')
;

-- 02/04/2015 18h12min48s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800527,'N','N','N',0,'N',22,'N','N','N','Y','8570d773-4e61-4bd7-9c6c-ea055fdbbd9c','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2015-04-02 18:12:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:12:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',246,18,110,800008,0,0,'U')
;

-- 02/04/2015 18h13min1s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:13:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800527
;

-- 02/04/2015 18h13min19s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800528,'N','N','N',0,'N',1,'N','N','N','Y','bc77c530-dafc-464e-b7b7-abc06dcaa25e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2015-04-02 18:13:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:13:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',348,20,800008,0,0,'LBR')
;

-- 02/04/2015 18h14min7s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2015-04-02 18:14:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800528
;

-- 02/04/2015 18h16min26s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_NotaFiscalLineComb_ID',800105,'The Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier','Nota Fiscal Line Comb','9072e752-bded-4bbd-b986-07ea28346917',TO_DATE('2015-04-02 18:16:25','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-04-02 18:16:25','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h17min7s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_NotaFiscalLineComb_UU',800106,'The Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier','Nota Fiscal Line Comb','00f1d346-0714-4389-9652-f6e199e94099',TO_DATE('2015-04-02 18:17:07','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-04-02 18:17:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h18min8s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800529,'Y','N','N',0,'N',22,'N','Y','N','Y','67778aad-f038-4704-994c-ae53a3de8139','N','LBR_NotaFiscalLineComb_ID','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','N',TO_DATE('2015-04-02 18:18:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:18:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800105,13,800008,0,0,'LBR')
;

-- 02/04/2015 18h18min28s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800530,'N','N','N',0,'N',36,'N','N','N','Y','c1f7ed83-f75a-4cca-a379-710a8c816b4f','N','LBR_NotaFiscalLineComb_UU','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','N',TO_DATE('2015-04-02 18:18:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:18:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800106,10,800008,0,0,'LBR')
;

-- 02/04/2015 18h19min59s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800531,'Y','N','N',0,'N',22,'N','N','N','Y','689560c1-267e-4908-8323-225766d3687b','N','LBR_NotaFiscalLine_ID','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','Y',TO_DATE('2015-04-02 18:19:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:19:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',1000186,19,800008,0,0,'LBR')
;

-- 02/04/2015 18h20min2s BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2015-04-02 18:20:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800531
;

-- 02/04/2015 18h20min35s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800532,'N','N','N',0,'N',7,'N','N','N','Y','cac45e29-76dd-4875-8e30-b348ad3e996e','N','Updated','Date this record was updated',NULL,'The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2015-04-02 18:20:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:20:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',607,16,800008,0,0,'U')
;

-- 02/04/2015 18h21min16s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800533,'N','N','N',0,'N',22,'N','N','N','Y','5c72c853-b30b-43b8-b713-420f7da87d00','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2015-04-02 18:21:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:21:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',608,18,110,800008,0,0,'LBR')
;

-- 02/04/2015 18h21min23s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800532
;

-- 02/04/2015 18h25min26s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800534,'Y','N','N',0,'N',9,'N','N','N','Y','e1dec6e5-3d77-4f25-92c9-e66cea0ac236','Y','LBR_CodANP','Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.','ANP Code','Y',TO_DATE('2015-04-02 18:25:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:25:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800104,10,800008,0,0,'LBR')
;

-- 02/04/2015 18h27min59s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CODIF',800107,'CODIF Authorisation Code','CODIF Authorisation Code','CODIF Authorisation Code','60766da8-2780-4beb-bafe-07a9c583974e',TO_DATE('2015-04-02 18:27:58','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'U',TO_DATE('2015-04-02 18:27:58','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h29min5s BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:29:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800107
;

-- 02/04/2015 18h31min37s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800535,'N','N','N',0,'N',21,'N','N','N','Y','dff0cc3b-ad41-49ae-8580-17b16ed5d6d5','Y','LBR_CODIF','CODIF Authorisation Code','CODIF Authorisation Code','Y',TO_DATE('2015-04-02 18:31:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:31:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800107,10,800008,0,0,'U')
;

-- 02/04/2015 18h32min37s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800535
;

-- 02/04/2015 18h35min55s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_pMixGN',800108,'Natural gas mix percent in a LPG product.','Natural Gas Mix Percent','Natural gas mix percent in a LPG product.','Natural Gas Mix Percent','fbdd816d-6ed4-4089-acb9-28c54b58b817',TO_DATE('2015-04-02 18:35:54','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-04-02 18:35:54','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h37min16s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800536,'N','N','N',0,'N',14,'N','N','N','Y','7912cdba-cba4-40f6-88ac-d080f199ed97','Y','LBR_pMixGN','Natural gas mix percent in a LPG product.','Natural gas mix percent in a LPG product.','Natural Gas Mix Percent','Y',TO_DATE('2015-04-02 18:37:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:37:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800108,12,800008,0,0,'LBR')
;

-- 02/04/2015 18h40min7s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_qTemp',800109,'Amount of fuel at room temperature','Amount of fuel sold at room temperature','Amount of fuel at room temperature','89901470-8257-4dbf-aa2b-b3e2d8b2901d',TO_DATE('2015-04-02 18:40:06','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'U',TO_DATE('2015-04-02 18:40:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h40min58s BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:40:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800109
;

-- 02/04/2015 18h41min29s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800537,'N','N','N',0,'N',14,'N','N','N','Y','d02f5d0f-4cb4-460f-b07d-e3532b1c68da','Y','LBR_qTemp','Amount of fuel sold at room temperature','Amount of fuel at room temperature','Y',TO_DATE('2015-04-02 18:41:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:41:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800109,12,800008,0,0,'U')
;

-- 02/04/2015 18h42min18s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800538,'Y','N','N',0,'N',10,'N','N','N','Y','3e5d50cc-23a0-41aa-8777-3efd785d7a53','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2015-04-02 18:42:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-04-02 18:42:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',209,18,157,800008,1000001,0,0,'U')
;

-- 02/04/2015 18h42min48s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:42:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800538
;

-- 02/04/2015 18h43min33s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800537
;

-- 02/04/2015 18h43min49s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2015-04-02 18:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800525
;

-- 02/04/2015 18h45min41s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalLineComb', FKConstraintType='N',Updated=TO_DATE('2015-04-02 18:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800524
;

-- 02/04/2015 18h45min41s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalLineComb', FKConstraintType='N',Updated=TO_DATE('2015-04-02 18:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800525
;

-- 02/04/2015 18h45min41s BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNotaFiscalLineComb', FKConstraintType='N',Updated=TO_DATE('2015-04-02 18:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800538
;

-- 02/04/2015 18h45min41s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalLineCom', FKConstraintType='N',Updated=TO_DATE('2015-04-02 18:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800527
;

-- 02/04/2015 18h45min41s BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalLine_LBRNotaFisca', FKConstraintType='N',Updated=TO_DATE('2015-04-02 18:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800531
;

-- 02/04/2015 18h45min41s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalLineCom', FKConstraintType='N',Updated=TO_DATE('2015-04-02 18:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800533
;

-- 02/04/2015 18h45min41s BRT
CREATE TABLE LBR_NotaFiscalLineComb (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Region_ID NUMBER(10) NOT NULL, Created DATE DEFAULT NULL , CreatedBy NUMBER(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CODIF NVARCHAR2(21) DEFAULT NULL , LBR_CodANP NVARCHAR2(9) NOT NULL, LBR_NotaFiscalLineComb_ID NUMBER(10) NOT NULL, LBR_NotaFiscalLineComb_UU NVARCHAR2(36) DEFAULT NULL , LBR_NotaFiscalLine_ID NUMBER(10) NOT NULL, LBR_pMixGN NUMBER DEFAULT NULL , LBR_qTemp NUMBER DEFAULT NULL , Updated DATE DEFAULT NULL , UpdatedBy NUMBER(10) DEFAULT NULL , CONSTRAINT LBR_NotaFiscalLineComb_Key PRIMARY KEY (LBR_NotaFiscalLineComb_ID), CONSTRAINT LBR_NotaFiscalLineComb_UU_idx UNIQUE (LBR_NotaFiscalLineComb_UU))
;

-- 02/04/2015 18h45min41s BRT
ALTER TABLE LBR_NotaFiscalLineComb ADD CONSTRAINT ADClient_LBRNotaFiscalLineComb FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 02/04/2015 18h45min41s BRT
ALTER TABLE LBR_NotaFiscalLineComb ADD CONSTRAINT ADOrg_LBRNotaFiscalLineComb FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 02/04/2015 18h45min41s BRT
ALTER TABLE LBR_NotaFiscalLineComb ADD CONSTRAINT CRegion_LBRNotaFiscalLineComb FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 02/04/2015 18h45min41s BRT
ALTER TABLE LBR_NotaFiscalLineComb ADD CONSTRAINT CreatedBy_LBRNotaFiscalLineCom FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 02/04/2015 18h45min42s BRT
--ALTER TABLE LBR_NotaFiscalLineComb ADD CONSTRAINT LBRNotaFiscalLine_LBRNotaFisca FOREIGN KEY (LBR_NotaFiscalLine_ID) REFERENCES lbr_notafiscalline(lbr_notafiscalline_id) DEFERRABLE INITIALLY DEFERRED
--;

-- 02/04/2015 18h45min42s BRT
ALTER TABLE LBR_NotaFiscalLineComb ADD CONSTRAINT UpdatedBy_LBRNotaFiscalLineCom FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 02/04/2015 18h46min29s BRT
ALTER TABLE M_Product ADD LBR_CodANP NVARCHAR2(9) DEFAULT NULL 
;

-- 02/04/2015 18h59min0s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',180,9,'N','N',630,'Y',800091,'N','LBR','Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.','ANP Code','476c4a96-63ba-49f3-b412-1c638c037354','Y','N',0,0,TO_DATE('2015-04-02 18:59:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',620,0,2,800523,0,TO_DATE('2015-04-02 18:59:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=520,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5911
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=530,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6130
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=540,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8307
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=550,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6343
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=560,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6344
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=570,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58973
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=580,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8608
;

-- 02/04/2015 18h59min43s BRT
UPDATE AD_Field SET SeqNo=590,Updated=TO_DATE('2015-04-02 18:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8613
;

-- 02/04/2015 18h59min44s BRT
UPDATE AD_Field SET SeqNo=600,Updated=TO_DATE('2015-04-02 18:59:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=52015
;

-- 02/04/2015 18h59min44s BRT
UPDATE AD_Field SET SeqNo=610,Updated=TO_DATE('2015-04-02 18:59:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=52016
;

-- 02/04/2015 18h59min44s BRT
UPDATE AD_Field SET SeqNo=620,Updated=TO_DATE('2015-04-02 18:59:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800091
;

-- 02/04/2015 19h6min46s BRT
INSERT INTO AD_Tab (ImportFields,Processing,AD_Window_ID,IsSingleRow,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N',1000014,'Y',28,'Fiscal Invoice Line Fuels and Lubricants Information.','N','N','N','N','N','Y','N',2,'fddd6d75-f621-43cc-b650-1e87ac2cb37d','LBR','Fiscal Invoice Line Comb','Fiscal Invoice Line Comb',800006,0,0,TO_DATE('2015-04-02 19:06:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800531,800008,'B',TO_DATE('2015-04-02 19:06:45','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min0s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,22,'N','N',10,'Y',800092,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','f2207066-ec7f-4c56-9713-9264dfc616ea','Y','N',0,0,TO_DATE('2015-04-02 19:07:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800524,0,TO_DATE('2015-04-02 19:07:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min1s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,IsAllowCopy,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,22,'N','N',20,'Y',800093,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','de2080d1-2489-4238-9b7e-d5c365a2a898','Y','N','Y',0,0,TO_DATE('2015-04-02 19:07:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800525,0,TO_DATE('2015-04-02 19:07:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min1s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,22,'N','N','Y',800094,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','6faa0bc7-6a1c-44d4-b456-7516a6cbcc13','N','N',0,0,TO_DATE('2015-04-02 19:07:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800529,0,TO_DATE('2015-04-02 19:07:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min2s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,36,'N','N',30,'Y',800095,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier','Brazilian Fiscal Invoice (Nota Fiscal) Line Comb','0ce4ed69-53e2-457f-b250-596b7cb8eada','Y','N',0,0,TO_DATE('2015-04-02 19:07:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,800530,0,TO_DATE('2015-04-02 19:07:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min2s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,22,'N','N',40,'Y',800096,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Line','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','Brazilian Fiscal Invoice (Nota Fiscal) Line','0eb3c60a-8204-42d1-b8ad-d0c76915141b','Y','N',0,0,TO_DATE('2015-04-02 19:07:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,800531,0,TO_DATE('2015-04-02 19:07:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min3s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,9,'N','N',50,'Y',800097,'N','LBR','Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.','ANP Code','7b3f1d92-9cc2-493b-bd93-8eca311f9750','Y','N',0,0,TO_DATE('2015-04-02 19:07:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,800534,0,TO_DATE('2015-04-02 19:07:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min3s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,21,'N','N',60,'Y',800098,'N','LBR','CODIF Authorisation Code','CODIF Authorisation Code','35117b84-c5ce-47e7-870d-aeb02ed1d584','Y','N',0,0,TO_DATE('2015-04-02 19:07:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,800535,0,TO_DATE('2015-04-02 19:07:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min4s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,14,'N','N',70,'Y',800099,'N','Natural gas mix percent in a LPG product.','LBR','Natural gas mix percent in a LPG product.','Natural Gas Mix Percent','2f045515-dc92-4ede-9f51-a97dcb975cd8','Y','N',0,0,TO_DATE('2015-04-02 19:07:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,800536,0,TO_DATE('2015-04-02 19:07:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min4s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,14,'N','N',80,'Y',800100,'N','LBR','Amount of fuel sold at room temperature','Amount of fuel at room temperature','b14dda75-8b00-40a2-b232-a615cf085709','Y','N',0,0,TO_DATE('2015-04-02 19:07:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,800537,0,TO_DATE('2015-04-02 19:07:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min5s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,10,'N','N',90,'Y',800101,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','0e8c42ca-61fe-4819-a3ac-3e00e2a9ad77','Y','N',0,0,TO_DATE('2015-04-02 19:07:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,800538,0,TO_DATE('2015-04-02 19:07:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min5s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800006,1,'N','N',100,'Y',800102,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','f016ed1e-1da7-4ebd-85b2-5681601a0e4e','Y','N',0,0,TO_DATE('2015-04-02 19:07:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,2,0,2,800528,0,TO_DATE('2015-04-02 19:07:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/04/2015 19h7min29s BRT
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', XPosition=4,Updated=TO_DATE('2015-04-02 19:07:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800098
;

-- 02/04/2015 19h7min29s BRT
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', XPosition=4,Updated=TO_DATE('2015-04-02 19:07:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800100
;

-- 02/04/2015 19h7min29s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_DATE('2015-04-02 19:07:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800094
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800096
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800095
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=800097
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=800098
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=800099
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=800100
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=800101
;

-- 02/04/2015 19h7min38s BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=800102
;

SELECT lbr_register_migration_script('201504021920.sql') FROM dual
;
