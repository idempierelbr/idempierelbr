-- Sped EFD
-- 31/03/2016 10h23min20s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800023,'SPED EFD',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:19','YYYY-MM-DD HH24:MI:SS'),0,'Y','N','N','LBR','N','eacf30dc-bb46-403f-9845-b5d09c97ba88')
;

-- 31/03/2016 10h23min20s BRT
INSERT INTO AD_TREENODEMM(AD_Client_ID, AD_Org_ID, CreatedBy, UpdatedBy, Parent_ID, SeqNo, AD_Tree_ID, Node_ID)VALUES(0, 0, 0, 0, 0,15, 10, 800023)
;

-- 31/03/2016 10h23min22s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU,TitleLogic) VALUES (800009,'ICMS and IPI Tax Assessment',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:20','YYYY-MM-DD HH24:MI:SS'),0,'M','N','LBR','Y','N',0,0,'N','0c9f422f-4ad1-47ae-81ab-4b5bfde40f07','@LBR_TaxName_ID<Name>@ @C_Period_ID<Name>@')
;

-- 31/03/2016 10h23min27s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800026,'Tax Assessment','LBR_TaxAssessment',0,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:24','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','N','L','N','Y','7816666a-fc06-420f-95a4-9aeded0d8feb','N','N')
;

-- 31/03/2016 10h23min28s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_TaxAssessment',1000000,'N','N','Table LBR_TaxAssessment','Y','Y',0,0,TO_TIMESTAMP('2016-03-31 10:23:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:27','YYYY-MM-DD HH24:MI:SS'),0,800039,'Y',1000000,1,200000,'2a316d7a-113c-4b6b-bab7-540543f9fbef')
;

-- 31/03/2016 10h23min30s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800180,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR_TaxAssessment_ID','Tax Assessment','Tax Assessment','LBR','36cb759a-f517-4b1d-80b0-d77d9df9d6b0')
;

-- 31/03/2016 10h23min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800798,0.0,'Tax Assessment',800026,'LBR_TaxAssessment_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:30','YYYY-MM-DD HH24:MI:SS'),0,800180,'N','N','LBR','Y','N','N','Y','2e087b43-0c72-4e6f-99ce-dd9841deed9e','N','N','N','N')
;

-- 31/03/2016 10h23min31s BRT
CREATE TABLE LBR_TaxAssessment (LBR_TaxAssessment_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_TaxAssessment_Key PRIMARY KEY (LBR_TaxAssessment_ID))
;

-- 31/03/2016 10h23min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800799,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800026,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:31','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','Y','N','N','Y','13a84ee6-2660-410d-ab01-b98b65b5eb97','N','N','N','N')
;

-- 31/03/2016 10h23min33s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h23min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800800,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800026,202,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,113,'Y','N','LBR','Y','N','N','Y','7d204b45-215b-4486-980b-33e40c0d60b6','N','N','N','N')
;

-- 31/03/2016 10h23min35s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h23min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800801,0.0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',800026,'C_Period_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:35','YYYY-MM-DD HH24:MI:SS'),0,206,'Y','N','LBR','Y','N','N','Y','4397fb05-0362-4a50-a304-d4dbb0328810','Y','N','N','N')
;

-- 31/03/2016 10h23min37s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN C_Period_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h23min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800802,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800026,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:37','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','Y','N','N','Y','58156fff-173e-4d32-9878-dac095752259','N','N','N','N')
;

-- 31/03/2016 10h23min38s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL
;

-- 31/03/2016 10h23min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800803,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800026,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:38','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','Y','N','N','Y','a67fbe54-e4a6-43d4-b7ad-7c8c6b8cd444','N','N','N','N')
;

-- 31/03/2016 10h23min40s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h23min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800804,0.0,'Accumulated Amt','Total Amount','Sum of all amounts',800026,'CumulatedAmt',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:41','YYYY-MM-DD HH24:MI:SS'),0,2822,'Y','N','LBR','Y','N','N','Y','3f65e109-f214-4776-99ef-ef2505478500','Y','N','N','N')
;

-- 31/03/2016 10h23min42s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN CumulatedAmt NUMERIC NOT NULL
;

-- 31/03/2016 10h23min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800805,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800026,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:42','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','Y','N','N','Y','966dc734-31c8-4c00-82e6-deca2739ad42','N','N','N','N')
;

-- 31/03/2016 10h23min44s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31/03/2016 10h23min46s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800181,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR_SaldoCredorTransportar','Saldo Credor a Transportar','Saldo Credor a Transportar','LBR','0280757d-f197-420c-b5ae-409b3a4343a8')
;

-- 31/03/2016 10h23min49s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800806,0.0,'Saldo Credor a Transportar',800026,'LBR_SaldoCredorTransportar',131089,'N','N','Y','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:46','YYYY-MM-DD HH24:MI:SS'),0,800181,'Y','N','LBR','Y','N','N','Y','7cf16dae-15d2-43f7-89a7-31b07e332e4b','Y','N','N','N')
;

-- 31/03/2016 10h23min49s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_SaldoCredorTransportar NUMERIC NOT NULL
;

-- 31/03/2016 10h23min51s BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800004,'LBR_TaxName ICMS/IPI','S','LBR_TaxName.Name IN (''ICMSPROD'',''IPI'')',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:49','YYYY-MM-DD HH24:MI:SS'),0,'LBR','ec0eeeae-d01a-4a95-9f3d-e04aac0e2f1e')
;

-- 31/03/2016 10h23min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800807,0.0,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',800026,800004,'LBR_TaxName_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:51','YYYY-MM-DD HH24:MI:SS'),0,1000034,'Y','Y','LBR','Y','N','N','Y','27d740f6-5280-4670-8af6-3ed65035c3ce','Y','N','N','N')
;

-- 31/03/2016 10h23min53s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_TaxName_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h23min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800808,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800026,'Processed',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:53','YYYY-MM-DD HH24:MI:SS'),0,1047,'N','N','LBR','Y','N','N','Y','9d1e177b-2bea-418f-9807-fdfdad566e6b','Y','N','N','N')
;

-- 31/03/2016 10h23min55s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 31/03/2016 10h23min57s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800013,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:55','YYYY-MM-DD HH24:MI:SS'),0,'Process Tax Assessment','N','LBR_ProcTaxAssessment','N','com.todobom.sped.efd.process.ProcTaxAssessment','3','LBR',14,232,'N','N','Y','N','15ff5cc5-6c7f-4cb7-a305-79a59a853a3f')
;

-- 31/03/2016 10h23min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800809,0.0,'Process Now',800026,'Processing',1,'N','N','N','N','N','N',28,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:57','YYYY-MM-DD HH24:MI:SS'),0,524,'Y',800013,'N','LBR','Y','N','N','Y','bdaeb8fc-0edc-4ad7-a413-33e9500f25d6','N','Y','N','N')
;

-- 31/03/2016 10h23min58s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN Processing CHAR(1) DEFAULT NULL 
;

-- 31/03/2016 10h24min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800810,0.0,'Total Amount','Total Amount','The Total Amount indicates the total document amount.',800026,'TotalAmt',131089,'N','N','Y','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:23:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:23:59','YYYY-MM-DD HH24:MI:SS'),0,1539,'N','N','LBR','Y','N','N','Y','4a973ecd-99ce-4173-96cd-9d4c5369968e','Y','N','N','N')
;

-- 31/03/2016 10h24min0s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN TotalAmt NUMERIC NOT NULL
;

-- 31/03/2016 10h24min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800811,0.0,'Total Credit','Total Credit in document currency','The Total Credit indicates the total credit amount for a journal or journal batch in the source currency',800026,'TotalCr','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:00','YYYY-MM-DD HH24:MI:SS'),0,596,'N','N','LBR','Y','N','N','Y','12a2865a-b8c0-4142-ab7b-36dd53094f10','Y','N','N','N')
;

-- 31/03/2016 10h24min1s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN TotalCr NUMERIC DEFAULT '0' NOT NULL
;

-- 31/03/2016 10h24min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800812,0.0,'Total Debit','Total debit in document currency','The Total Debit indicates the total debit amount for a journal or journal batch in the source currency',800026,'TotalDr','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:01','YYYY-MM-DD HH24:MI:SS'),0,597,'N','N','LBR','Y','N','N','Y','f95ed5df-2c0a-4350-935b-0ad7b884ed03','Y','N','N','N')
;

-- 31/03/2016 10h24min3s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN TotalDr NUMERIC DEFAULT '0' NOT NULL
;

-- 31/03/2016 10h24min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800813,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800026,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:03','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','Y','N','N','Y','2054b92d-180c-4360-a995-697e3a7b3477','N','N','N','N')
;

-- 31/03/2016 10h24min4s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL
;

-- 31/03/2016 10h24min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800814,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800026,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:04','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','Y','N','N','Y','8bfd7004-cf42-4a14-bef2-38901f10349d','N','N','N','N')
;

-- 31/03/2016 10h24min6s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h24min7s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800182,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:06','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Cod_OR','Obligation Code','Obligation Code','LBR','0e061bda-bba0-4b46-8065-53b5e3ec5647')
;

-- 31/03/2016 10h24min8s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800013,'LBR_Cod_OR','Obligation Code','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','9fcb73e0-a20f-4390-919c-8ec0b2f9d4a6')
;

-- 31/03/2016 10h24min9s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800043,'ICMS',800013,'000',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:08','YYYY-MM-DD HH24:MI:SS'),0,'LBR','d0763c8e-cfeb-4fc6-a070-b5ca3dfdb579')
;

-- 31/03/2016 10h24min11s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800044,'ICMS-ST pelas entradas',800013,'001',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR','b4023aa1-8754-41db-bf68-474f3c12aec2')
;

-- 31/03/2016 10h24min12s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800045,'ICMS da substituição tributária pelas saídas para o Estado',800013,'002',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:11','YYYY-MM-DD HH24:MI:SS'),0,'LBR','c3a510ea-6b40-4883-b3a7-16f3aa878ffe')
;

-- 31/03/2016 10h24min13s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800046,'Antecipação do diferencial de alíquotas do ICMS',800013,'003',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','65cb795f-e3c3-44a5-b409-1d3b31c459a1')
;

-- 31/03/2016 10h24min14s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800047,'Antecipação do ICMS da importação',800013,'004',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR','5024b9cf-b32f-42cc-8a6b-a9bda48e31b5')
;

-- 31/03/2016 10h24min16s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800048,'Antecipação tributária',800013,'005',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:14','YYYY-MM-DD HH24:MI:SS'),0,'LBR','dcc1f4b9-1125-4054-a507-58e41217edf0')
;

-- 31/03/2016 10h24min17s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800049,'ICMS resultante da alíquota adicional dos itens incluídos no Fundo de Combate à Pobreza',800013,'006',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:16','YYYY-MM-DD HH24:MI:SS'),0,'LBR','9a0088b7-7460-49df-a9e9-b5447ddabc9e')
;

-- 31/03/2016 10h24min19s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800050,'Outras obrigações do ICMS',800013,'090',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','9506e752-51bf-43a4-8248-aa3275ee2fcd')
;

-- 31/03/2016 10h24min20s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800051,'ICMS da substituição tributária pelas saídas para outro Estado',800013,'999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:19','YYYY-MM-DD HH24:MI:SS'),0,'LBR','77a5e17f-e383-49e9-9c1d-4e8b85b4f327')
;

-- 31/03/2016 10h24min21s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800815,0.0,'Obligation Code',800026,'LBR_Cod_OR',3,'N','N','N','N','N','N',17,800013,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:20','YYYY-MM-DD HH24:MI:SS'),0,800182,'Y','N','LBR','Y','N','N','Y','4c579e8f-5ff4-4c66-b6da-57ed0cd8b65e','Y','N','N','N')
;

-- 31/03/2016 10h24min21s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_Cod_OR VARCHAR(3) DEFAULT NULL 
;

-- 31/03/2016 10h24min23s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800183,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR_VL_OR','Obligation Value','Obligation Value','LBR','891a6805-9ab0-4c66-b370-54b9c7de2dc1')
;

-- 31/03/2016 10h24min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800816,0.0,'Obligation Value',800026,'LBR_VL_OR',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:23','YYYY-MM-DD HH24:MI:SS'),0,800183,'Y','N','LBR','Y','N','N','Y','e88e12d5-68e7-477c-b121-28d92558f8b2','Y','N','N','N')
;

-- 31/03/2016 10h24min24s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_VL_OR NUMERIC DEFAULT NULL 
;

-- 31/03/2016 10h24min25s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800184,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:24','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Cod_Rec','Revenue Code','Revenue Code specific to state of the federation','Revenue Code','LBR','08be01c3-954d-48e7-bced-54f3c6bbbdd9')
;

-- 31/03/2016 10h24min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800817,0.0,'Revenue Code','Revenue Code specific to state of the federation',800026,'LBR_Cod_Rec',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:25','YYYY-MM-DD HH24:MI:SS'),0,800184,'Y','N','LBR','Y','N','N','Y','ab391033-4d33-46bc-99f1-20b8c9c15b4f','Y','N','N','N')
;

-- 31/03/2016 10h24min27s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_Cod_Rec VARCHAR(60) DEFAULT NULL 
;

-- 31/03/2016 10h24min28s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800185,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Num_Proc','Process Number','Process Number or infraction notice','Process Number','LBR','d9ea1f15-b26a-4582-87b7-385316a22c32')
;

-- 31/03/2016 10h24min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800818,0.0,'Process Number','Process Number or infraction notice',800026,'LBR_Num_Proc',15,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:28','YYYY-MM-DD HH24:MI:SS'),0,800185,'Y','N','LBR','Y','N','N','Y','20c5e26b-37cf-4c4d-bb5b-5813703d82d0','Y','N','N','N')
;

-- 31/03/2016 10h24min29s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_Num_Proc VARCHAR(15) DEFAULT NULL 
;

-- 31/03/2016 10h24min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800186,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Ind_Proc','Process'' Origin Code','Process'' Origin Code','LBR','6d8430eb-3820-40eb-bb98-6b77d16845cd')
;

-- 31/03/2016 10h24min36s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800014,'LBR_Ind_Proc','Process'' Origin Code','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:35','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','f4a7655f-0722-4f6f-af76-a95a1a5234d8')
;

-- 31/03/2016 10h24min37s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800052,'SEFAZ',800014,'0',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR','a472b99b-6631-40ad-a1ad-17701f64752d')
;

-- 31/03/2016 10h24min39s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800053,'Federal Justice',800014,'1',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:37','YYYY-MM-DD HH24:MI:SS'),0,'LBR','be9f6576-590e-431c-8f43-60933b257170')
;

-- 31/03/2016 10h24min40s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800054,'State Justice',800014,'2',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR','5ed0c479-8ec7-4bdb-8de9-66ebc42eefd6')
;

-- 31/03/2016 10h24min41s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800055,'Others',800014,'9',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR','a149afd3-1618-4de6-b2b8-e79490bbb519')
;

-- 31/03/2016 10h24min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800819,0.0,'Process'' Origin Code',800026,'LBR_Ind_Proc',1,'N','N','N','N','N','N',17,800014,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:41','YYYY-MM-DD HH24:MI:SS'),0,800186,'Y','N','LBR','Y','N','N','Y','b9e719a0-1083-4c9c-918c-2f408bcc3c17','Y','N','N','N')
;

-- 31/03/2016 10h24min43s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_Ind_Proc CHAR(1) DEFAULT NULL 
;

-- 31/03/2016 10h24min44s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800187,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Proc','Process Description','Short description of the process of this record','Process Description','LBR','bfe8a75b-3129-43bc-be4d-96bfb16cc127')
;

-- 31/03/2016 10h24min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800820,0.0,'Process Description','Short description of the process of this record',800026,'LBR_Proc',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:44','YYYY-MM-DD HH24:MI:SS'),0,800187,'Y','N','LBR','Y','N','N','Y','a9255f0e-cdb4-43b5-84cf-b968c5adf3e6','Y','N','N','N')
;

-- 31/03/2016 10h24min46s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_Proc VARCHAR(255) DEFAULT NULL 
;

-- 31/03/2016 10h24min47s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800188,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:46','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Txt_Compl','Complementary Description','Complementary description of the obligation','Complementary Description','LBR','27781d96-b201-40d0-843f-63a5c1bc967c')
;

-- 31/03/2016 10h24min48s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800821,0.0,'Complementary Description','Complementary description of the obligation',800026,'LBR_Txt_Compl',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:47','YYYY-MM-DD HH24:MI:SS'),0,800188,'Y','N','LBR','Y','N','N','Y','9055bb51-71f1-4a05-8cdc-b59d265d9b21','Y','N','N','N')
;

-- 31/03/2016 10h24min48s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_Txt_Compl VARCHAR(255) DEFAULT NULL 
;

-- 31/03/2016 10h24min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800822,0,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',800026,'DueDate',29,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:48','YYYY-MM-DD HH24:MI:SS'),0,2000,'Y','N','LBR','Y','N','N','Y','7e864ebb-1302-44d6-99de-a797c4c8a618','Y',0,'N','N','N')
;

-- 31/03/2016 10h24min50s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN DueDate TIMESTAMP DEFAULT NULL 
;

-- 31/03/2016 10h24min51s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800022,'ICMS and IPI Tax Assessment',800009,10,'Y',800026,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',0,'N','LBR','Y','N','0952d932-d239-421f-8026-e99adf499dfd','B')
;

-- 31/03/2016 10h24min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800419,'Tax Assessment',800022,800798,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d97e94df-be93-4b77-9ed6-8f766bd80888','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h24min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800420,'Complementary Description','Complementary description of the obligation',800022,800821,'N',255,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','197af734-db66-4d56-8966-fc41c50e42da','Y',170,1,5,1,'N','N','N')
;

-- 31/03/2016 10h24min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800421,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800022,800799,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','fa0f5077-cf89-4dc4-ae5f-95737417a15b','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h24min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800422,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800022,800800,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:56','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1ca5173e-3154-4300-9881-d28d718004bc','Y','Y',10,4,2,1,'N','N','N')
;

-- 31/03/2016 10h24min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800423,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800022,800805,'Y',1,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:58','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4fd6bc35-ac78-4fa1-abca-1f94d631de64','Y',190,2,1,1,'N','N','N')
;

-- 31/03/2016 10h25min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800424,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800022,800808,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:24:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:24:59','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','8557dcfd-fff9-475d-8dea-e6d0180161b3','Y',60,3,1,1,'N','N','N')
;

-- 31/03/2016 10h25min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800425,'Process Now',800022,800809,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','17cf531f-93c6-4691-a9db-32284fe52d10','Y',70,2,2,1,'N','N','N')
;

-- 31/03/2016 10h25min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800426,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',800022,800807,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f3b6a277-927c-4347-81c9-d34f65a10042','Y',50,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800427,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',800022,800801,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a25ee03e-184d-42f4-8716-a0aff8cdf6c3','Y',20,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min10s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800428,'Accumulated Amt','Total Amount','Sum of all amounts',800022,800804,'Y',131089,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4489abba-9b42-452d-bdc1-307aa678e527','Y',30,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min12s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800001,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:10','YYYY-MM-DD HH24:MI:SS'),0,'Assessment Result','LBR','L','N','41993123-6c8b-40f4-ae42-b901f93c014c')
;

-- 31/03/2016 10h25min13s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800429,'Total Credit','Total Credit in document currency','The Total Credit indicates the total credit amount for a journal or journal batch in the source currency',800022,800811,'Y',131089,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:12','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',800001,'LBR','8af8c132-3cd2-43fc-a2bf-fe2f3185240b','Y',90,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min14s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800430,'Total Debit','Total debit in document currency','The Total Debit indicates the total debit amount for a journal or journal batch in the source currency',800022,800812,'Y',131089,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',800001,'LBR','8d349a25-a823-477c-9a9d-7028f760950b','Y',100,4,2,1,'N','N','N')
;

-- 31/03/2016 10h25min16s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800431,'Total Amount','Total Amount','The Total Amount indicates the total document amount.',800022,800810,'Y',131089,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',800001,'LBR','4ec50630-7ba6-47a2-b33b-3f5fded41510','Y',80,4,2,1,'N','N','N')
;

-- 31/03/2016 10h25min17s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800432,'Saldo Credor a Transportar',800022,800806,'Y',131089,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',800001,'LBR','d67b4baa-c119-4fa3-84ba-26c40741e0cb','Y',40,4,2,1,'N','N','N')
;

-- 31/03/2016 10h25min21s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800002,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:17','YYYY-MM-DD HH24:MI:SS'),0,'Tax Payment','LBR','L','N','41f81110-5d96-4072-9e7d-6f648fe6e3fb')
;

-- 31/03/2016 10h25min22s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800433,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',800022,800822,'Y',29,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:21','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',800002,'LBR','24879142-4372-4533-8f96-9765b2de6f38','Y',180,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min23s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800434,'Obligation Value',800022,800816,'Y',131089,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:22','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',800002,'LBR','2287d031-db9e-41ba-8fc9-595b6c54b71a','Y',120,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min25s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800435,'Obligation Code',800022,800815,'Y',3,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:23','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',800002,'LBR','88db198b-1f8d-4e96-a5f5-0082a644ab66','Y',110,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min26s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800436,'Revenue Code','Revenue Code specific to state of the federation',800022,800817,'Y',60,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:25','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',800002,'LBR','0ee4f9cb-dd2c-413b-8c36-ee68baffdef0','Y',130,4,2,1,'N','N','N')
;

-- 31/03/2016 10h25min27s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800003,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:26','YYYY-MM-DD HH24:MI:SS'),0,'Process Information','LBR','C','Y','0c742820-16af-46e9-a53a-a8d063f89ae7')
;

-- 31/03/2016 10h25min28s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800437,'Process Number','Process Number or infraction notice',800022,800818,'Y',15,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:27','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',800003,'LBR','a33f6aa0-e84e-40be-9baa-3c3f18566ca4','Y',140,1,2,1,'N','N','N')
;

-- 31/03/2016 10h25min30s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800438,'Process'' Origin Code',800022,800819,'Y',1,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:28','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',800003,'LBR','c87d3d52-0e7a-4633-9344-0eccd0824ace','Y',150,4,2,1,'N','N','N')
;

-- 31/03/2016 10h25min31s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800439,'Process Description','Short description of the process of this record',800022,800820,'Y',255,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:30','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',800003,'LBR','e925530d-83f4-4040-a2cb-de56bb4c0393','Y',160,1,5,1,'N','N','N')
;

-- 31/03/2016 10h25min32s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800027,'Tax Assessment Line','LBR_TaxAssessmentLine',0,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','N','L','N','Y','37cd1f6b-3043-409c-bbd7-cc882ab2aa2f','N','N')
;

-- 31/03/2016 10h25min33s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_TaxAssessmentLine',1000000,'N','N','Table LBR_TaxAssessmentLine','Y','Y',0,0,TO_TIMESTAMP('2016-03-31 10:25:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:32','YYYY-MM-DD HH24:MI:SS'),0,800040,'Y',1000000,1,200000,'a10fe6e8-189c-4587-93df-a4db7f044fd9')
;

-- 31/03/2016 10h25min35s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800189,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:33','YYYY-MM-DD HH24:MI:SS'),0,'LBR_TaxAssessmentLine_ID','Tax Assessment Line','Tax Assessment Line','LBR','46b7e18e-df5e-4adb-847a-df0c210a384f')
;

-- 31/03/2016 10h25min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800823,0.0,'Tax Assessment Line',800027,'LBR_TaxAssessmentLine_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:35','YYYY-MM-DD HH24:MI:SS'),0,800189,'N','N','LBR','Y','N','N','Y','73c541bb-5647-4dd1-ba43-a5ca8ee7be82','N','N','N','N')
;

-- 31/03/2016 10h25min36s BRT
CREATE TABLE LBR_TaxAssessmentLine (LBR_TaxAssessmentLine_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_TaxAssessmentLine_Key PRIMARY KEY (LBR_TaxAssessmentLine_ID))
;

-- 31/03/2016 10h25min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800824,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800027,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:36','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','Y','N','N','Y','d87f5d52-18b0-477e-9036-21c422f45a6c','N','N','N','N')
;

-- 31/03/2016 10h25min37s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h25min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800825,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800027,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:38','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','Y','N','N','Y','090a37ba-aec8-498d-a4d8-2141a9fbba85','N','N','N','N')
;

-- 31/03/2016 10h25min39s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h25min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800826,0.0,'Amount','Amount','Amount',800027,'Amt',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:39','YYYY-MM-DD HH24:MI:SS'),0,160,'Y','N','LBR','Y','N','N','Y','1103afda-1137-4990-a8e5-37c975df93ef','Y','N','N','N')
;

-- 31/03/2016 10h25min40s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN Amt NUMERIC NOT NULL
;

-- 31/03/2016 10h25min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800827,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800027,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:40','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','Y','N','N','Y','65426914-a027-4d6f-832a-4c5465530750','N','N','N','N')
;

-- 31/03/2016 10h25min41s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL
;

-- 31/03/2016 10h25min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800828,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800027,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:42','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','Y','N','N','Y','a1c222cb-bbd4-4b2e-805c-93c8cb688d48','N','N','N','N')
;

-- 31/03/2016 10h25min43s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h25min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800829,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',800027,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:43','YYYY-MM-DD HH24:MI:SS'),0,275,'Y','Y','LBR','Y','N','N','Y','cace0237-8b5f-4998-960a-752ee946dc70','Y','N','N','N')
;

-- 31/03/2016 10h25min44s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 31/03/2016 10h25min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800830,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800027,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:44','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','Y','N','N','Y','e58dae4e-a3c4-4838-8e1d-d857812d4389','N','N','N','N')
;

-- 31/03/2016 10h25min45s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31/03/2016 10h25min47s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800831,0.0,'Tax Assessment',800027,'LBR_TaxAssessment_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:46','YYYY-MM-DD HH24:MI:SS'),0,800180,'N','N','LBR','Y','N','N','Y','adb9d182-90fe-4871-b56d-f6a0cba33bf7','Y','N','N','N')
;

-- 31/03/2016 10h25min47s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN LBR_TaxAssessment_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h25min50s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800015,'LBR_TaxAssessmentType','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:47','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','2763476a-da9a-4d63-aa87-6a410fc7cbb9')
;

-- 31/03/2016 10h25min53s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800056,'Other Debits',800015,'0',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:50','YYYY-MM-DD HH24:MI:SS'),0,'LBR','a4dc210c-5a31-4489-a6e8-bd9956a572f2')
;

-- 31/03/2016 10h25min56s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800057,'Credit Reversal',800015,'1',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:53','YYYY-MM-DD HH24:MI:SS'),0,'LBR','e5a2bf66-7902-43c1-b808-8bbdd5307279')
;

-- 31/03/2016 10h25min59s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800058,'Other Credits',800015,'2',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:56','YYYY-MM-DD HH24:MI:SS'),0,'LBR','33fa9045-f8f7-4b68-a17f-9d4bb7c378e8')
;

-- 31/03/2016 10h26min6s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800059,'Debit Reversal',800015,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:25:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:25:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','4b61304e-178a-4725-ac2d-a8d87ae93664')
;

-- 31/03/2016 10h26min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800832,0.0,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',800027,'Type',3,'N','N','N','N','N','N',17,800015,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:06','YYYY-MM-DD HH24:MI:SS'),0,600,'Y','N','LBR','Y','N','N','Y','e5c3822e-c091-4af1-a3c5-25f0ca9dd966','Y','N','N','N')
;

-- 31/03/2016 10h26min8s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN Type VARCHAR(3) DEFAULT NULL 
;

-- 31/03/2016 10h26min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800833,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800027,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:08','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','Y','N','N','Y','1e3a3c4e-30e2-4a68-be7d-9d9e778b4a04','N','N','N','N')
;

-- 31/03/2016 10h26min9s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL
;

-- 31/03/2016 10h26min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800834,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800027,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:09','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','Y','N','N','Y','b0d655b6-855d-4438-a016-ea434d0d4bed','N','N','N','N')
;

-- 31/03/2016 10h26min12s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h26min13s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800190,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Cod_Aj_Apur','Código do Ajuste','Código do Ajuste','LBR','cb0b07af-2614-4dff-abd0-3d710c9b8470')
;

-- 31/03/2016 10h26min15s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800016,'LBR_Cod_Aj_Apur','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','90c9dea0-9ea1-442b-b35b-6295f8237f57')
;

-- 31/03/2016 10h26min16s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800060,'Other Debit ICMS',800016,'PE009999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR','e9128bc9-f172-4c6a-a90d-c1cd4d845434')
;

-- 31/03/2016 10h26min18s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800061,'Credit Reversal ICMS',800016,'PE019999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','fa6b8fed-19f5-4897-a16d-b0411ae633c4')
;

-- 31/03/2016 10h26min19s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800062,'Other Credit ICMS',800016,'PE029999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:18','YYYY-MM-DD HH24:MI:SS'),0,'LBR','deaacfcd-5630-4464-8c0c-5004e4dfbf2d')
;

-- 31/03/2016 10h26min20s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800063,'Debit Reversal ICMS',800016,'PE039999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:19','YYYY-MM-DD HH24:MI:SS'),0,'LBR','1ef685b5-f5b9-4c2f-9555-8b49b233d0d8')
;

-- 31/03/2016 10h26min22s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800064,'Tax Deduction ICMS',800016,'PE049999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','f47859b7-697c-45a9-aebd-38ea039e32af')
;

-- 31/03/2016 10h26min23s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800065,'Special Debit ICMS',800016,'PE059999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR','e4a006a2-688f-4258-b31d-9dcd5434f8a4')
;

-- 31/03/2016 10h26min25s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800066,'Control ICMS',800016,'PE099999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:23','YYYY-MM-DD HH24:MI:SS'),0,'LBR','9ba54429-dab3-49c2-a407-c6cc7383dd1a')
;

-- 31/03/2016 10h26min26s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800067,'Other Debit ICMS-ST',800016,'PE109999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR','66a77e31-3809-4016-be3f-32e3f11a9e56')
;

-- 31/03/2016 10h26min27s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800068,'Credit Reversal ICMS-ST',800016,'PE119999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR','9cfdda40-4dfb-4b6b-9069-2b9d2ff423b1')
;

-- 31/03/2016 10h26min29s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800069,'Other Credit ICMS-ST',800016,'PE129999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR','4f163ddb-577c-4bf6-8fba-5f2dbe3d4068')
;

-- 31/03/2016 10h26min30s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800070,'Debit Reversal ICMS-ST',800016,'PE139999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR','bfc98540-ff9c-43f4-985d-b7ea51f743cf')
;

-- 31/03/2016 10h26min31s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800071,'Tax Deduction ICMS-ST',800016,'PE149999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR','b936770d-799e-4350-86eb-5aa1f2a4c444')
;

-- 31/03/2016 10h26min32s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800072,'Special Debit ICMS-ST',800016,'PE159999',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR','e137c3d5-7978-46bf-ac70-467e673a28a4')
;

-- 31/03/2016 10h26min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800835,0,'Código do Ajuste',800027,'LBR_Cod_Aj_Apur',8,'N','N','N','N','N',0,'N',17,800016,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:32','YYYY-MM-DD HH24:MI:SS'),0,800190,'Y','N','LBR','Y','N','N','Y','50648612-4caa-4b3b-bdae-21b13498bcb6','Y',0,'N','N','N')
;

-- 31/03/2016 10h26min34s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN LBR_Cod_Aj_Apur VARCHAR(8) DEFAULT NULL 
;

-- 31/03/2016 10h26min35s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn) VALUES (800023,'Tax Assessment Lines',800009,20,'Y',800027,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800831,'N','N',1,'N','LBR','Y','N',800798,'f36565df-b071-4a60-9f98-3432740cd049','B')
;

-- 31/03/2016 10h26min37s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800440,'Tax Assessment Line',800023,800823,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:36','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f085c1d2-f3bd-4f27-9ba4-3eb4d5967238','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h26min38s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800441,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800023,800824,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:37','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','10ed2d7d-25d9-4b4d-a906-a65143fda722','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h26min39s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800442,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800023,800825,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:38','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d42f8585-2f4a-4441-bea4-b09bcdf702eb','Y','Y',10,4,2,1,'N','N','N')
;

-- 31/03/2016 10h26min41s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800443,'Tax Assessment',800023,800831,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:39','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','394fa736-f8e2-48bb-9d8a-e5f0b3d87807','Y',40,1,2,1,'N','N','N')
;

-- 31/03/2016 10h26min42s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800444,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800023,800830,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:41','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','93b6551e-b24b-4d5e-b510-12d5a01af53c','Y',70,2,2,1,'N','N','N')
;

-- 31/03/2016 10h26min43s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800445,'Description','Optional short description of the record','A description is limited to 255 characters.',800023,800829,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:42','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0e343169-9138-4fa3-ad4c-31b78121c06b','Y',20,1,5,1,'N','N','N')
;

-- 31/03/2016 10h26min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800446,'Amount','Amount','Amount',800023,800826,'Y',131089,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:43','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c72d823a-afe0-40fe-9c15-33d521bc3f18','Y',30,1,2,1,'N','N','N')
;

-- 31/03/2016 10h26min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800447,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',800023,800832,'Y',3,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','50645f4a-849b-4414-abb4-ebc8f5d1f676','Y',50,1,2,1,'N','N','N')
;

-- 31/03/2016 10h26min49s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800448,'Código do Ajuste',800023,800835,'Y',8,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:47','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a1d59c72-a1d3-4c93-a465-cd2e36c4e431','Y',60,1,2,1,'N','N','N')
;

-- 31/03/2016 10h26min51s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,Help,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800010,'SPED Options','SPED Options','Options for the processing of SPED',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:49','YYYY-MM-DD HH24:MI:SS'),0,'M','N','LBR','Y','N',0,0,'N','a1d6a7dd-69ff-4547-ab9a-88251e3c416c')
;

-- 31/03/2016 10h26min52s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800028,'SPED Options','LBR_SPEDOptions',0,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','N','L','N','Y','f7f12b04-e638-4e93-9892-918a043adc04','N','N')
;

-- 31/03/2016 10h26min54s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SPEDOptions',1000000,'N','N','Table LBR_SPEDOptions','Y','Y',0,0,TO_TIMESTAMP('2016-03-31 10:26:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:52','YYYY-MM-DD HH24:MI:SS'),0,800041,'Y',1000000,1,200000,'c1b00ad3-7b1c-4871-9901-ac653f7b5b60')
;

-- 31/03/2016 10h26min55s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800191,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR_SPEDOptions_ID','SPED Options','SPED Options','LBR','fca6315a-6ecb-42c2-af03-641b6a610ee0')
;

-- 31/03/2016 10h26min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800836,0,'SPED Options',800028,'LBR_SPEDOptions_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:55','YYYY-MM-DD HH24:MI:SS'),0,800191,'N','N','LBR','Y','N','N','Y','effea54d-a68f-423e-9bd1-517960b470fc','N',0,'N','N','N')
;

-- 31/03/2016 10h26min56s BRT
CREATE TABLE LBR_SPEDOptions (LBR_SPEDOptions_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_SPEDOptions_Key PRIMARY KEY (LBR_SPEDOptions_ID))
;

-- 31/03/2016 10h26min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800837,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800028,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:56','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','Y','N','N','Y','2ac74411-fbd7-4338-babf-87fccb1de889','N',0,'N','N','ADClient_LBRSPEDOptions','N')
;

-- 31/03/2016 10h26min58s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h26min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800838,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800028,202,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:58','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','Y','N','N','Y','8d294a0d-b0fc-4277-8d73-5dac2c1fd520','N',0,'N','N','ADOrg_LBRSPEDOptions','N')
;

-- 31/03/2016 10h26min59s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h27min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800839,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800028,'Created',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:26:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:26:59','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','Y','N','N','Y','09857537-4b18-4b86-a31b-9dee6e971ab9','N',0,'N','N','N')
;

-- 31/03/2016 10h27min1s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- 31/03/2016 10h27min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800840,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800028,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:01','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','Y','N','N','Y','f72f4616-4c22-408f-87a6-bba28fc68157','N',0,'N','N','CreatedBy_LBRSPEDOptions','N')
;

-- 31/03/2016 10h27min2s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h27min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800841,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800028,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:02','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','Y','N','N','Y','af0838ef-f770-45eb-a069-fa69aa168222','N',0,'N','N','N')
;

-- 31/03/2016 10h27min4s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 31/03/2016 10h27min5s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800192,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR_SPEDOptions_UU','LBR_SPEDOptions_UU','LBR_SPEDOptions_UU','LBR','69b23fb7-6ba1-4981-9fca-ef6b16aff52d')
;

-- 31/03/2016 10h27min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800842,0,'LBR_SPEDOptions_UU',800028,'LBR_SPEDOptions_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:05','YYYY-MM-DD HH24:MI:SS'),0,800192,'N','N','LBR','Y','N','N','Y','6191da1c-f8bd-4594-a9a6-2e55214d6035','N',0,'N','N','N')
;

-- 31/03/2016 10h27min7s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN LBR_SPEDOptions_UU VARCHAR(36) DEFAULT NULL 
;

-- 31/03/2016 10h27min7s BRT
ALTER TABLE LBR_SPEDOptions ADD CONSTRAINT LBR_SPEDOptions_UU_idx UNIQUE (LBR_SPEDOptions_UU)
;

-- 31/03/2016 10h27min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800843,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800028,'Updated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:08','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','Y','N','N','Y','c8543ed1-1613-421a-9a2b-f94adfd72d3a','N',0,'N','N','N')
;

-- 31/03/2016 10h27min9s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- 31/03/2016 10h27min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800844,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800028,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:09','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','Y','N','N','Y','7db84ea8-1278-4e5b-bde5-ede94cf4035b','N',0,'N','N','UpdatedBy_LBRSPEDOptions','N')
;

-- 31/03/2016 10h27min13s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h27min15s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800193,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR_SPED_Activity','SPED Activity Indicator','SPED Activity Indicator','LBR','51fdea3d-62eb-4cb1-bfc3-4175bf83f219')
;

-- 31/03/2016 10h27min16s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800017,'LBR_SPED_Activity','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','61b06735-5a91-46f8-91cc-eb084daf9c62')
;

-- 31/03/2016 10h27min17s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800073,'Industry or Equivalent',800017,'0',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:16','YYYY-MM-DD HH24:MI:SS'),0,'LBR','0a96cc86-e9a4-44ca-8d44-807c7ee82de1')
;

-- 31/03/2016 10h27min18s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800074,'Service Provider',800017,'1',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','5a33a394-d8ab-4391-8e91-fb1c51bd5020')
;

-- 31/03/2016 10h27min19s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800075,'Comercial Activity',800017,'2',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:18','YYYY-MM-DD HH24:MI:SS'),0,'LBR','1adbd547-94b5-466b-8ce3-5bcfd99ad633')
;

-- 31/03/2016 10h27min21s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,Description,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800076,'Legal person with special deductions','Special deductions as defined in §§ 6º 8º abd 9º of article 3º from Brazilian Law  #9178/98',800017,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:19','YYYY-MM-DD HH24:MI:SS'),0,'LBR','453918e9-6c8d-4646-a5d5-f64d32158f38')
;

-- 31/03/2016 10h27min22s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800077,'Real estate activity',800017,'4',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','de89b74f-3351-46db-af8b-316d03563f78')
;

-- 31/03/2016 10h27min23s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800078,'Others',800017,'9',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR','279155ae-463e-489d-bfc0-bfd149b35d4f')
;

-- 31/03/2016 10h27min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800845,0,'SPED Activity Indicator',800028,'LBR_SPED_Activity',1,'N','N','Y','N','N',0,'N',17,800017,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:23','YYYY-MM-DD HH24:MI:SS'),0,800193,'Y','N','LBR','Y','N','N','Y','6eca5acc-f50f-41cb-982a-ecb952806619','Y',0,'N','N','N')
;

-- 31/03/2016 10h27min24s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN LBR_SPED_Activity CHAR(1) NOT NULL
;

-- 31/03/2016 10h27min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800846,0,'Default','Default value','The Default Checkbox indicates if this record will be used as a default value.',800028,'IsDefault',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:25','YYYY-MM-DD HH24:MI:SS'),0,1103,'Y','N','LBR','Y','N','N','Y','b009438b-7130-49bf-9099-f9015c2fd4a7','Y',0,'N','N','N')
;

-- 31/03/2016 10h27min26s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN IsDefault CHAR(1) DEFAULT NULL CHECK (IsDefault IN ('Y','N'))
;

-- 31/03/2016 10h27min29s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800194,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR_SPED_Profile','SPED Profile','SPED Profile','LBR','d3060a9e-574c-4f71-a8f5-89802e4cc9e9')
;

-- 31/03/2016 10h27min31s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800018,'LBR_SPED_Profile','SPED Profile','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','856f7933-6e7a-43ac-93ba-805de76e244b')
;

-- 31/03/2016 10h27min33s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800079,'Profile A',800018,'A',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR','5b21a8fd-d9ca-48be-b198-257a1d67d7d9')
;

-- 31/03/2016 10h27min35s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800080,'Profile B',800018,'B',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:33','YYYY-MM-DD HH24:MI:SS'),0,'LBR','631d8d10-82a9-4b5d-b734-0555c2f547b5')
;

-- 31/03/2016 10h27min38s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800081,'Profile C',800018,'C',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:35','YYYY-MM-DD HH24:MI:SS'),0,'LBR','204087f8-6ae2-4393-a396-12c0d9530380')
;

-- 31/03/2016 10h27min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800847,0,'SPED Profile',800028,'LBR_SPED_Profile',1,'N','N','Y','N','N',0,'N',17,800018,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:38','YYYY-MM-DD HH24:MI:SS'),0,800194,'Y','N','LBR','Y','N','N','Y','9e933199-1661-49db-91f0-600a41321e75','Y',0,'N','N','N')
;

-- 31/03/2016 10h27min39s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN LBR_SPED_Profile CHAR(1) NOT NULL
;

-- 31/03/2016 10h27min40s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800195,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BP_Accountant_ID','Accountant','Accountant of the Organization','Accountant','LBR','05d96f53-0137-4d71-81b4-e2a6e69bfbfb')
;

-- 31/03/2016 10h27min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800848,0,'Accountant','Accountant of the Organization',800028,'LBR_BP_Accountant_ID',10,'N','N','N','N','N',0,'N',18,192,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:40','YYYY-MM-DD HH24:MI:SS'),0,800195,'Y','N','LBR','Y','N','N','Y','4be2b770-56a0-4177-ae11-62e2a1c51f77','Y',0,'N','N','LBRBPAccountant_LBRSPEDOptions','N')
;

-- 31/03/2016 10h27min42s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN LBR_BP_Accountant_ID NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h27min43s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800196,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CRC','CRC','Accountant inscription number on CRC','CRC','LBR','adae266b-34d2-49f3-9518-4c9bc41ae1e3')
;

-- 31/03/2016 10h27min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800849,0,'CRC','Accountant inscription number on CRC',800028,'LBR_CRC',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:43','YYYY-MM-DD HH24:MI:SS'),0,800196,'Y','N','LBR','Y','N','N','Y','78c48062-7e39-475f-83b6-14a5dce43b80','Y',0,'N','N','N')
;

-- 31/03/2016 10h27min44s BRT
ALTER TABLE LBR_SPEDOptions ADD COLUMN LBR_CRC VARCHAR(15) DEFAULT NULL 
;

-- 31/03/2016 10h27min46s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800024,'SPED Options',800010,10,'Y',800028,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',0,'N','LBR','Y','N','0fa0aeb7-df21-4823-9e93-52aee6c818c3','B')
;

-- 31/03/2016 10h27min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800449,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800024,800837,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:46','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1626c692-2039-4f17-bea3-0130e02978fd','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h27min48s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800450,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800024,800838,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:47','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','461386a0-581b-44f0-850f-52e06e961d14','Y','Y',10,4,2,1,'N','N','N')
;

-- 31/03/2016 10h27min51s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800451,'SPED Activity Indicator',800024,800845,'Y',1,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:49','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1a21d1ca-a0d1-4ae7-9e03-4ccd9c23cf06','Y',20,1,2,1,'N','N','N')
;

-- 31/03/2016 10h27min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800452,'Default','Default value','The Default Checkbox indicates if this record will be used as a default value.',800024,800846,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','7522999f-6580-4094-8b01-1c2f93fdf24c','Y',30,2,2,1,'N','N','N')
;

-- 31/03/2016 10h27min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800453,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800024,800841,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:53','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','6e6c02da-6ed4-4d62-b85c-9c1c932e1571','Y',40,2,2,1,'N','N','N')
;

-- 31/03/2016 10h27min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800454,'SPED Profile',800024,800847,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','251ee1d2-e037-4bcc-8cc3-88d233e79231','Y',50,1,2,1,'N','N','N')
;

-- 31/03/2016 10h27min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800455,'Accountant','Accountant of the Organization',800024,800848,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1bae3093-5be5-4273-bb7b-46f2d3c29237','Y',60,1,2,1,'N','N','N')
;

-- 31/03/2016 10h27min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800456,'CRC','Accountant inscription number on CRC',800024,800849,'Y',15,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:27:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:27:58','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','296de37b-b053-47bb-aecb-1dfdcaf6a7e8','Y',70,1,2,1,'N','N','N')
;

-- 31/03/2016 10h28min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800457,'LBR_SPEDOptions_UU',800024,800842,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c548cf52-6665-4777-99d5-00c62314124f','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h28min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800458,'SPED Options',800024,800836,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5c520978-3284-4d9d-b8cd-83362705f20f','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h28min5s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU,TitleLogic) VALUES (800011,'SPED-EFD ICMS/IPI',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:03','YYYY-MM-DD HH24:MI:SS'),0,'M','N','LBR','Y','N',0,0,'N','642fe869-080f-43cb-97ac-f276f2690da0','@C_Period_ID<Name>@')
;

-- 31/03/2016 10h28min7s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800029,'SPED','LBR_SPED',0,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','N','L','N','Y','62b55263-3b2a-473a-8e28-238992ddf416','N','N')
;

-- 31/03/2016 10h28min9s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SPED',1000000,'N','N','Table LBR_SPED','Y','Y',0,0,TO_TIMESTAMP('2016-03-31 10:28:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:07','YYYY-MM-DD HH24:MI:SS'),0,800042,'Y',1000000,1,200000,'1bd477c8-c109-4e33-b6e0-c80e21b9d385')
;

-- 31/03/2016 10h28min11s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800197,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR_SPED_ID','SPED','SPED','LBR','2a19d60a-ead6-4a02-9d42-c634d3badc51')
;

-- 31/03/2016 10h28min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800850,0.0,'SPED',800029,'LBR_SPED_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:11','YYYY-MM-DD HH24:MI:SS'),0,800197,'N','N','LBR','Y','N','N','Y','40dbee21-6009-4bec-a248-aaa483510f02','N','N','N','N')
;

-- 31/03/2016 10h28min13s BRT
CREATE TABLE LBR_SPED (LBR_SPED_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_SPED_Key PRIMARY KEY (LBR_SPED_ID))
;

-- 31/03/2016 10h28min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800851,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800029,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:13','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','Y','N','N','Y','b9839134-b462-4be5-b584-659ce3fcdd26','N','N','N','N')
;

-- 31/03/2016 10h28min14s BRT
ALTER TABLE LBR_SPED ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h28min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800852,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800029,202,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:14','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','Y','N','N','Y','a3b832cc-7afe-4817-9ba0-f4aa1256d4da','N','N','N','N')
;

-- 31/03/2016 10h28min17s BRT
ALTER TABLE LBR_SPED ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h28min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800853,0.0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',800029,'C_Period_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:18','YYYY-MM-DD HH24:MI:SS'),0,206,'N','N','LBR','Y','N','N','Y','12f6d113-521d-4265-963d-a35a251e847a','Y','N','N','N')
;

-- 31/03/2016 10h28min19s BRT
ALTER TABLE LBR_SPED ADD COLUMN C_Period_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h28min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800854,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800029,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:20','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','Y','N','N','Y','9ac8f8bf-552b-4ce1-9824-989ec7c57604','N','N','N','N')
;

-- 31/03/2016 10h28min22s BRT
ALTER TABLE LBR_SPED ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL
;

-- 31/03/2016 10h28min25s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800855,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800029,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:22','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','Y','N','N','Y','072bdf07-742e-4516-a0eb-12182722fea9','N','N','N','N')
;

-- 31/03/2016 10h28min25s BRT
ALTER TABLE LBR_SPED ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h28min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800856,0.0,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',800029,'C_Year_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:25','YYYY-MM-DD HH24:MI:SS'),0,223,'Y','N','LBR','Y','N','N','Y','3474de08-3c89-4a02-ab2b-f7403f999e08','Y','N','N','N')
;

-- 31/03/2016 10h28min26s BRT
ALTER TABLE LBR_SPED ADD COLUMN C_Year_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h28min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800857,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800029,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:26','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','Y','N','N','Y','78bbf62f-f38a-40aa-ae6f-7370c996815f','N','N','N','N')
;

-- 31/03/2016 10h28min27s BRT
ALTER TABLE LBR_SPED ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31/03/2016 10h28min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800858,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800029,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:28','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','Y','N','N','Y','39b1dbbb-6677-43fc-beac-4ed618406630','N','N','N','N')
;

-- 31/03/2016 10h28min29s BRT
ALTER TABLE LBR_SPED ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL
;

-- 31/03/2016 10h28min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800859,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800029,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:29','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','Y','N','N','Y','bee89bba-343c-4d10-8ab7-6d20bfa6145e','N','N','N','N')
;

-- 31/03/2016 10h28min30s BRT
ALTER TABLE LBR_SPED ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h28min32s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800198,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcessSPED','Process SPED','Process SPED','LBR','e1d12d45-c354-492f-b6d9-26dd95469a29')
;

-- 31/03/2016 10h28min33s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800014,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:32','YYYY-MM-DD HH24:MI:SS'),0,'Process SPED EFD ICMSIPI','N','LBR_ProcGenerateEFDICMSIPI','N','com.todobom.sped.efd.process.ProcGenerateEFDICMSIPI','3','LBR',139,20256,'N','N','Y','N','b3b4306a-c1fe-4e1d-a905-7239cc0360e9')
;

-- 31/03/2016 10h28min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800860,0,'Process SPED',800029,'LBR_ProcessSPED',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:33','YYYY-MM-DD HH24:MI:SS'),0,800198,'Y',800014,'N','LBR','Y','N','N','Y','948815de-2633-4c3d-9a85-76d21bcf07ea','Y',0,'Y','N','N')
;

-- 31/03/2016 10h28min37s BRT
ALTER TABLE LBR_SPED ADD COLUMN LBR_ProcessSPED CHAR(1) DEFAULT NULL 
;

-- 31/03/2016 10h28min39s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800025,'SPED-EFD ICMS/IPI',800011,10,'Y',800029,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',0,'N','LBR','Y','N','ef4a07a5-60a1-421b-93c2-729e679ac0d5','B')
;

-- 31/03/2016 10h28min40s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800459,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800025,800851,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:39','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3ce5f4a4-eb71-4efd-ad51-154db9fa8d4b','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h28min42s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800460,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800025,800852,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:40','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1cbaf90c-4ba4-46cd-b1da-09802928e730','Y','Y',10,4,2,1,'N','N','N')
;

-- 31/03/2016 10h28min43s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800461,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',800025,800853,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:42','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','955aa01e-03f1-4fe1-b637-5dae45131560','Y',20,1,2,1,'N','N','N')
;

-- 31/03/2016 10h28min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800462,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',800025,800856,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:44','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4b672fbf-bb92-4980-a1b3-d2899e981f09','Y',30,1,2,1,'N','N','N')
;

-- 31/03/2016 10h28min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800463,'Process SPED',800025,800860,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1a5f6595-7d1f-4bb9-b18c-02d5c79532b8','Y',40,2,2,1,'N','N','N')
;

-- 31/03/2016 10h28min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800464,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800025,800857,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:46','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e86eefb9-71e4-46e8-af0d-9b8240dd68a5','Y',50,2,2,1,'N','N','N')
;

-- 31/03/2016 10h28min48s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800465,'SPED',800025,800850,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:28:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:28:47','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a8ab2e29-3276-43b5-8625-6508692a9f25','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h31min25s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800030,'Fact Fiscal','LBR_FactFiscal',0,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','Y','LBR','N','N','L','N','Y','1b4aaed7-5a3e-4c52-81b7-14fabcdb8179','N','N')
;

-- 31/03/2016 10h31min27s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_FactFiscal',1000000,'N','N','Table LBR_FactFiscal','Y','Y',0,0,TO_TIMESTAMP('2016-03-31 10:31:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:25','YYYY-MM-DD HH24:MI:SS'),0,800043,'Y',1000000,1,200000,'8225cd8b-0528-4e4e-804b-5e58931c6487')
;

-- 31/03/2016 10h31min28s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800199,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR_FactFiscal_ID','Fact Fiscal','Fact Fiscal','LBR','010fe9e3-970e-4072-93e7-0b686f551ab7')
;

-- 31/03/2016 10h31min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800861,0.0,'Fact Fiscal',800030,'LBR_FactFiscal_ID',131089,'Y','N','N','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:28','YYYY-MM-DD HH24:MI:SS'),0,800199,'N','N','LBR','Y','N','N','Y','dda4f1c3-4f39-4231-834c-7edd5f3e51cf','N','N','N','N')
;

-- 31/03/2016 10h31min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800862,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800030,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:31','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','Y','N','N','Y','5301efa6-faef-4fb7-8e72-94693c674fb0','N','N','N','N')
;

-- 31/03/2016 10h31min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800863,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800030,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:32','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','Y','N','N','Y','6737a14e-da6a-4e53-bfe2-036e5eb102b2','N','N','N','N')
;

-- 31/03/2016 10h31min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800864,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800030,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:34','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','Y','N','N','Y','3295ad5b-aedf-4c3b-9fc6-e20a8c5e72da','N','N','N','N')
;

-- 31/03/2016 10h31min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800865,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800030,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:35','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','Y','N','N','Y','5b4ddf42-0f3c-4caf-96c3-1c68ffd81246','N','N','N','N')
;

-- 31/03/2016 10h31min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800866,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800030,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:37','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','Y','N','N','Y','de9f9349-84be-4184-8e96-8e7f016fb7f3','N','N','N','N')
;

-- 31/03/2016 10h31min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800867,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800030,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:38','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','Y','N','N','Y','d4f660dd-3e43-4949-b079-41b9b0f0104a','N','N','N','N')
;

-- 31/03/2016 10h31min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800868,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800030,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:39','YYYY-MM-DD HH24:MI:SS'),0,348,'N','N','LBR','Y','N','N','Y','489ff3a0-68eb-446b-a37a-ab27fb9771d4','N','N','N','N')
;

-- 31/03/2016 10h31min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800869,0.0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800030,'LBR_NotaFiscal_ID',131089,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:40','YYYY-MM-DD HH24:MI:SS'),0,1000169,'N','N','LBR','Y','N','N','Y','2cc726d2-5801-4d2f-a367-b2d3953d5b52','Y','N','N','C')
;

-- 31/03/2016 10h31min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800870,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800030,'DocumentNo',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:43','YYYY-MM-DD HH24:MI:SS'),0,290,'N','Y','LBR','Y','N','N','Y','b2471aec-bc21-4c96-b06b-04b743761283','Y','N','N','N')
;

-- 31/03/2016 10h31min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800871,0.0,'NF-e Lot Sending Protocol','Indicates the protocol of the sending process to Sefaz',800030,'LBR_LotSendingProt',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:45','YYYY-MM-DD HH24:MI:SS'),0,1000270,'N','N','LBR','Y','N','N','Y','1cf9af2f-53f4-4dd1-aae4-eff4803ef262','Y','N','N','N')
;

-- 31/03/2016 10h31min47s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800872,0.0,'NFe ID',800030,'LBR_NFeID',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:46','YYYY-MM-DD HH24:MI:SS'),0,1000172,'N','N','LBR','Y','N','N','Y','d046c8e8-06eb-4940-8a9f-1c42bbcf2b7e','Y','N','N','N')
;

-- 31/03/2016 10h31min48s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800873,0.0,'Invoice','Invoice Identifier','The Invoice Document.',800030,'C_Invoice_ID',131089,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:47','YYYY-MM-DD HH24:MI:SS'),0,1008,'N','N','LBR','Y','N','N','Y','9e4fa411-8d91-4e19-a33f-c0fd0fd37364','Y','N','N','N')
;

-- 31/03/2016 10h31min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800874,0.0,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',800030,'C_Order_ID',131089,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:48','YYYY-MM-DD HH24:MI:SS'),0,558,'N','N','LBR','Y','N','N','Y','974d6d3a-1bd0-4e99-ae46-6a1a334d9a8b','Y','N','N','N')
;

-- 31/03/2016 10h31min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800875,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800030,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:50','YYYY-MM-DD HH24:MI:SS'),0,187,'N','N','LBR','Y','N','N','Y','72313324-365f-40d3-90b0-b36436e2c29c','Y','N','N','N')
;

-- 31/03/2016 10h31min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800876,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800030,'DateDoc','@#Date@',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:51','YYYY-MM-DD HH24:MI:SS'),0,265,'N','N','LBR','Y','N','N','Y','e427e07d-611e-4c38-8328-193671dc4c73','Y','N','N','N')
;

-- 31/03/2016 10h31min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800877,0.0,'Date Delivered','Date when the product was delivered',800030,'DateDelivered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:52','YYYY-MM-DD HH24:MI:SS'),0,264,'N','N','LBR','Y','N','N','Y','f7858bbc-f986-4e36-8488-339e84e86cc8','Y','N','N','N')
;

-- 31/03/2016 10h31min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800878,0.0,'NF Serie',800030,'LBR_NFeSerie',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:53','YYYY-MM-DD HH24:MI:SS'),0,1000174,'N','N','LBR','Y','N','N','Y','01ed9316-ef99-498d-b726-f55740341fee','Y','N','N','N')
;

-- 31/03/2016 10h31min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800879,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',800030,'GrandTotal',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:55','YYYY-MM-DD HH24:MI:SS'),0,316,'N','N','LBR','Y','N','N','Y','2ede4bd1-4439-4baa-b7ed-339da1c253fe','Y','N','N','N')
;

-- 31/03/2016 10h31min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800880,0.0,'Total Lines','Total of all document lines','The Total amount displays the total of all lines in document currency',800030,'TotalLines',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:58','YYYY-MM-DD HH24:MI:SS'),0,598,'N','N','LBR','Y','N','N','Y','029ad613-4700-46b6-ad5e-5746b79a3283','Y','N','N','N')
;

-- 31/03/2016 10h32min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800881,0.0,'Freight Amount','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.',800030,'FreightAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:31:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:31:59','YYYY-MM-DD HH24:MI:SS'),0,306,'N','N','LBR','Y','N','N','Y','a09ca3a7-6dc4-4afe-bb94-dccaa373cbba','Y','N','N','N')
;

-- 31/03/2016 10h32min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800882,0.0,'NF Model',800030,'LBR_NFeModel',2147483647,'N','N','N','N','N','N',17,1000040,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:02','YYYY-MM-DD HH24:MI:SS'),0,1000173,'N','N','LBR','Y','N','N','Y','9224fcb2-2c7a-4b68-8336-061d4dac026c','Y','N','N','N')
;

-- 31/03/2016 10h32min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800883,0.0,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',800030,'Line',131089,'N','N','N','N','N','N',11,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:03','YYYY-MM-DD HH24:MI:SS'),0,439,'N','N','LBR','Y','N','N','Y','5f924f31-5ee6-4469-a5f5-68a0c240c001','Y','N','N','N')
;

-- 31/03/2016 10h32min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800884,0.0,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',800030,'LBR_NotaFiscalLine_ID',131089,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:05','YYYY-MM-DD HH24:MI:SS'),0,1000186,'N','N','LBR','Y','N','N','Y','7f1b1bc7-03e8-4907-b170-6ba73c815951','Y','N','N','N')
;

-- 31/03/2016 10h32min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800885,0.0,'CFOP','Indentifies the CFOP',800030,'LBR_CFOP_ID',131089,'N','N','N','N','N','N',30,1000018,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:06','YYYY-MM-DD HH24:MI:SS'),0,1000089,'N','N','LBR','Y','N','N','Y','cb83647f-bc7f-45dc-a12d-6a436f41105c','Y','N','N','N')
;

-- 31/03/2016 10h32min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800886,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',800030,231,'M_Product_ID',131089,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:08','YYYY-MM-DD HH24:MI:SS'),0,454,'N','N','LBR','Y','N','N','Y','ad669174-d1fb-43a7-bb62-0f59dafd2406','Y','N','N','N')
;

-- 31/03/2016 10h32min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800887,0.0,'NCM','NCM stands for Nomenclatura Comum do MERCOSUL',800030,'LBR_NCM_ID',131089,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:10','YYYY-MM-DD HH24:MI:SS'),0,1000012,'N','N','LBR','Y','N','N','Y','3526e4f7-6091-44d9-8126-48953baa86dd','Y','N','N','N')
;

-- 31/03/2016 10h32min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800888,0.0,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',800030,'C_UOM_ID',131089,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:11','YYYY-MM-DD HH24:MI:SS'),0,215,'N','N','LBR','Y','N','N','Y','64feca3d-2104-485a-be3a-b58ec5cafc64','Y','N','N','N')
;

-- 31/03/2016 10h32min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800889,0.0,'Product Key','Key of the Product',800030,'ProductValue',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:13','YYYY-MM-DD HH24:MI:SS'),0,1675,'N','N','LBR','Y','N','N','Y','a2071674-2ee4-494d-82b9-a264342aa666','Y','N','N','N')
;

-- 31/03/2016 10h32min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800890,0.0,'Product Name','Name of the Product',800030,'ProductName',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:14','YYYY-MM-DD HH24:MI:SS'),0,2659,'N','Y','LBR','Y','N','N','Y','6c127e89-df24-43f4-a45c-b7414356058f','Y','N','N','N')
;

-- 31/03/2016 10h32min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800891,0.0,'UPC/EAN','Bar Code (Universal Product Code or its superset European Article Number)','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ',800030,'UPC',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:15','YYYY-MM-DD HH24:MI:SS'),0,603,'N','N','LBR','Y','N','N','Y','f30ff683-6fc8-48a0-9204-43944429fd3c','Y','N','N','N')
;

-- 31/03/2016 10h32min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800892,0.0,'Price','Price','The Price indicates the Price for a product or service.',800030,'Price',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:17','YYYY-MM-DD HH24:MI:SS'),0,1416,'N','N','LBR','Y','N','N','Y','30aef970-6db5-446a-8f3a-0b7dcd37afc6','Y','N','N','N')
;

-- 31/03/2016 10h32min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800893,0.0,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',800030,'Qty',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:19','YYYY-MM-DD HH24:MI:SS'),0,526,'N','N','LBR','Y','N','N','Y','fbe6c40d-548e-44b4-8bc4-f1f9795a3c74','Y','N','N','N')
;

-- 31/03/2016 10h32min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800894,0.0,'Line Amount','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.',800030,'LineNetAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:20','YYYY-MM-DD HH24:MI:SS'),0,441,'N','N','LBR','Y','N','N','Y','49d7614f-e858-42ac-86c3-1972259e3318','Y','N','N','N')
;

-- 31/03/2016 10h32min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800895,0,'NFe Operation Type',800030,'LBR_NFE_OperationType','1',1,'N','N','N','N','N',0,'N',17,1000037,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:22','YYYY-MM-DD HH24:MI:SS'),0,1000175,'Y','N','LBR','Y','N','N','Y','8622546f-e2f3-4484-b465-1b482fa5703e','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800896,0,'Is Document Issued by Client/Org?',800030,'LBR_IsDocIssuedByOrg','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:24','YYYY-MM-DD HH24:MI:SS'),0,1000232,'Y','N','LBR','Y','N','N','Y','e7e99099-7789-4aac-a619-a2de6d16cf22','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800897,0,'Insured Amount',800030,'InsuredAmount',14,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:26','YYYY-MM-DD HH24:MI:SS'),0,200277,'Y','N','LBR','Y','N','N','Y','f845e3ea-24c9-4159-b2ac-95b97e22b2c7','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min48s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800898,0,'NFe Status',800030,'LBR_NFeStatus',3,'N','N','N','N','N',0,'N',17,1000039,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:47','YYYY-MM-DD HH24:MI:SS'),0,1000171,'Y','N','LBR','Y','N','N','Y','76405ad1-df3a-4e6f-b50a-0472e394eea1','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min49s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800899,0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',800030,'DocStatus','DR',2,'N','N','N','N','N',0,'N',17,131,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:48','YYYY-MM-DD HH24:MI:SS'),0,289,'Y','N','LBR','Y','N','N','Y','cf456fd6-3af7-4476-93dc-2f9cec8cf8c0','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800900,0,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',800030,'DiscountAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:49','YYYY-MM-DD HH24:MI:SS'),0,1395,'N','N','LBR','Y','N','N','Y','0be64f5b-21ba-40e9-b4e1-f587d2803ee9','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800901,0,'NFe Mode of Shipping',800030,'LBR_NFeModShipping','0',1,'N','N','N','N','N',0,'N',17,1000041,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:50','YYYY-MM-DD HH24:MI:SS'),0,1000190,'Y','N','LBR','Y','N','N','Y','641460b8-6203-4ee2-810a-60ef16f16543','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800902,0,'Product Type','Type of product','The type of product also determines accounting consequences.',800030,'ProductType',1,'N','N','N','N','N',0,'N',17,270,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:52','YYYY-MM-DD HH24:MI:SS'),0,1899,'N','N','LBR','Y','N','N','Y','dbfc2095-50ac-4d98-a307-d25686baf258','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800903,0,'Purchased','Organization purchases this product','The Purchased check box indicates if this product is purchased by this organization.',800030,'IsPurchased',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:53','YYYY-MM-DD HH24:MI:SS'),0,403,'N','N','LBR','Y','N','N','Y','d99fb40d-1721-418f-b0b1-8a77073df976','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800904,0,'Sold','Organization sells this product','The Sold check box indicates if this product is sold by this organization.',800030,'IsSold',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:54','YYYY-MM-DD HH24:MI:SS'),0,414,'N','N','LBR','Y','N','N','Y','7f80b39f-8ae9-41e8-952c-61f917f601de','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800905,0,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',800030,'C_Charge_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:55','YYYY-MM-DD HH24:MI:SS'),0,968,'N','N','LBR','Y','N','N','Y','de6964be-6cfd-4a5a-8187-4b58cc6df756','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800906,0,'Import Declaration (DI) No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800030,'LBR_DI_No',12,'N','N','N','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:57','YYYY-MM-DD HH24:MI:SS'),0,800002,'Y','N','LBR','Y','N','N','Y','e3261a0c-4192-4973-a2cd-36f4a9c26544','Y',0,'N','N','N')
;

-- 31/03/2016 10h32min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800907,0,'SPED Activity Indicator',800030,'LBR_SPED_Activity',1,'N','N','N','N','N',0,'N',17,800017,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:58','YYYY-MM-DD HH24:MI:SS'),0,800193,'Y','N','LBR','Y','N','N','Y','df939b58-4ba1-4b4f-ba74-fecaacadf8eb','Y',0,'N','N','N')
;

-- 31/03/2016 10h33min0s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800200,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:32:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:32:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMS_NFTaxBaseAmt','LBR_ICMS_NFTaxBaseAmt','LBR_ICMS_NFTaxBaseAmt','LBR','787708b0-b368-47be-91a1-b449d4956e26')
;

-- 31/03/2016 10h33min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800908,0.0,'LBR_ICMS_NFTaxBaseAmt',800030,'LBR_ICMS_NFTaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:00','YYYY-MM-DD HH24:MI:SS'),0,800200,'N','N','LBR','Y','N','N','Y','ce85e8b7-a751-4b70-a3ce-b8ea29f80ecb','Y','N','N','N')
;

-- 31/03/2016 10h33min4s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800201,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMS_NFTaxAmt','LBR_ICMS_NFTaxAmt','LBR_ICMS_NFTaxAmt','LBR','ce3550be-baab-4f8e-b747-363249606b52')
;

-- 31/03/2016 10h33min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800909,0.0,'LBR_ICMS_NFTaxAmt',800030,'LBR_ICMS_NFTaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:04','YYYY-MM-DD HH24:MI:SS'),0,800201,'N','N','LBR','Y','N','N','Y','8f58f282-7795-4e44-941e-08c5de6d0ee6','Y','N','N','N')
;

-- 31/03/2016 10h33min6s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800202,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMSST_NFTaxBaseAmt','LBR_ICMSST_NFTaxBaseAmt','LBR_ICMSST_NFTaxBaseAmt','LBR','496a9d6a-82ed-494f-8195-9f947758263f')
;

-- 31/03/2016 10h33min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800910,0.0,'LBR_ICMSST_NFTaxBaseAmt',800030,'LBR_ICMSST_NFTaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:06','YYYY-MM-DD HH24:MI:SS'),0,800202,'N','N','LBR','Y','N','N','Y','07317e1a-448c-425b-bcdd-a416ba596da0','Y','N','N','N')
;

-- 31/03/2016 10h33min9s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800203,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMSST_NFTaxAmt','LBR_ICMSST_NFTaxAmt','LBR_ICMSST_NFTaxAmt','LBR','871fdebd-c60c-4acb-953f-5abd0efaf6ca')
;

-- 31/03/2016 10h33min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800911,0.0,'LBR_ICMSST_NFTaxAmt',800030,'LBR_ICMSST_NFTaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:09','YYYY-MM-DD HH24:MI:SS'),0,800203,'N','N','LBR','Y','N','N','Y','5b18ccc2-64cc-4b76-9f38-c031c9540f3a','Y','N','N','N')
;

-- 31/03/2016 10h33min11s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800204,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:10','YYYY-MM-DD HH24:MI:SS'),0,'LBR_COFINS_NFTaxAmt','LBR_COFINS_NFTaxAmt','LBR_COFINS_NFTaxAmt','LBR','68e0a528-f6da-4d46-bf51-e70b8e57bb0d')
;

-- 31/03/2016 10h33min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800912,0.0,'LBR_COFINS_NFTaxAmt',800030,'LBR_COFINS_NFTaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:11','YYYY-MM-DD HH24:MI:SS'),0,800204,'N','N','LBR','Y','N','N','Y','80be124a-9295-4085-89e2-03ca8bd74e93','Y','N','N','N')
;

-- 31/03/2016 10h33min13s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800205,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR_PIS_NFTaxAmt','LBR_PIS_NFTaxAmt','LBR_PIS_NFTaxAmt','LBR','757271a7-dff7-434c-836d-b9b0f2df92fc')
;

-- 31/03/2016 10h33min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800913,0.0,'LBR_PIS_NFTaxAmt',800030,'LBR_PIS_NFTaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:13','YYYY-MM-DD HH24:MI:SS'),0,800205,'N','N','LBR','Y','N','N','Y','10de6428-0a55-4820-ba13-50577f767d14','Y','N','N','N')
;

-- 31/03/2016 10h33min16s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800206,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IPI_NFTaxAmt','LBR_IPI_NFTaxAmt','LBR_IPI_NFTaxAmt','LBR','79156625-143e-481a-974a-535743c190b5')
;

-- 31/03/2016 10h33min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800914,0.0,'LBR_IPI_NFTaxAmt',800030,'LBR_IPI_NFTaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:16','YYYY-MM-DD HH24:MI:SS'),0,800206,'N','N','LBR','Y','N','N','Y','288096ee-45b5-48c4-950e-2598e8ea1fe1','Y','N','N','N')
;

-- 31/03/2016 10h33min18s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800207,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BPEmpresa_CNPJ','LBR_BPEmpresa_CNPJ','LBR_BPEmpresa_CNPJ','LBR','79411613-6c65-4682-8180-f14a0f3acf84')
;

-- 31/03/2016 10h33min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800915,0.0,'LBR_BPEmpresa_CNPJ',800030,'LBR_BPEmpresa_CNPJ',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:18','YYYY-MM-DD HH24:MI:SS'),0,800207,'N','N','LBR','Y','N','N','Y','f827cc93-76e4-4e16-9033-cd3ecb09e440','Y','N','N','N')
;

-- 31/03/2016 10h33min21s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800208,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:20','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BPEmpresa_IE','LBR_BPEmpresa_IE','LBR_BPEmpresa_IE','LBR','e1a7d0ee-dda8-4624-a62d-882324f64ea7')
;

-- 31/03/2016 10h33min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800916,0.0,'LBR_BPEmpresa_IE',800030,'LBR_BPEmpresa_IE',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:21','YYYY-MM-DD HH24:MI:SS'),0,800208,'N','N','LBR','Y','N','N','Y','dea11689-07ee-4143-b9cd-da5596261cc2','Y','N','N','N')
;

-- 31/03/2016 10h33min23s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800209,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Address1','LBR_Org_Address1','LBR_Org_Address1','LBR','ecdbdcbf-1bbf-41a5-8576-5baa95d7a5ad')
;

-- 31/03/2016 10h33min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800917,0.0,'LBR_Org_Address1',800030,'LBR_Org_Address1',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:23','YYYY-MM-DD HH24:MI:SS'),0,800209,'N','N','LBR','Y','N','N','Y','ab38d1f1-ebb9-4442-aed6-f516cea72d5e','Y','N','N','N')
;

-- 31/03/2016 10h33min26s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800210,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Address2','LBR_Org_Address2','LBR_Org_Address2','LBR','7191513e-887b-4648-b951-1905e98cdd82')
;

-- 31/03/2016 10h33min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800918,0.0,'LBR_Org_Address2',800030,'LBR_Org_Address2',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:26','YYYY-MM-DD HH24:MI:SS'),0,800210,'N','N','LBR','Y','N','N','Y','e8d1fe3f-b133-4cbb-bae1-3b72719f94e4','Y','N','N','N')
;

-- 31/03/2016 10h33min28s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800211,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Address3','LBR_Org_Address3','LBR_Org_Address3','LBR','e8c18c02-c577-4243-8006-81d191008c78')
;

-- 31/03/2016 10h33min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800919,0.0,'LBR_Org_Address3',800030,'LBR_Org_Address3',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:28','YYYY-MM-DD HH24:MI:SS'),0,800211,'N','N','LBR','Y','N','N','Y','f6771567-2f5a-4af3-8a6d-07c1d77f7c45','Y','N','N','N')
;

-- 31/03/2016 10h33min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800212,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Address4','LBR_Org_Address4','LBR_Org_Address4','LBR','31600774-b4db-4158-b777-cacfb5a991b6')
;

-- 31/03/2016 10h33min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800920,0.0,'LBR_Org_Address4',800030,'LBR_Org_Address4',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:31','YYYY-MM-DD HH24:MI:SS'),0,800212,'N','N','LBR','Y','N','N','Y','d4d5e934-bd72-45dd-af4d-c525933163c9','Y','N','N','N')
;

-- 31/03/2016 10h33min33s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800213,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_City_Name','LBR_Org_City_Name','LBR_Org_City_Name','LBR','b2cd552e-b7a5-4912-9bad-416a78ed53e9')
;

-- 31/03/2016 10h33min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800921,0.0,'LBR_Org_City_Name',800030,'LBR_Org_City_Name',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:33','YYYY-MM-DD HH24:MI:SS'),0,800213,'N','N','LBR','Y','N','N','Y','588c0892-4b17-4b09-88ef-b5241a87e766','Y','N','N','N')
;

-- 31/03/2016 10h33min39s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800214,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:35','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ORG_Postal','LBR_ORG_Postal','LBR_ORG_Postal','LBR','68575f7f-5481-4df1-a4eb-44680fda3845')
;

-- 31/03/2016 10h33min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800922,0.0,'LBR_ORG_Postal',800030,'LBR_ORG_Postal',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:39','YYYY-MM-DD HH24:MI:SS'),0,800214,'N','N','LBR','Y','N','N','Y','934ea0a3-a7d9-41f2-b64b-c377b0c3ffbe','Y','N','N','N')
;

-- 31/03/2016 10h33min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800215,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_RegionName','LBR_Org_RegionName','LBR_Org_RegionName','LBR','ccce6508-f239-478b-ae80-53996aa81370')
;

-- 31/03/2016 10h33min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800923,0.0,'LBR_Org_RegionName',800030,'LBR_Org_RegionName',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:41','YYYY-MM-DD HH24:MI:SS'),0,800215,'N','N','LBR','Y','N','N','Y','8c897994-b429-46fe-803b-a0e4fd3ddf3b','Y','N','N','N')
;

-- 31/03/2016 10h33min44s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800216,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Name','LBR_Org_Name','LBR_Org_Name','LBR','6155a8a9-6088-4a63-9181-6474b6cab144')
;

-- 31/03/2016 10h33min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800924,0.0,'LBR_Org_Name',800030,'LBR_Org_Name',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:44','YYYY-MM-DD HH24:MI:SS'),0,800216,'N','N','LBR','Y','N','N','Y','ffe58985-af9c-4199-ad33-aebb3414ce8d','Y','N','N','N')
;

-- 31/03/2016 10h33min47s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800217,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BPEmpresa_CCM','LBR_BPEmpresa_CCM','LBR_BPEmpresa_CCM','LBR','3f318ae2-897d-490a-9b72-dcd7331290fa')
;

-- 31/03/2016 10h33min49s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800925,0.0,'LBR_BPEmpresa_CCM',800030,'LBR_BPEmpresa_CCM',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:47','YYYY-MM-DD HH24:MI:SS'),0,800217,'N','N','LBR','Y','N','N','Y','a78eec5c-c716-4871-a34d-a68b5f3ac057','Y','N','N','N')
;

-- 31/03/2016 10h33min50s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800218,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:49','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Location_ID','LBR_Org_Location_ID','LBR_Org_Location_ID','LBR','2216928e-c1f4-4a91-89df-8813c0a74856')
;

-- 31/03/2016 10h33min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800926,0.0,'LBR_Org_Location_ID',800030,'LBR_Org_Location_ID',131089,'N','N','N','N','N','N',18,133,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:50','YYYY-MM-DD HH24:MI:SS'),0,800218,'N','N','LBR','Y','N','N','Y','ceca5305-1ed5-4e1b-97da-0684febf1ac4','Y','N','N','N')
;

-- 31/03/2016 10h33min53s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800219,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:52','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Phone','LBR_Org_Phone','LBR_Org_Phone','LBR','0bad9486-e116-4ef3-9bfa-c52491f691e5')
;

-- 31/03/2016 10h33min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800927,0.0,'LBR_Org_Phone',800030,'LBR_Org_Phone',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:53','YYYY-MM-DD HH24:MI:SS'),0,800219,'N','N','LBR','Y','N','N','Y','9c3cb4f6-4779-47f0-8792-96f702415836','Y','N','N','N')
;

-- 31/03/2016 10h33min56s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800220,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_CityCode','LBR_Org_CityCode','LBR_Org_CityCode','LBR','6cd0a3dc-c510-4412-a0b4-836bfd951947')
;

-- 31/03/2016 10h33min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800928,0.0,'LBR_Org_CityCode',800030,'LBR_Org_CityCode',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:56','YYYY-MM-DD HH24:MI:SS'),0,800220,'N','N','LBR','Y','N','N','Y','f66f382f-278a-4bac-a39c-23384836c16b','Y','N','N','N')
;

-- 31/03/2016 10h33min58s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800221,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:57','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BPEmpresa_Suframa','LBR_BPEmpresa_Suframa','LBR_BPEmpresa_Suframa','LBR','1da3074f-98e9-4abe-a6fa-77aaf3dc42fb')
;

-- 31/03/2016 10h33min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800929,0.0,'LBR_BPEmpresa_Suframa',800030,'LBR_BPEmpresa_Suframa',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:58','YYYY-MM-DD HH24:MI:SS'),0,800221,'N','N','LBR','Y','N','N','Y','f7c1c984-5d74-4e67-93c0-712c6adaa73a','Y','N','N','N')
;

-- 31/03/2016 10h34min0s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800222,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:33:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:33:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BPEmpresa_Fantasia','LBR_BPEmpresa_Fantasia','LBR_BPEmpresa_Fantasia','LBR','e3e698be-2d3a-4cd9-96f9-aaf6351e5895')
;

-- 31/03/2016 10h34min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800930,0.0,'LBR_BPEmpresa_Fantasia',800030,'LBR_BPEmpresa_Fantasia',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:00','YYYY-MM-DD HH24:MI:SS'),0,800222,'N','N','LBR','Y','N','N','Y','47b2f76b-ef30-4ed7-8323-e314079f6689','Y','N','N','N')
;

-- 31/03/2016 10h34min3s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800223,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_CNAE','LBR_Org_CNAE','LBR_Org_CNAE','LBR','f855a054-d188-4fb6-98dc-6e8d02b276bf')
;

-- 31/03/2016 10h34min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800931,0.0,'LBR_Org_CNAE',800030,'LBR_Org_CNAE',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:03','YYYY-MM-DD HH24:MI:SS'),0,800223,'N','N','LBR','Y','N','N','Y','9958217c-b2f4-4b3a-851f-6da3d6a18ad2','Y','N','N','N')
;

-- 31/03/2016 10h34min8s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800224,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Org_Email','LBR_Org_Email','LBR_Org_Email','LBR','18e88cd0-2a6c-4aeb-8bfb-1a465837e346')
;

-- 31/03/2016 10h34min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800932,0.0,'LBR_Org_Email',800030,'LBR_Org_Email',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:08','YYYY-MM-DD HH24:MI:SS'),0,800224,'N','N','LBR','Y','N','N','Y','9d06ef5b-4bd3-4d85-90a2-5259069b5403','Y','N','N','N')
;

-- 31/03/2016 10h34min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800933,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',800030,'LBR_CNPJ',14,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:10','YYYY-MM-DD HH24:MI:SS'),0,1000004,'N','N','@LBR_BPTypeBRIsValid=''Y''','LBR','Y','N','N','Y','69cd7256-23cb-42ec-9ce2-8b298a8480a3','Y','N','N','N')
;

-- 31/03/2016 10h34min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800934,0.0,'IE','Used to identify the IE (State Tax ID)','Used to identify the IE (State Tax ID)',800030,'LBR_IE',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:13','YYYY-MM-DD HH24:MI:SS'),0,1000009,'N','N','LBR','Y','N','N','Y','29253c25-22b8-480c-b0b4-1da747697ba9','Y','N','N','N')
;

-- 31/03/2016 10h34min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800935,0.0,'Address 1','Address line 1 for this location','The Address 1 identifies the address for an entity''s location',800030,'Address1',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:15','YYYY-MM-DD HH24:MI:SS'),0,156,'N','N','LBR','Y','N','N','Y','793d4a67-ea3e-4873-b3a3-427dd4b47f96','Y','N','N','N')
;

-- 31/03/2016 10h34min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800936,0.0,'Address 2','Address line 2 for this location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',800030,'Address2',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:16','YYYY-MM-DD HH24:MI:SS'),0,157,'N','N','LBR','Y','N','N','Y','29e5c524-10cb-49da-9db6-f9fd22a7d539','Y','N','N','N')
;

-- 31/03/2016 10h34min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800937,0.0,'Address 3','Address Line 3 for the location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',800030,'Address3',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:17','YYYY-MM-DD HH24:MI:SS'),0,2555,'N','N','LBR','Y','N','N','Y','05b32664-e52a-4110-8803-49b66836d857','Y','N','N','N')
;

-- 31/03/2016 10h34min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800938,0.0,'Address 4','Address Line 4 for the location','The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',800030,'Address4',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:18','YYYY-MM-DD HH24:MI:SS'),0,2556,'N','N','LBR','Y','N','N','Y','725d044a-5f5b-47ed-815b-5e6e90e271ef','Y','N','N','N')
;

-- 31/03/2016 10h34min21s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800225,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:19','YYYY-MM-DD HH24:MI:SS'),0,'LBR_City_Name','LBR_City_Name','LBR_City_Name','LBR','b8bf82e8-9d60-4108-b3e1-5bdbeb35463d')
;

-- 31/03/2016 10h34min23s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800939,0.0,'LBR_City_Name',800030,'LBR_City_Name',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:21','YYYY-MM-DD HH24:MI:SS'),0,800225,'N','N','LBR','Y','N','N','Y','b2d70526-e67f-4238-a221-f07dcde458b6','Y','N','N','N')
;

-- 31/03/2016 10h34min24s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800226,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:23','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Postal','LBR_Postal','LBR_Postal','LBR','56467b0b-518b-4923-ab41-a98d8c230d3f')
;

-- 31/03/2016 10h34min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800940,0.0,'LBR_Postal',800030,'LBR_Postal',10,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:24','YYYY-MM-DD HH24:MI:SS'),0,800226,'N','N','LBR','Y','N','N','Y','60a72df8-760c-4a06-9050-b0eb9b23ed72','Y','N','N','N')
;

-- 31/03/2016 10h34min29s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800227,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR_Region_Name','LBR_Region_Name','LBR_Region_Name','LBR','cc7d4578-8e63-4d64-a95c-79c214d4dab7')
;

-- 31/03/2016 10h34min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800941,0.0,'LBR_Region_Name',800030,'LBR_Region_Name',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:29','YYYY-MM-DD HH24:MI:SS'),0,800227,'N','N','LBR','Y','N','N','Y','b01ac8c5-2f73-4b60-b726-fb765e55eb40','Y','N','N','N')
;

-- 31/03/2016 10h34min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800942,0.0,'Suframa','Brazilian SUFRAMA Identification Number','Brazilian SUFRAMA Identification Number',800030,'LBR_Suframa',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:32','YYYY-MM-DD HH24:MI:SS'),0,1000008,'N','N','LBR','Y','N','N','Y','e35765f8-c380-40a2-a86f-00011aca4dff','Y','N','N','N')
;

-- 31/03/2016 10h34min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800943,0.0,'Cód. Cidade (IBGE)','Código do município no IBGE','Alguns recursos exigem este código (ex: Nota Fiscal Eletrônica)',800030,'LBR_CityCode',10,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:34','YYYY-MM-DD HH24:MI:SS'),0,1000000,'N','N','LBR','Y','N','N','Y','db828e06-2fc5-4b6a-8178-fdc84de0151a','Y','N','N','N')
;

-- 31/03/2016 10h34min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800944,0.0,'Country Code for Nota Fiscal','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)',800030,'LBR_CountryCode',5,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:35','YYYY-MM-DD HH24:MI:SS'),0,1000236,'N','N','LBR','Y','N','N','Y','bd4d50c7-7ed4-457a-8176-f1a14fde25ea','Y','N','N','N')
;

-- 31/03/2016 10h34min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800945,0.0,'Symbol','Symbol for a Unit of Measure','The Symbol identifies the Symbol to be displayed and printed for a Unit of Measure',800030,'UOMSymbol',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:36','YYYY-MM-DD HH24:MI:SS'),0,602,'N','N','LBR','Y','N','N','Y','a97174fa-1f75-4b59-ab95-b15285c1cfe6','Y','N','N','N')
;

-- 31/03/2016 10h34min40s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800228,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR_UOM_Name','LBR_UOM_Name','LBR_UOM_Name','LBR','bee5d0f3-b08c-4f23-97a4-a7ee3a73c8ab')
;

-- 31/03/2016 10h34min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800946,0.0,'LBR_UOM_Name',800030,'LBR_UOM_Name',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:40','YYYY-MM-DD HH24:MI:SS'),0,800228,'N','N','LBR','Y','N','N','Y','957b9e43-6be9-44a1-b2db-6cea703a4d97','Y','N','N','N')
;

-- 31/03/2016 10h34min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800229,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:41','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NCM_Value','LBR_NCM_Value','LBR_NCM_Value','LBR','f8f19a5d-c6b0-416d-b17a-745ea296cad8')
;

-- 31/03/2016 10h34min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800947,0.0,'LBR_NCM_Value',800030,'LBR_NCM_Value',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:42','YYYY-MM-DD HH24:MI:SS'),0,800229,'N','N','LBR','Y','N','N','Y','482ab58f-cebc-4004-9204-0095984afd82','Y','N','N','N')
;

-- 31/03/2016 10h34min46s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800230,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:44','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMS_TaxBaseAmt','LBR_ICMS_TaxBaseAmt','LBR_ICMS_TaxBaseAmt','LBR','044a57e2-0526-4e46-b824-66c78a5c5c7f')
;

-- 31/03/2016 10h34min47s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800948,0.0,'LBR_ICMS_TaxBaseAmt',800030,'LBR_ICMS_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,800230,'N','N','LBR','Y','N','N','Y','d591df28-e33e-4d8e-9c0d-34576ec94038','Y','N','N','N')
;

-- 31/03/2016 10h34min48s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800231,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:47','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMS_TaxBase','LBR_ICMS_TaxBase','LBR_ICMS_TaxBase','LBR','fbf75026-adca-4b2f-b409-ba1833bd87c0')
;

-- 31/03/2016 10h34min49s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800949,0.0,'LBR_ICMS_TaxBase',800030,'LBR_ICMS_TaxBase',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:48','YYYY-MM-DD HH24:MI:SS'),0,800231,'N','N','LBR','Y','N','N','Y','9d0d4ed4-5118-42a3-9952-4f93d8cdaa32','Y','N','N','N')
;

-- 31/03/2016 10h34min50s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800232,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:49','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMS_TaxRate','LBR_ICMS_TaxRate','LBR_ICMS_TaxRate','LBR','6cae54ca-ac48-4eea-8f57-1910eff457ea')
;

-- 31/03/2016 10h34min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800950,0.0,'LBR_ICMS_TaxRate',800030,'LBR_ICMS_TaxRate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:50','YYYY-MM-DD HH24:MI:SS'),0,800232,'N','N','LBR','Y','N','N','Y','bd816270-4221-43b5-bb58-838745f7d558','Y','N','N','N')
;

-- 31/03/2016 10h34min53s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800233,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:52','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMS_TaxAmt','LBR_ICMS_TaxAmt','LBR_ICMS_TaxAmt','LBR','3ac8131c-5eda-463e-9080-c78c17741ec7')
;

-- 31/03/2016 10h34min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800951,0.0,'LBR_ICMS_TaxAmt',800030,'LBR_ICMS_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:53','YYYY-MM-DD HH24:MI:SS'),0,800233,'N','N','LBR','Y','N','N','Y','3a20d59e-d6ec-4a8e-93f9-91ccaebab801','Y','N','N','N')
;

-- 31/03/2016 10h34min57s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800234,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMS_TaxStatus','LBR_ICMS_TaxStatus','LBR_ICMS_TaxStatus','LBR','c36edde0-6f53-471e-9ca2-74a4e1383333')
;

-- 31/03/2016 10h35min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800952,0.0,'LBR_ICMS_TaxStatus',800030,'LBR_ICMS_TaxStatus',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:34:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:34:57','YYYY-MM-DD HH24:MI:SS'),0,800234,'N','N','LBR','Y','N','N','Y','84ada94f-6a46-459d-8a28-209fc110e346','Y','N','N','N')
;

-- 31/03/2016 10h35min2s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800235,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:00','YYYY-MM-DD HH24:MI:SS'),0,'LBR_PIS_TaxBaseAmt','LBR_PIS_TaxBaseAmt','LBR_PIS_TaxBaseAmt','LBR','5ad0262a-8f24-4de1-9145-a7a5d6351bf7')
;

-- 31/03/2016 10h35min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800953,0.0,'LBR_PIS_TaxBaseAmt',800030,'LBR_PIS_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:02','YYYY-MM-DD HH24:MI:SS'),0,800235,'N','N','LBR','Y','N','N','Y','bf91b44d-6be2-467f-8a9c-2e5e7dc698bb','Y','N','N','N')
;

-- 31/03/2016 10h35min5s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800236,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR_PIS_TaxBase','LBR_PIS_TaxBase','LBR_PIS_TaxBase','LBR','8dc0b4e6-cea8-4233-b3dc-1b90a846cf21')
;

-- 31/03/2016 10h35min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800954,0.0,'LBR_PIS_TaxBase',800030,'LBR_PIS_TaxBase',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:06','YYYY-MM-DD HH24:MI:SS'),0,800236,'N','N','LBR','Y','N','N','Y','0026395b-7c9e-4189-a886-64926b202a71','Y','N','N','N')
;

-- 31/03/2016 10h35min9s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800237,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR_PIS_TaxRate','LBR_PIS_TaxRate','LBR_PIS_TaxRate','LBR','93be8247-f43c-47d6-9160-f19e23d0892c')
;

-- 31/03/2016 10h35min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800955,0.0,'LBR_PIS_TaxRate',800030,'LBR_PIS_TaxRate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:09','YYYY-MM-DD HH24:MI:SS'),0,800237,'N','N','LBR','Y','N','N','Y','78244820-6831-4ca7-a342-b638bb2ef657','Y','N','N','N')
;

-- 31/03/2016 10h35min11s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800238,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:10','YYYY-MM-DD HH24:MI:SS'),0,'LBR_PIS_TaxAmt','LBR_PIS_TaxAmt','LBR_PIS_TaxAmt','LBR','201b0952-53f1-4138-8308-c37fb59745e4')
;

-- 31/03/2016 10h35min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800956,0.0,'LBR_PIS_TaxAmt',800030,'LBR_PIS_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:11','YYYY-MM-DD HH24:MI:SS'),0,800238,'N','N','LBR','Y','N','N','Y','db58864b-6637-4e4c-80d5-d1c1e2b6a8c9','Y','N','N','N')
;

-- 31/03/2016 10h35min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800957,0.0,'PIS Tax Status','Identifies a PIS Tax Status',800030,'LBR_PIS_TaxStatus',2147483647,'N','N','N','N','N','N',17,1000031,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:13','YYYY-MM-DD HH24:MI:SS'),0,1000145,'N','N','LBR','Y','N','N','Y','62f11925-7f94-4426-9f2b-cf6d71e00386','Y','N','N','N')
;

-- 31/03/2016 10h35min16s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800239,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR_COFINS_TaxBaseAmt','LBR_COFINS_TaxBaseAmt','LBR_COFINS_TaxBaseAmt','LBR','cd192c4e-dd65-4ec9-b74a-c5cf9e8811a0')
;

-- 31/03/2016 10h35min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800958,0.0,'LBR_COFINS_TaxBaseAmt',800030,'LBR_COFINS_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:16','YYYY-MM-DD HH24:MI:SS'),0,800239,'N','N','LBR','Y','N','N','Y','1f673dcd-93c3-473b-9260-7f0db6065368','Y','N','N','N')
;

-- 31/03/2016 10h35min19s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800240,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR_COFINS_TaxBase','LBR_COFINS_TaxBase','LBR_COFINS_TaxBase','LBR','a963a76b-94a1-47fb-95ef-eb6e3033b453')
;

-- 31/03/2016 10h35min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800959,0.0,'LBR_COFINS_TaxBase',800030,'LBR_COFINS_TaxBase',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:19','YYYY-MM-DD HH24:MI:SS'),0,800240,'N','N','LBR','Y','N','N','Y','a7561ea6-172a-4526-a8fb-8975735e546c','Y','N','N','N')
;

-- 31/03/2016 10h35min21s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800241,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:20','YYYY-MM-DD HH24:MI:SS'),0,'LBR_COFINS_TaxRate','LBR_COFINS_TaxRate','LBR_COFINS_TaxRate','LBR','cab2f4d0-4117-4624-9e6b-6d376e09c509')
;

-- 31/03/2016 10h35min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800960,0.0,'LBR_COFINS_TaxRate',800030,'LBR_COFINS_TaxRate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:21','YYYY-MM-DD HH24:MI:SS'),0,800241,'N','N','LBR','Y','N','N','Y','fd071ea7-3278-4131-be1f-8c77693f9c35','Y','N','N','N')
;

-- 31/03/2016 10h35min23s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800242,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR_COFINS_TaxAmt','LBR_COFINS_TaxAmt','LBR_COFINS_TaxAmt','LBR','944e3361-2fd3-45a2-82b3-78ca406515b4')
;

-- 31/03/2016 10h35min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800961,0.0,'LBR_COFINS_TaxAmt',800030,'LBR_COFINS_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:23','YYYY-MM-DD HH24:MI:SS'),0,800242,'N','N','LBR','Y','N','N','Y','b63190d8-6171-448f-8ef3-7707d7a1015d','Y','N','N','N')
;

-- 31/03/2016 10h35min26s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800243,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR_COFINS_TaxStatus','LBR_COFINS_TaxStatus','LBR_COFINS_TaxStatus','LBR','dc6da103-3e14-45b1-9f83-b1d00231a393')
;

-- 31/03/2016 10h35min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800962,0.0,'LBR_COFINS_TaxStatus',800030,'LBR_COFINS_TaxStatus',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:26','YYYY-MM-DD HH24:MI:SS'),0,800243,'N','N','LBR','Y','N','N','Y','8fa85ac9-4bb3-425a-9360-958f2b6db963','Y','N','N','N')
;

-- 31/03/2016 10h35min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800963,0.0,'ICMS-ST Tax Base Amount','Defines the ICMS-ST Tax Base Amount',800030,'LBR_ICMSST_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:27','YYYY-MM-DD HH24:MI:SS'),0,1000113,'N','N','LBR','Y','N','N','Y','817a59fb-55c9-4157-b30f-fd934cb81191','Y','N','N','N')
;

-- 31/03/2016 10h35min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800964,0.0,'ICMS-ST Tax Base','Indicates the ICMS-ST Tax Base',800030,'LBR_ICMSST_TaxBase',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:28','YYYY-MM-DD HH24:MI:SS'),0,1000112,'N','N','LBR','Y','N','N','Y','0f8019c2-30c5-4fd7-b9e9-3586968405ae','Y','N','N','N')
;

-- 31/03/2016 10h35min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800965,0.0,'ICMS-ST Tax Rate','Indicates the ICMS-ST Tax Rate',800030,'LBR_ICMSST_TaxRate',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:30','YYYY-MM-DD HH24:MI:SS'),0,1000114,'N','N','LBR','Y','N','N','Y','3d9703a5-89be-4a4b-b572-6e629f304b1c','Y','N','N','N')
;

-- 31/03/2016 10h35min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800966,0.0,'ICMS-ST Tax Amount','Defines the ICMS-ST Tax Amount',800030,'LBR_ICMSST_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:31','YYYY-MM-DD HH24:MI:SS'),0,1000115,'N','N','LBR','Y','N','N','Y','6e5d78c7-82c7-4f40-83f3-34dd8252595c','Y','N','N','N')
;

-- 31/03/2016 10h35min33s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800244,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ICMSST_TaxStatus','LBR_ICMSST_TaxStatus','LBR_ICMSST_TaxStatus','LBR','18aa63c7-6e94-4eaf-86c9-83a28833d6fe')
;

-- 31/03/2016 10h35min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800967,0.0,'LBR_ICMSST_TaxStatus',800030,'LBR_ICMSST_TaxStatus',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:33','YYYY-MM-DD HH24:MI:SS'),0,800244,'N','N','LBR','Y','N','N','Y','ce884447-0817-4b1c-93fe-810d9857c741','Y','N','N','N')
;

-- 31/03/2016 10h35min36s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800245,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:35','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IPI_TaxBaseAmt','LBR_IPI_TaxBaseAmt','LBR_IPI_TaxBaseAmt','LBR','441224cf-1d4e-408b-8a9b-0df1a5549b2e')
;

-- 31/03/2016 10h35min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800968,0.0,'LBR_IPI_TaxBaseAmt',800030,'LBR_IPI_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:36','YYYY-MM-DD HH24:MI:SS'),0,800245,'N','N','LBR','Y','N','N','Y','80f7e959-43ce-4128-ba21-34a8adf1f242','Y','N','N','N')
;

-- 31/03/2016 10h35min38s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800246,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:37','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IPI_TaxRate','LBR_IPI_TaxRate','LBR_IPI_TaxRate','LBR','a8a5797f-9491-4269-a7ba-7a5adcccf158')
;

-- 31/03/2016 10h35min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800969,0.0,'LBR_IPI_TaxRate',800030,'LBR_IPI_TaxRate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:38','YYYY-MM-DD HH24:MI:SS'),0,800246,'N','N','LBR','Y','N','N','Y','d6aea94d-7780-4dea-83a9-54942da70d6d','Y','N','N','N')
;

-- 31/03/2016 10h35min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800247,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IPI_TaxAmt','LBR_IPI_TaxAmt','LBR_IPI_TaxAmt','LBR','60062529-f804-4ff4-a5a6-4bb9dc8f9e1a')
;

-- 31/03/2016 10h35min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800970,0.0,'LBR_IPI_TaxAmt',800030,'LBR_IPI_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:41','YYYY-MM-DD HH24:MI:SS'),0,800247,'N','N','LBR','Y','N','N','Y','eca633e6-35b2-4616-a986-ad9d8e683775','Y','N','N','N')
;

-- 31/03/2016 10h35min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800971,0.0,'IPI Tax Status','Identifies a IPI Tax Status',800030,'LBR_IPI_TaxStatus',2147483647,'N','N','N','N','N','N',17,1000029,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:42','YYYY-MM-DD HH24:MI:SS'),0,1000138,'N','N','LBR','Y','N','N','Y','267a1359-7ce8-40c6-80b1-913c57769f81','Y','N','N','N')
;

-- 31/03/2016 10h35min45s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800248,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR_II_TaxBaseAmt','LBR_II_TaxBaseAmt','LBR_II_TaxBaseAmt','LBR','8437904f-953d-444a-ab32-e7a89cd83983')
;

-- 31/03/2016 10h35min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800972,0.0,'LBR_II_TaxBaseAmt',800030,'LBR_II_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:45','YYYY-MM-DD HH24:MI:SS'),0,800248,'N','N','LBR','Y','N','N','Y','561743ea-5493-485e-a671-7f3277cb8325','Y','N','N','N')
;

-- 31/03/2016 10h35min47s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800249,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:46','YYYY-MM-DD HH24:MI:SS'),0,'LBR_II_TaxRate','LBR_II_TaxRate','LBR_II_TaxRate','LBR','5273762d-11ef-4106-bbde-c336404cec4c')
;

-- 31/03/2016 10h35min49s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800973,0.0,'LBR_II_TaxRate',800030,'LBR_II_TaxRate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:47','YYYY-MM-DD HH24:MI:SS'),0,800249,'N','N','LBR','Y','N','N','Y','f65aa98e-89b5-4c44-bc11-41cc6e9061c5','Y','N','N','N')
;

-- 31/03/2016 10h35min50s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800250,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:49','YYYY-MM-DD HH24:MI:SS'),0,'LBR_II_TaxAmt','LBR_II_TaxAmt','LBR_II_TaxAmt','LBR','b1979413-1f88-49a9-8157-9cf24f462ad2')
;

-- 31/03/2016 10h35min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800974,0.0,'LBR_II_TaxAmt',800030,'LBR_II_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:50','YYYY-MM-DD HH24:MI:SS'),0,800250,'N','N','LBR','Y','N','N','Y','82b0262d-f500-4d3c-837b-6876f38f6ab7','Y','N','N','N')
;

-- 31/03/2016 10h35min53s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800251,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:52','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CFOP_Value','LBR_CFOP_Value','LBR_CFOP_Value','LBR','f6d35868-a70a-49c5-8130-c697c3e1d749')
;

-- 31/03/2016 10h35min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800975,0.0,'LBR_CFOP_Value',800030,'LBR_CFOP_Value',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:53','YYYY-MM-DD HH24:MI:SS'),0,800251,'N','N','LBR','Y','N','N','Y','d5bba176-8e3e-4ebe-97be-e84b93983f11','Y','N','N','N')
;

-- 31/03/2016 10h35min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800976,0.0,'Address','Location or Address','The Location / Address field defines the location of an entity.',800030,'C_Location_ID',10,'N','N','N','N','N','N',21,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:55','YYYY-MM-DD HH24:MI:SS'),0,202,'N','N','LBR','Y','N','N','Y','ee8f11fa-4cfa-4627-a397-fe326e834cf4','Y','N','N','N')
;

-- 31/03/2016 10h35min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800977,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800030,'Name',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:57','YYYY-MM-DD HH24:MI:SS'),0,469,'Y','Y','LBR','Y','N','N','Y','90fd9ac5-5e3b-4d4f-b07a-b7e0e06b053b','Y',0,'N','N','N')
;

-- 31/03/2016 10h35min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800978,0.0,'Surcharges',800030,'Surcharges',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:58','YYYY-MM-DD HH24:MI:SS'),0,200296,'N','N','LBR','Y','N','N','Y','e6ac0807-dfe3-474f-a748-6efa0102cce8','Y','N','N','N')
;

-- 31/03/2016 10h36min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800979,0.0,'Siscomex Amount',800030,'LBR_SiscomexAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:35:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:35:59','YYYY-MM-DD HH24:MI:SS'),0,800103,'N','N','LBR','Y','N','N','Y','b330d169-fe3e-4968-b61f-967b5c189607','Y','N','N','N')
;

-- 31/03/2016 10h36min1s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800252,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:00','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CFOP_Description','CFOP Description','CFOP Description','LBR','fea6d75a-d968-424d-8ad4-6682a712e9c5')
;

-- 31/03/2016 10h36min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800980,0,'CFOP Description',800030,'LBR_CFOP_Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,800252,'Y','N','LBR','Y','N','N','Y','7a457005-fd0c-4227-8751-b766beae9180','Y',0,'N','N','N')
;

-- 31/03/2016 10h36min29s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800031,'Fiscal Details','Fiscal details of the invoice','LBR_FiscalDoc',0,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:28','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','N','L','N','Y','b68e58c2-11bc-4f89-9679-90f9bf199bd7','N','N')
;

-- 31/03/2016 10h36min31s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_FiscalDoc',1000000,'N','N','Table LBR_FiscalDoc','Y','Y',0,0,TO_TIMESTAMP('2016-03-31 10:36:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:29','YYYY-MM-DD HH24:MI:SS'),0,800044,'Y',1000000,1,200000,'2ca32409-1422-433d-91b4-6049680ee736')
;

-- 31/03/2016 10h36min32s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800253,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR_FiscalDoc_ID','Fiscal Details','Fiscal Details','LBR','cd6e0a8a-f7d7-42c3-a81b-dc395cbf817d')
;

-- 31/03/2016 10h36min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800981,0,'Fiscal Details',800031,'LBR_FiscalDoc_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:32','YYYY-MM-DD HH24:MI:SS'),0,800253,'N','N','LBR','Y','N','N','Y','bfbf06a0-20fc-416e-a275-b10e13fb23f1','N',0,'N','N','N')
;

-- 31/03/2016 10h36min33s BRT
CREATE TABLE LBR_FiscalDoc (LBR_FiscalDoc_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_FiscalDoc_Key PRIMARY KEY (LBR_FiscalDoc_ID))
;

-- 31/03/2016 10h36min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800982,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800031,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:34','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','Y','N','N','Y','d44c908c-8555-45fd-84be-c4452b981345','N',0,'N','N','ADClient_LBRFiscalDoc','N')
;

-- 31/03/2016 10h36min35s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h36min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800983,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800031,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:35','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','Y','N','N','Y','7aba0e85-e049-42e3-85c1-871b52785d12','N',0,'N','N','ADOrg_LBRFiscalDoc','N')
;

-- 31/03/2016 10h36min36s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h36min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800984,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800031,'Created',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:36','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','Y','N','N','Y','3898b029-1ab8-4bf2-8e65-59d27d1b7e89','N',0,'N','N','N')
;

-- 31/03/2016 10h36min37s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- 31/03/2016 10h36min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800985,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800031,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:37','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','Y','N','N','Y','7ceade2d-d716-48df-a2a4-74d3c7392c73','N',0,'N','N','CreatedBy_LBRFiscalDoc','N')
;

-- 31/03/2016 10h36min38s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h36min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800986,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800031,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:39','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','Y','N','N','Y','d83af313-dad4-4adf-aa56-71730f069efd','N',0,'N','N','N')
;

-- 31/03/2016 10h36min40s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 31/03/2016 10h36min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800254,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR_FiscalDoc_UU','LBR_FiscalDoc_UU','LBR_FiscalDoc_UU','LBR','540a8e0a-bd1a-4a81-bc04-461affd42a76')
;

-- 31/03/2016 10h36min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800987,0,'LBR_FiscalDoc_UU',800031,'LBR_FiscalDoc_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:41','YYYY-MM-DD HH24:MI:SS'),0,800254,'N','N','LBR','Y','N','N','Y','5068d87a-ef70-4822-89e6-2bf0b9632800','N',0,'N','N','N')
;

-- 31/03/2016 10h36min42s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_FiscalDoc_UU VARCHAR(36) DEFAULT NULL 
;

-- 31/03/2016 10h36min42s BRT
ALTER TABLE LBR_FiscalDoc ADD CONSTRAINT LBR_FiscalDoc_UU_idx UNIQUE (LBR_FiscalDoc_UU)
;

-- 31/03/2016 10h36min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800988,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800031,'Updated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:42','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','Y','N','N','Y','5260716d-a630-493b-913a-d0793ae50280','N',0,'N','N','N')
;

-- 31/03/2016 10h36min44s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- 31/03/2016 10h36min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (800989,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800031,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:44','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','Y','N','N','Y','400b59c7-a246-4df0-9dab-6f99bf2909f6','N',0,'N','N','UpdatedBy_LBRFiscalDoc','N')
;

-- 31/03/2016 10h36min45s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- 31/03/2016 10h36min46s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800019,'LBR_FiscalDoc_Model','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','9644cf56-b908-49e9-8874-0e50f7d32210')
;

-- 31/03/2016 10h36min47s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800082,'01 - Fiscal document models 1 and 1A',800019,'01',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:46','YYYY-MM-DD HH24:MI:SS'),0,'LBR','cd588654-e3d3-4fbe-8cf2-9dbd5afab63a')
;

-- 31/03/2016 10h36min49s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800083,'04 - Farmers'' fiscal document',800019,'04',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:47','YYYY-MM-DD HH24:MI:SS'),0,'LBR','a3a32b71-ad1f-4684-a546-ccb813533e07')
;

-- 31/03/2016 10h36min50s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800084,'06 - Electricity fiscal document',800019,'06',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:49','YYYY-MM-DD HH24:MI:SS'),0,'LBR','67631269-923d-41fc-a640-4883861080df')
;

-- 31/03/2016 10h36min51s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800085,'07 - Transportation fiscal document',800019,'07',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:50','YYYY-MM-DD HH24:MI:SS'),0,'LBR','00b062dd-dd91-4b0d-b071-ab1011ea7d6b')
;

-- 31/03/2016 10h36min52s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800086,'08 - Bill of Road Transport',800019,'08',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:51','YYYY-MM-DD HH24:MI:SS'),0,'LBR','30ddece7-c8fd-40d2-b070-67115956b3e6')
;

-- 31/03/2016 10h36min53s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800087,'09 - Bill of Waterway transport',800019,'09',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:52','YYYY-MM-DD HH24:MI:SS'),0,'LBR','441042fe-5db8-49fc-a089-2d08d42d1d38')
;

-- 31/03/2016 10h36min55s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800088,'10 - Bill of aerial transport',800019,'10',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:53','YYYY-MM-DD HH24:MI:SS'),0,'LBR','0ef7ad92-0bf0-4c37-943a-8bd0f7079cc8')
;

-- 31/03/2016 10h36min56s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800089,'11- Bill of railway transport',800019,'11',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR','16059630-e4f9-4962-9f55-e92d8fa5aae7')
;

-- 31/03/2016 10h36min57s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800090,'1B - Single fiscal document',800019,'1B',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:56','YYYY-MM-DD HH24:MI:SS'),0,'LBR','147d1858-70ab-4ffa-8c84-859d10244457')
;

-- 31/03/2016 10h36min58s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800091,'21 - Comunications fiscal document',800019,'21',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:57','YYYY-MM-DD HH24:MI:SS'),0,'LBR','ae84b959-3633-4938-b851-a7a04211717e')
;

-- 31/03/2016 10h37min0s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800092,'22 - Telecomunications fiscal document',800019,'22',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:36:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:36:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR','b1b3b671-7922-4b01-9a67-3b5d2fd35c31')
;

-- 31/03/2016 10h37min1s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800093,'26 - Bill of transports through multiple means',800019,'26',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:00','YYYY-MM-DD HH24:MI:SS'),0,'LBR','00e56a1d-fb65-4d6c-924a-4b9490115068')
;

-- 31/03/2016 10h37min2s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800094,'27 - Railway transportation fiscal document',800019,'27',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:01','YYYY-MM-DD HH24:MI:SS'),0,'LBR','b78eec95-7fb5-490e-9999-b49fcb0fd9c0')
;

-- 31/03/2016 10h37min4s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800095,'28 - Piped Gas fiscal document',800019,'28',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR','7966d695-f7f6-4d0e-a83f-4c1534252359')
;

-- 31/03/2016 10h37min5s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800096,'29 - Piped water fiscal document',800019,'29',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR','bd2220ed-fcfb-4a76-afd0-7a068249b8e4')
;

-- 31/03/2016 10h37min6s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800097,'57 - Electronic bill of transport',800019,'57',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR','d8c21778-1d5f-4062-95e8-afd7799327c8')
;

-- 31/03/2016 10h37min8s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800098,'8B - Single Bill of Road Transport',800019,'8B',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR','45eaa225-ad31-4c39-bbc6-8df795ffb8ca')
;

-- 31/03/2016 10h37min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800990,0,'NF Model',800031,'LBR_NFeModel',2,'N','N','Y','N','N',0,'N',17,800019,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:08','YYYY-MM-DD HH24:MI:SS'),0,1000173,'Y','N','LBR','Y','N','N','Y','962e98cd-e0ec-44e2-8526-c94c5983d8a7','Y',0,'N','N','N')
;

-- 31/03/2016 10h37min9s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_NFeModel VARCHAR(2) NOT NULL
;

-- 31/03/2016 10h37min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800991,0,'NF Serie',800031,'LBR_NFeSerie',4,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:09','YYYY-MM-DD HH24:MI:SS'),0,1000174,'Y','N','LBR','Y','N','N','Y','d07bff66-474b-425e-94eb-836f05a715b7','Y',0,'N','N','N')
;

-- 31/03/2016 10h37min11s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_NFeSerie VARCHAR(4) DEFAULT NULL 
;

-- 31/03/2016 10h37min12s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800255,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:11','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFeSubSerie','Sub série','Sub série','LBR','86258ea1-08dd-4e4b-98fc-311d84451264')
;

-- 31/03/2016 10h37min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800992,0,'Sub série',800031,'LBR_NFeSubSerie',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:12','YYYY-MM-DD HH24:MI:SS'),0,800255,'Y','N','LBR','Y','N','N','Y','5fe4d593-996f-414a-b1c1-cc26e0dedeb3','Y',0,'N','N','N')
;

-- 31/03/2016 10h37min13s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_NFeSubSerie VARCHAR(3) DEFAULT NULL 
;

-- 31/03/2016 10h37min14s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800256,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CodCons','Classe de Consumo','Classe de Consumo','LBR','02f6f008-48a0-4910-aa2c-028a0b3848c9')
;

-- 31/03/2016 10h37min15s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800020,'LBR_CodCons','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:14','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','d910f2fe-6cdd-470a-89c4-2bf39b1eaddf')
;

-- 31/03/2016 10h37min17s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800099,'01 - Comercial',800020,'01',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR','f661bdeb-7366-4c5e-847a-294712579b97')
;

-- 31/03/2016 10h37min18s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800100,'02 - Consumo Próprio',800020,'02',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','8799ee20-8308-4415-b55d-6743f013001c')
;

-- 31/03/2016 10h37min19s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800101,'03 - Iluminação Pública',800020,'03',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:18','YYYY-MM-DD HH24:MI:SS'),0,'LBR','fdeeea64-984d-4282-af71-7baf10870a80')
;

-- 31/03/2016 10h37min20s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800102,'04 - Industrial',800020,'04',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:19','YYYY-MM-DD HH24:MI:SS'),0,'LBR','7b2e3853-ea48-4963-9595-ba74704f818e')
;

-- 31/03/2016 10h37min22s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800103,'05 - Poder Público',800020,'05',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','f51abc6c-2e83-45e8-87d3-09d3e879246f')
;

-- 31/03/2016 10h37min23s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800104,'06 - Residencial',800020,'06',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR','ba558f8e-93ee-40cd-903e-ed5457ea16c2')
;

-- 31/03/2016 10h37min25s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800105,'07 - Rural',800020,'07',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:23','YYYY-MM-DD HH24:MI:SS'),0,'LBR','70197668-a680-4165-ae5c-b57c51a7bec5')
;

-- 31/03/2016 10h37min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800993,0,'Classe de Consumo',800031,'LBR_CodCons',2,'N','N','N','N','N',0,'N',17,800020,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:25','YYYY-MM-DD HH24:MI:SS'),0,800256,'Y','N','LBR','Y','N','N','Y','1d3c2e9b-55a9-4699-a50a-f58045ef961d','Y',0,'N','N','N')
;

-- 31/03/2016 10h37min26s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_CodCons VARCHAR(2) DEFAULT NULL 
;

-- 31/03/2016 10h37min28s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800257,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR_TpLigacao','Tipo de Ligação','Tipo de Ligação','LBR','0b12035e-c5ca-440b-b499-ca270c5fb455')
;

-- 31/03/2016 10h37min29s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800021,'LBR_TpLigacao','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:28','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','fe3bb9f2-1fd0-40d3-9ce2-3c90775bdcd5')
;

-- 31/03/2016 10h37min31s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800106,'1 - Monofásico',800021,'1',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR','2c31a6f8-cd97-444e-b7c9-3b35cc55956b')
;

-- 31/03/2016 10h37min32s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800107,'2 - Bifásico',800021,'2',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR','7f2a1c9e-34f7-4c6c-bc7e-d75d917ac03a')
;

-- 31/03/2016 10h37min34s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800108,'3 - Trifásico',800021,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR','31dfc3bb-fd5a-42e1-8719-e7b69efcdaf0')
;

-- 31/03/2016 10h37min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800994,0,'Tipo de Ligação',800031,'LBR_TpLigacao',1,'N','N','N','N','N',0,'N',17,800021,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:34','YYYY-MM-DD HH24:MI:SS'),0,800257,'Y','N','LBR','Y','N','N','Y','bec27f28-a000-4208-adb5-59a58a285d5b','Y',0,'N','N','N')
;

-- 31/03/2016 10h37min35s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_TpLigacao CHAR(1) DEFAULT NULL 
;

-- 31/03/2016 10h37min37s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800258,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CodGrupoTensao','Grupo de Tensão','Grupo de Tensão','LBR','7549f16e-5257-4e8d-a5f6-8587a04be992')
;

-- 31/03/2016 10h37min38s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800022,'LBR_CodGrupoTensao','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:37','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','0ea9c5cd-3c59-490a-bf19-8be362f9d9b9')
;

-- 31/03/2016 10h37min40s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800109,'A1 - Alta Tensão (230kV ou mais)',800022,'01',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR','c4e38d1f-ccdb-4720-9dd9-a5fe858124df')
;

-- 31/03/2016 10h37min41s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800110,'A2 - Alta Tensão (88 a 138kV)',800022,'02',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR','07d3a17d-1b08-4430-a15f-470ffeebba2e')
;

-- 31/03/2016 10h37min43s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800111,'A3 - Alta Tensão (69kV)',800022,'03',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','6d100833-a29e-458a-89a7-582337182917')
;

-- 31/03/2016 10h37min45s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800112,'A3a - Alta Tensão (30kV a 44kV)',800022,'04',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR','db2480b2-9dec-4c52-949c-0ae1768474e4')
;

-- 31/03/2016 10h37min47s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800113,'A4 - Alta Tensão (2,3kV a 25kV)',800022,'05',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR','75090f4b-e5f8-49ca-9a24-1ecc43a00bb4')
;

-- 31/03/2016 10h37min48s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800114,'AS - Alta tensão subterrâneo',800022,'06',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:47','YYYY-MM-DD HH24:MI:SS'),0,'LBR','1c4adda9-b037-44e3-a75d-6ed22cd3e610')
;

-- 31/03/2016 10h37min50s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800115,'B1 - Residencial',800022,'07',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:48','YYYY-MM-DD HH24:MI:SS'),0,'LBR','042ee92a-fe49-4cad-9623-8b3ce61349de')
;

-- 31/03/2016 10h37min51s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800116,'B1 - Residencial baixa renda',800022,'08',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:50','YYYY-MM-DD HH24:MI:SS'),0,'LBR','e21a98ed-0f2d-4542-bb90-b4ca99d4a6a0')
;

-- 31/03/2016 10h37min53s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800117,'B2 - Rural',800022,'09',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:51','YYYY-MM-DD HH24:MI:SS'),0,'LBR','53820fb8-9ab5-43a4-9c9c-aca3fe64a917')
;

-- 31/03/2016 10h37min54s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800118,'B2 - Cooperativa de eletrificação rural',800022,'10',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:53','YYYY-MM-DD HH24:MI:SS'),0,'LBR','2fcfcb75-c545-4851-a216-aa7a5987dced')
;

-- 31/03/2016 10h37min55s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800119,'B2 - Serviço público de irrigação',800022,'11',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR','3aeb11da-49df-49c8-a161-fcecc6528a17')
;

-- 31/03/2016 10h37min56s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800120,'B3 - Demais classes',800022,'12',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR','349274ce-45c5-436c-ba25-5dc5aeadff1e')
;

-- 31/03/2016 10h37min59s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800121,'B4a - Iluminação pública - Rede de distribuição',800022,'13',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:56','YYYY-MM-DD HH24:MI:SS'),0,'LBR','4dc4d629-9217-4a8f-8f1f-91ab7091ad33')
;

-- 31/03/2016 10h38min0s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800122,'B4b - Iluminação pública - bulbo de lâmpada',800022,'14',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:37:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:37:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','f917c346-715d-42ea-b7a7-4d8eac6b4039')
;

-- 31/03/2016 10h38min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800995,0,'Grupo de Tensão',800031,'LBR_CodGrupoTensao',2,'N','N','N','N','N',0,'N',17,800022,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:00','YYYY-MM-DD HH24:MI:SS'),0,800258,'Y','N','LBR','Y','N','N','Y','f8b5d5a9-4ec9-4882-97f5-d35b9e471ca6','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min2s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_CodGrupoTensao VARCHAR(2) DEFAULT NULL 
;

-- 31/03/2016 10h38min3s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800259,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR_TpCTe','Tipo de Conhecimento Eletrônico','Tipo CT-e','LBR','ce7ca962-d59c-4e9d-aac1-4146b8befc2b')
;

-- 31/03/2016 10h38min4s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800023,'LBR_TpCTe','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:03','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','8c39dfad-8055-434a-8f4f-c2adfb1b5734')
;

-- 31/03/2016 10h38min5s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800123,'0 - CT-e Normal',800023,'0',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR','31aceec8-f622-4056-9d5b-9b6a5f916ee3')
;

-- 31/03/2016 10h38min7s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800124,'1 - CT-e de complemento de valores',800023,'1',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR','88b8deaa-eb2c-4da0-a8e7-7ff7c2036eff')
;

-- 31/03/2016 10h38min9s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800125,'2 - CT-e de anulação',800023,'2',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR','71c0c056-bb71-412c-b34e-d33e1e2f9bb7')
;

-- 31/03/2016 10h38min11s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800126,'3 - CT-e substituto',800023,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR','7d5b8650-103e-407e-ba00-18b733532b22')
;

-- 31/03/2016 10h38min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800996,0,'Tipo de Conhecimento Eletrônico',800031,'LBR_TpCTe',1,'N','N','N','N','N',0,'N',17,800023,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:11','YYYY-MM-DD HH24:MI:SS'),0,800259,'Y','N','LBR','Y','N','N','Y','61a570bc-c73c-42f2-a5b5-914791249a3b','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min12s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_TpCTe CHAR(1) DEFAULT NULL 
;

-- 31/03/2016 10h38min13s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800260,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ChvCTe','Chave CT-e','Chave CT-e','LBR','e07604f7-dcca-4aea-9504-05490799c5fd')
;

-- 31/03/2016 10h38min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800997,0,'Chave CT-e',800031,'LBR_ChvCTe',44,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:13','YYYY-MM-DD HH24:MI:SS'),0,800260,'Y','N','LBR','Y','N','N','Y','3ef6cac1-b5fd-4559-a632-a83c3ae65139','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min14s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_ChvCTe VARCHAR(44) DEFAULT NULL 
;

-- 31/03/2016 10h38min16s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800261,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:14','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ChvCTeRef','Chave CT-e referenciada','Chave CT-e referenciada','LBR','f4fced80-73a2-4b1c-8beb-5393e15a2579')
;

-- 31/03/2016 10h38min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800998,0,'Chave CT-e referenciada',800031,'LBR_ChvCTeRef',44,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:16','YYYY-MM-DD HH24:MI:SS'),0,800261,'Y','N','LBR','Y','N','N','Y','d7504b91-c7ca-43db-b905-99a6d80572af','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min17s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_ChvCTeRef VARCHAR(44) DEFAULT NULL 
;

-- 31/03/2016 10h38min19s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800262,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IndFrt','Tipo de Frete','Tipo de Frete','LBR','125bb410-5eee-400b-91e8-c816916c4de8')
;

-- 31/03/2016 10h38min20s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800024,'LBR_IndFrt','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:19','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','f16a3b4d-fb6c-473e-bee3-ad212b9b7e0f')
;

-- 31/03/2016 10h38min21s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800127,'0 - por conta do emitente',800024,'0',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:20','YYYY-MM-DD HH24:MI:SS'),0,'LBR','58e7d63f-711a-4f13-8759-4b16c9d5e5c0')
;

-- 31/03/2016 10h38min22s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800128,'1 - por conta do destinatário/remetente',800024,'1',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','a0bffac1-5cb4-4ee7-a040-f74c46c9c56e')
;

-- 31/03/2016 10h38min23s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800129,'2 - por conta de terceiros',800024,'2',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR','10d0d183-88e5-4355-b2d4-26e51cb8e1c5')
;

-- 31/03/2016 10h38min24s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800130,'9 - sem cobrança de frete',800024,'9',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:23','YYYY-MM-DD HH24:MI:SS'),0,'LBR','6f45dfb8-c7b9-4680-9ad0-34e8e0b4b7a6')
;

-- 31/03/2016 10h38min25s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800999,0,'Tipo de Frete',800031,'LBR_IndFrt',1,'N','N','N','N','N',0,'N',17,800024,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:24','YYYY-MM-DD HH24:MI:SS'),0,800262,'Y','N','LBR','Y','N','N','Y','26919a14-ef40-40ff-9996-fd2e72d6d285','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min25s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_IndFrt CHAR(1) DEFAULT NULL 
;

-- 31/03/2016 10h38min27s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800263,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR_TpAssinante','Tipo de Assinante','Tipo de Assinante','LBR','4a6ec3d6-1407-4e16-8287-7c213bfe97e1')
;

-- 31/03/2016 10h38min28s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800025,'LBR_TpAssinante','L',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','d54167b6-a4c1-47c1-8c8e-8f8e9406ebf1')
;

-- 31/03/2016 10h38min29s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800131,'1 - Comercial/Industrial',800025,'1',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:28','YYYY-MM-DD HH24:MI:SS'),0,'LBR','80d302c6-03b2-4bf4-a681-f9c5ebc1d587')
;

-- 31/03/2016 10h38min30s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800132,'2 - Poder Público',800025,'2',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR','5dc2a753-9ff1-4b39-90c2-7b6d16fa0341')
;

-- 31/03/2016 10h38min32s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800133,'3 - Residencial/Pessoa Física',800025,'3',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR','4cc6637f-3372-4bb6-ab95-5e48ad8eb5d3')
;

-- 31/03/2016 10h38min33s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800134,'4 - Público',800025,'4',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR','5eea3194-04c0-4563-b218-3b9d6e81b4c0')
;

-- 31/03/2016 10h38min35s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800135,'5 - Semi-Público',800025,'5',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:33','YYYY-MM-DD HH24:MI:SS'),0,'LBR','c07807da-3e90-43d3-b07f-c218acbdc5af')
;

-- 31/03/2016 10h38min36s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800136,'6 - Outros',800025,'6',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:35','YYYY-MM-DD HH24:MI:SS'),0,'LBR','25ea4c9c-9d72-4de7-9979-d17d21f73f60')
;

-- 31/03/2016 10h38min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801000,0,'Tipo de Assinante',800031,'LBR_TpAssinante',1,'N','N','N','N','N',0,'N',17,800025,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:36','YYYY-MM-DD HH24:MI:SS'),0,800263,'Y','N','LBR','Y','N','N','Y','0039a535-7e76-4229-83bf-f3df1d3d6f3b','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min38s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_TpAssinante CHAR(1) DEFAULT NULL 
;

-- 31/03/2016 10h38min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType) VALUES (801001,0,'Invoice','Invoice Identifier','The Invoice Document.',800031,'C_Invoice_ID',22,'N','Y','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:38','YYYY-MM-DD HH24:MI:SS'),0,1008,'N','N','LBR','Y','N','N','Y','f0b33eb8-e331-453d-9b32-66c94ecfd221','Y',0,'N','N','CInvoice_LBRFiscalDoc','N')
;

-- 31/03/2016 10h38min39s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN C_Invoice_ID NUMERIC(10) NOT NULL
;

-- 31/03/2016 10h38min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800264,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR_VlTerc','Valor de Terceiros','Valor de Terceiros','LBR','266cc417-001e-4e9a-aab3-aaa7f08ded17')
;

-- 31/03/2016 10h38min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801002,0,'Valor de Terceiros',800031,'LBR_VlTerc',14,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:41','YYYY-MM-DD HH24:MI:SS'),0,800264,'Y','N','LBR','Y','N','N','Y','75742b50-a61e-41c1-b401-6675f065f6ac','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min42s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_VlTerc NUMERIC DEFAULT NULL 
;

-- 31/03/2016 10h38min43s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800265,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFNo','Fiscal Document Number','Fiscal Document Number','LBR','a5330902-88d1-4778-b292-5fdb0c9fa69c')
;

-- 31/03/2016 10h38min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801003,0,'Fiscal Document Number',800031,'LBR_NFNo',9,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:43','YYYY-MM-DD HH24:MI:SS'),0,800265,'Y','N','LBR','Y','N','N','Y','56c61aea-70ba-4dae-8904-926e8ea652f0','Y',0,'N','N','N')
;

-- 31/03/2016 10h38min44s BRT
ALTER TABLE LBR_FiscalDoc ADD COLUMN LBR_NFNo VARCHAR(9) NOT NULL
;

-- 31/03/2016 10h38min53s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800026,'Detalhes Fiscais',183,100,'Y',800031,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',1,'N','LBR','Y','N','e1df8d4d-6a23-4d7c-96dd-8564819e2946','B')
;

-- 31/03/2016 10h38min54s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800466,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800026,800982,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:53','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','40f6281f-aea1-4300-8996-ad1178253cb6','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h38min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800467,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800026,800983,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','97524dff-7ffb-44bf-a628-b2ed983dd5c4','Y','N',0,4,2,1,'N','N','N')
;

-- 31/03/2016 10h38min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800468,'Invoice','Invoice Identifier','The Invoice Document.',800026,801001,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4ec3bbce-1045-44bd-b53f-621151a5d168','N',0,1,2,1,'N','N','N')
;

-- 31/03/2016 10h38min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800469,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800026,800986,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:56','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','65652772-eb2e-4a30-adef-e360d35b980c','N',0,2,2,1,'N','N','N')
;

-- 31/03/2016 10h38min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800470,'NF Model',800026,800990,'Y',2,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:57','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','9840af85-4ec0-4b3c-9453-5f5ee9210d82','Y',10,1,2,1,'N','N','N')
;

-- 31/03/2016 10h39min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800471,'NF Serie',800026,800991,'Y',4,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:38:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:38:59','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','592254f5-ca64-4d4c-9c19-54b24c98c4af','Y',20,1,2,1,'N','@LBR_NFeModel@=57','N','N')
;

-- 31/03/2016 10h39min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800472,'Sub série',800026,800992,'Y',3,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','30330a2b-3196-4bb5-806c-e902c0753ac5','Y',30,4,2,1,'N','N','N')
;

-- 31/03/2016 10h39min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800473,'Fiscal Document Number',800026,801003,'Y',9,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4c89e307-4355-4df8-a1a3-ad1fde5a4436','Y',40,1,2,1,'N','N','N')
;

-- 31/03/2016 10h39min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800474,'Valor de Terceiros',800026,801002,'Y','@LBR_NFeModel@=28 | @LBR_NFeModel@=29 | @LBR_NFeModel@=06 | @LBR_NFeModel@=22 | @LBR_NFeModel@=21',14,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','bf9dac25-75f8-460e-813a-e584149231f8','Y',50,1,2,1,'N','N','N')
;

-- 31/03/2016 10h39min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800475,'Classe de Consumo',800026,800993,'Y','@LBR_NFeModel@=06',2,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0851ab86-73d7-4b84-8411-0421885f33df','Y',60,1,2,1,'N','@LBR_NFeModel@=06','N','N')
;

-- 31/03/2016 10h39min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800476,'Tipo de Ligação',800026,800994,'Y','@LBR_NFeModel@=06',1,110,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','b301f4b0-e167-4744-9cbc-4d6b74dd77b8','Y',70,4,2,1,'N','@LBR_NFeModel@=06','N','N')
;

-- 31/03/2016 10h39min8s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800477,'Grupo de Tensão',800026,800995,'Y','@LBR_NFeModel@=06',2,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4957eae4-8cff-4949-b61d-dc5edad14a71','Y',80,1,2,1,'N','@LBR_NFeModel@=06','N','N')
;

-- 31/03/2016 10h39min9s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800478,'Tipo de Conhecimento Eletrônico',800026,800996,'Y','@LBR_NFeModel@=57',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:08','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3d1a12f8-b940-417a-bb5f-f04c8da361ea','Y',90,1,2,1,'N','@LBR_NFeModel@=57','N','N')
;

-- 31/03/2016 10h39min10s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800479,'Chave CT-e',800026,800997,'Y','@LBR_NFeModel@=57',44,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:09','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5ef21bf5-cbab-4bfb-8cdd-8097ac98e07a','Y',100,1,2,1,'N','@LBR_NFeModel@=57','N','N')
;

-- 31/03/2016 10h39min11s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800480,'Chave CT-e referenciada',800026,800998,'Y','@LBR_TpCTe@=1 | @LBR_TpCTe@=2',44,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:10','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','25b5ed67-e099-4949-ba23-27aa1ca35f80','Y',110,1,2,1,'N','@LBR_TpCTe@=1 | @LBR_TpCTe@=2','N','N')
;

-- 31/03/2016 10h39min12s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800481,'Tipo de Frete',800026,800999,'Y','@LBR_NFeModel=07 | @LBR_NFeModel=08 | @LBR_NFeModel=09 | @LBR_NFeModel=10 | @LBR_NFeModel=11 | @LBR_NFeModel@=8B | @LBR_NFeModel@=26 | @LBR_NFeModel@=27 | @LBR_NFeModel@=57',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:11','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','ffda3c14-87a6-46ae-bc2f-7c92dcc6114f','Y',120,1,2,1,'N','@LBR_NFeModel=07 | @LBR_NFeModel=08 | @LBR_NFeModel=09 | @LBR_NFeModel=10 | @LBR_NFeModel=11 | @LBR_NFeModel@=8B | @LBR_NFeModel@=26 | @LBR_NFeModel@=27 | @LBR_NFeModel@=57','N','N')
;

-- 31/03/2016 10h39min14s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,MandatoryLogic,IsDefaultFocus,IsAdvancedField) VALUES (800482,'Tipo de Assinante',800026,801000,'Y','@LBR_NFeModel@=21 | @LBR_NFeModel@=22',1,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:12','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','7c7f1139-090f-4948-84f7-cc8a9957a43a','Y',130,1,2,1,'N','@LBR_NFeModel@=21 | @LBR_NFeModel@=22','N','N')
;

-- 31/03/2016 10h39min15s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800483,'LBR_FiscalDoc_UU',800026,800987,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:14','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','64b15c9e-e6b8-4fe4-b24c-c895fa230a21','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h39min16s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800484,'Fiscal Details',800026,800981,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:15','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','7ae1d5ed-a6c9-4508-9db2-4b44853a82fd','N',1,2,1,'N','N','N')
;

-- 31/03/2016 10h39min23s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800024,'ICMS and IPI Tax Assessment','W',800009,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','LBR','Y','c793342b-1ebc-4692-8bc4-b3217125f8b3')
;

-- 31/03/2016 10h39min23s BRT
INSERT INTO AD_TREENODEMM(AD_Client_ID, AD_Org_ID, CreatedBy, UpdatedBy, Parent_ID, SeqNo, AD_Tree_ID, Node_ID)VALUES(0, 0, 0, 0, 800023,1, 10, 800024)
;

-- 31/03/2016 10h39min24s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800025,'SPED Options','SPED Options','W',800010,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','LBR','Y','f06ca819-f7d6-43a9-bedf-7ec738876839')
;

-- 31/03/2016 10h39min24s BRT
INSERT INTO AD_TREENODEMM(AD_Client_ID, AD_Org_ID, CreatedBy, UpdatedBy, Parent_ID, SeqNo, AD_Tree_ID, Node_ID)VALUES(0, 0, 0, 0, 800023,0, 10, 800025)
;

-- 31/03/2016 10h39min25s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800026,'SPED-EFD ICMS/IPI','W',800011,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:39:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:39:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','LBR','Y','af22bbf0-766a-4c34-834c-9d2d0bdd5ef1')
;

-- 31/03/2016 10h39min25s BRT
INSERT INTO AD_TREENODEMM(AD_Client_ID, AD_Org_ID, CreatedBy, UpdatedBy, Parent_ID, SeqNo, AD_Tree_ID, Node_ID)VALUES(0, 0, 0, 0, 800023,2, 10, 800026)
;

-- 31/03/2016 10h39min25s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxAssessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800799
;

-- 31/03/2016 10h39min25s BRT
ALTER TABLE LBR_TaxAssessment ADD CONSTRAINT ADClient_LBRTaxAssessment FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min25s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxAssessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800800
;

-- 31/03/2016 10h39min25s BRT
ALTER TABLE LBR_TaxAssessment ADD CONSTRAINT ADOrg_LBRTaxAssessment FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min26s BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRTaxAssessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800801
;

-- 31/03/2016 10h39min26s BRT
ALTER TABLE LBR_TaxAssessment ADD CONSTRAINT CPeriod_LBRTaxAssessment FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min26s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxAssessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800803
;

-- 31/03/2016 10h39min26s BRT
ALTER TABLE LBR_TaxAssessment ADD CONSTRAINT CreatedBy_LBRTaxAssessment FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min26s BRT
UPDATE AD_Column SET FKConstraintName='LBRTaxName_LBRTaxAssessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800807
;

-- 31/03/2016 10h39min26s BRT
ALTER TABLE LBR_TaxAssessment ADD CONSTRAINT LBRTaxName_LBRTaxAssessment FOREIGN KEY (LBR_TaxName_ID) REFERENCES lbr_taxname(lbr_taxname_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min26s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxAssessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800814
;

-- 31/03/2016 10h39min26s BRT
ALTER TABLE LBR_TaxAssessment ADD CONSTRAINT UpdatedBy_LBRTaxAssessment FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min26s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxAssessmentLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800824
;

-- 31/03/2016 10h39min26s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD CONSTRAINT ADClient_LBRTaxAssessmentLine FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min26s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxAssessmentLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800825
;

-- 31/03/2016 10h39min26s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD CONSTRAINT ADOrg_LBRTaxAssessmentLine FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxAssessmentLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800828
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD CONSTRAINT CreatedBy_LBRTaxAssessmentLine FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
UPDATE AD_Column SET FKConstraintName='LBRTaxAssessment_LBRTaxAssessm', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800831
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD CONSTRAINT LBRTaxAssessment_LBRTaxAssessm FOREIGN KEY (LBR_TaxAssessment_ID) REFERENCES lbr_taxassessment(lbr_taxassessment_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxAssessmentLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800834
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD CONSTRAINT UpdatedBy_LBRTaxAssessmentLine FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_SPEDOptions ADD CONSTRAINT ADClient_LBRSPEDOptions FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_SPEDOptions ADD CONSTRAINT ADOrg_LBRSPEDOptions FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_SPEDOptions ADD CONSTRAINT CreatedBy_LBRSPEDOptions FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_SPEDOptions ADD CONSTRAINT UpdatedBy_LBRSPEDOptions FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min27s BRT
ALTER TABLE LBR_SPEDOptions ADD CONSTRAINT LBRBPAccountant_LBRSPEDOptions FOREIGN KEY (LBR_BP_Accountant_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min28s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRSPED', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800851
;

-- 31/03/2016 10h39min28s BRT
ALTER TABLE LBR_SPED ADD CONSTRAINT ADClient_LBRSPED FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min28s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRSPED', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800852
;

-- 31/03/2016 10h39min28s BRT
ALTER TABLE LBR_SPED ADD CONSTRAINT ADOrg_LBRSPED FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min28s BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPED', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800853
;

-- 31/03/2016 10h39min28s BRT
ALTER TABLE LBR_SPED ADD CONSTRAINT CPeriod_LBRSPED FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min28s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRSPED', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800855
;

-- 31/03/2016 10h39min28s BRT
ALTER TABLE LBR_SPED ADD CONSTRAINT CreatedBy_LBRSPED FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min28s BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPED', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800856
;

-- 31/03/2016 10h39min28s BRT
ALTER TABLE LBR_SPED ADD CONSTRAINT CYear_LBRSPED FOREIGN KEY (C_Year_ID) REFERENCES c_year(c_year_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min28s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRSPED', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800859
;

-- 31/03/2016 10h39min28s BRT
ALTER TABLE LBR_SPED ADD CONSTRAINT UpdatedBy_LBRSPED FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min29s BRT
ALTER TABLE LBR_FiscalDoc ADD CONSTRAINT ADClient_LBRFiscalDoc FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min29s BRT
ALTER TABLE LBR_FiscalDoc ADD CONSTRAINT ADOrg_LBRFiscalDoc FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min29s BRT
ALTER TABLE LBR_FiscalDoc ADD CONSTRAINT CreatedBy_LBRFiscalDoc FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min29s BRT
ALTER TABLE LBR_FiscalDoc ADD CONSTRAINT UpdatedBy_LBRFiscalDoc FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h39min29s BRT
ALTER TABLE LBR_FiscalDoc ADD CONSTRAINT CInvoice_LBRFiscalDoc FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31/03/2016 10h45min43s BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800799
;

-- 31/03/2016 10h45min43s BRT
INSERT INTO t_alter_column values('lbr_taxassessment','AD_Client_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min43s BRT
UPDATE AD_Column SET ColumnName='AD_Org_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800800
;

-- 31/03/2016 10h45min43s BRT
INSERT INTO t_alter_column values('lbr_taxassessment','AD_Org_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min43s BRT
UPDATE AD_Column SET ColumnName='C_Period_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800801
;

-- 31/03/2016 10h45min43s BRT
INSERT INTO t_alter_column values('lbr_taxassessment','C_Period_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min43s BRT
UPDATE AD_Column SET ColumnName='CreatedBy', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800803
;

-- 31/03/2016 10h45min44s BRT
INSERT INTO t_alter_column values('lbr_taxassessment','CreatedBy','NUMERIC(10)',null,'NULL')
;

-- 31/03/2016 10h45min44s BRT
UPDATE AD_Column SET ColumnName='LBR_TaxName_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800807
;

-- 31/03/2016 10h45min44s BRT
INSERT INTO t_alter_column values('lbr_taxassessment','LBR_TaxName_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min44s BRT
UPDATE AD_Process SET Classname='org.idempierelbr.sped.efd.process.ProcTaxAssessment',Updated=TO_TIMESTAMP('2016-03-31 10:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800013
;

-- 31/03/2016 10h45min44s BRT
UPDATE AD_Column SET ColumnName='Processing', IsSyncDatabase='Y', IsToolbarButton='N',Updated=TO_TIMESTAMP('2016-03-31 10:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800809
;

-- 31/03/2016 10h45min44s BRT
UPDATE AD_Column SET ColumnName='UpdatedBy', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800814
;

-- 31/03/2016 10h45min44s BRT
INSERT INTO t_alter_column values('lbr_taxassessment','UpdatedBy','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min47s BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800824
;

-- 31/03/2016 10h45min47s BRT
INSERT INTO t_alter_column values('lbr_taxassessmentline','AD_Client_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min47s BRT
UPDATE AD_Column SET ColumnName='AD_Org_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800825
;

-- 31/03/2016 10h45min47s BRT
INSERT INTO t_alter_column values('lbr_taxassessmentline','AD_Org_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min47s BRT
UPDATE AD_Column SET ColumnName='CreatedBy', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800828
;

-- 31/03/2016 10h45min47s BRT
INSERT INTO t_alter_column values('lbr_taxassessmentline','CreatedBy','NUMERIC(10)',null,'NULL')
;

-- 31/03/2016 10h45min47s BRT
UPDATE AD_Column SET ColumnName='LBR_TaxAssessment_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800831
;

-- 31/03/2016 10h45min47s BRT
INSERT INTO t_alter_column values('lbr_taxassessmentline','LBR_TaxAssessment_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min48s BRT
UPDATE AD_Column SET ColumnName='UpdatedBy', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800834
;

-- 31/03/2016 10h45min48s BRT
INSERT INTO t_alter_column values('lbr_taxassessmentline','UpdatedBy','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min50s BRT
UPDATE AD_Menu SET Name='Geração SPED-EFD',Updated=TO_TIMESTAMP('2016-03-31 10:45:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=800026
;

-- 31/03/2016 10h45min50s BRT
UPDATE AD_TREENODEMM SET Parent_ID = 800023 , SeqNo = 2 WHERE AD_Tree_ID = 10 AND Node_ID = 800026
;

-- 31/03/2016 10h45min51s BRT
UPDATE AD_Window SET Name='Geração SPED-EFD',Updated=TO_TIMESTAMP('2016-03-31 10:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=800011
;

-- 31/03/2016 10h45min51s BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800851
;

-- 31/03/2016 10h45min51s BRT
INSERT INTO t_alter_column values('lbr_sped','AD_Client_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min51s BRT
UPDATE AD_Column SET ColumnName='AD_Org_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800852
;

-- 31/03/2016 10h45min51s BRT
INSERT INTO t_alter_column values('lbr_sped','AD_Org_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min51s BRT
UPDATE AD_Column SET ColumnName='C_Period_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800853
;

-- 31/03/2016 10h45min51s BRT
INSERT INTO t_alter_column values('lbr_sped','C_Period_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min51s BRT
UPDATE AD_Column SET ColumnName='CreatedBy', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800855
;

-- 31/03/2016 10h45min51s BRT
INSERT INTO t_alter_column values('lbr_sped','CreatedBy','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min52s BRT
UPDATE AD_Column SET ColumnName='C_Year_ID', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800856
;

-- 31/03/2016 10h45min52s BRT
INSERT INTO t_alter_column values('lbr_sped','C_Year_ID','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min52s BRT
UPDATE AD_Column SET ColumnName='UpdatedBy', IsSyncDatabase='Y', IsToolbarButton='N', FKConstraintName=NULL,Updated=TO_TIMESTAMP('2016-03-31 10:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800859
;

-- 31/03/2016 10h45min52s BRT
INSERT INTO t_alter_column values('lbr_sped','UpdatedBy','NUMERIC(10)',null,null)
;

-- 31/03/2016 10h45min52s BRT
UPDATE AD_Process SET Description='Brazilian process to create digital document  of fiscal bookkeeping of icms/ipi tax', Classname='org.idempierelbr.sped.efd.process.ProcGenerateEFDICMSIPI',Updated=TO_TIMESTAMP('2016-03-31 10:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800014
;

-- 31/03/2016 10h45min52s BRT
UPDATE AD_Column SET ColumnName='LBR_ProcessSPED', DefaultValue='N', IsSyncDatabase='Y', IsToolbarButton='Y',Updated=TO_TIMESTAMP('2016-03-31 10:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800860
;

-- 31/03/2016 10h45min52s BRT
INSERT INTO t_alter_column values('lbr_sped','LBR_ProcessSPED','CHAR(1)',null,'N')
;

-- 31/03/2016 10h45min54s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800266,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:45:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:45:53','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcessSPEDContrib','ProcessSPEDContrib','ProcessSPEDContrib','LBR','5820fbd5-c9fa-4d23-8ae9-de623db54cf2')
;

-- 31/03/2016 10h45min56s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800015,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:45:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:45:54','YYYY-MM-DD HH24:MI:SS'),0,'Process SPED EFD PISCOFINS','Brazilian process to create digital document  of fiscal bookkeeping of pis/cofins tax','N','LBR_ProcGenerateEFDPISCOFINS','N','org.idempierelbr.sped.efd.process.ProcGenerateEFDPISCOFINS','3','LBR',0,0,'N','N','Y','N','74e98e33-8351-413a-8e44-581839f89a4b')
;

-- 31/03/2016 10h45min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801004,0,'ProcessSPEDContrib',800029,'LBR_ProcessSPEDContrib','N',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2016-03-31 10:45:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:45:56','YYYY-MM-DD HH24:MI:SS'),0,800266,'Y',800015,'N','LBR','Y','N','N','Y','9a9c1870-8f50-4beb-83f0-dbd6c0a465e9','Y',0,'Y','N','N')
;

-- 31/03/2016 10h45min58s BRT
ALTER TABLE LBR_SPED ADD COLUMN LBR_ProcessSPEDContrib CHAR(1) DEFAULT 'N' 
;

-- 31/03/2016 10h45min58s BRT
UPDATE AD_Tab SET Name='Geração SPED-EFD', Description='Janela de Geração dos arquivos de escrituração fiscal digital',Updated=TO_TIMESTAMP('2016-03-31 10:45:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800025
;

-- 31/03/2016 10h45min59s BRT
UPDATE AD_Field SET Name='Process SPED EFD ICMSIPI', Description='Brazilian process to create digital document  of fiscal bookkeeping of icms/ipi tax',Updated=TO_TIMESTAMP('2016-03-31 10:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800463
;

-- 31/03/2016 10h46min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800485,'ProcessSPEDContrib',800025,801004,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2016-03-31 10:45:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2016-03-31 10:45:59','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','59023c29-4369-48f0-aaaa-8d3b85ccd338','Y',60,2,2,1,'N','N','N')
;

-- 31/03/2016 10h50min0s BRT
UPDATE AD_Column SET FKConstraintName='adclient_lbrtaxassessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800799
;

-- 31/03/2016 10h50min0s BRT
UPDATE AD_Column SET FKConstraintName='adorg_lbrtaxassessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800800
;

-- 31/03/2016 10h50min0s BRT
UPDATE AD_Column SET FKConstraintName='cperiod_lbrtaxassessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800801
;

-- 31/03/2016 10h50min0s BRT
UPDATE AD_Column SET FKConstraintName='createdby_lbrtaxassessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800803
;

-- 31/03/2016 10h50min0s BRT
UPDATE AD_Column SET FKConstraintName='lbrtaxname_lbrtaxassessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800807
;

-- 31/03/2016 10h50min1s BRT
UPDATE AD_Column SET FKConstraintName='updatedby_lbrtaxassessment', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800814
;

-- 31/03/2016 10h50min1s BRT
UPDATE AD_Column SET FKConstraintName='adclient_lbrtaxassessmentline', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800824
;

-- 31/03/2016 10h50min1s BRT
UPDATE AD_Column SET FKConstraintName='adorg_lbrtaxassessmentline', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800825
;

-- 31/03/2016 10h50min1s BRT
UPDATE AD_Column SET FKConstraintName='createdby_lbrtaxassessmentline', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800828
;

-- 31/03/2016 10h50min1s BRT
UPDATE AD_Column SET FKConstraintName='lbrtaxassessment_lbrtaxassessm', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800831
;

-- 31/03/2016 10h50min1s BRT
UPDATE AD_Column SET FKConstraintName='updatedby_lbrtaxassessmentline', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800834
;

-- 31/03/2016 10h50min2s BRT
UPDATE AD_Column SET FKConstraintName='adclient_lbrsped', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800851
;

-- 31/03/2016 10h50min2s BRT
UPDATE AD_Column SET FKConstraintName='adorg_lbrsped', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800852
;

-- 31/03/2016 10h50min2s BRT
UPDATE AD_Column SET FKConstraintName='cperiod_lbrsped', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800853
;

-- 31/03/2016 10h50min2s BRT
UPDATE AD_Column SET FKConstraintName='createdby_lbrsped', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800855
;

-- 31/03/2016 10h50min2s BRT
UPDATE AD_Column SET FKConstraintName='cyear_lbrsped', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800856
;

-- 31/03/2016 10h50min3s BRT
UPDATE AD_Column SET FKConstraintName='updatedby_lbrsped', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-31 10:50:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800859
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 31/03/2016 11h12min31s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 31/03/2016 11h12min36s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 31/03/2016 11h12min40s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

SELECT lbr_register_migration_script('201603311323-Sped.sql') FROM dual;
