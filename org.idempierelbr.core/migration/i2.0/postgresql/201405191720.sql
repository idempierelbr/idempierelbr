-- May 19, 2014 1:54:18 PM BRT
-- Implementing accounting for LBR_NotaFiscal
-- XML Generator
-- Country Codes
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000819,'N','N','N',0,'N',1,'N','N','N','Y','45c7bc36-ec1e-441c-b873-5119c1ef5934','Y','Processing','Process Now','N',TO_TIMESTAMP('2014-05-19 13:54:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-19 13:54:18','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N',524,28,1000033,0,'LBR')
;

-- May 19, 2014 1:54:24 PM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN Processing CHAR(1) DEFAULT NULL 
;

-- May 19, 2014 1:56:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000820,'Y','N','N',0,'N',1,'N','N','N','Y','8e1d09f9-3e93-4c35-8638-12d995482f8f','Y','Posted','Posting status','N','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Posted','Y',TO_TIMESTAMP('2014-05-19 13:56:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-19 13:56:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1308,28,234,1000033,0,'LBR')
;

-- May 19, 2014 1:56:34 PM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN Posted CHAR(1) DEFAULT 'N' NOT NULL
;

-- May 19, 2014 2:41:35 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000178,183,'2ee7a5e8-c40d-45fa-b674-e08aa9eca65e','NFB',TO_TIMESTAMP('2014-05-19 14:41:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 14:41:35','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Nota Fiscal Brasil')
;

-- May 19, 2014 2:50:01 PM BRT
INSERT INTO AD_Workflow (Cost,WaitingTime,WorkingTime,AccessLevel,Duration,DurationUnit,IsDefault,IsValid,PublishStatus,Version,QtyBatchSize,IsBetaFunctionality,WorkflowType,Value,Name,Description,AD_Workflow_UU,Author,DocumentNo,AD_Workflow_ID,UpdatedBy,Updated,Created,CreatedBy,IsActive,AD_Client_ID,EntityType,AD_Table_ID,AD_WF_Node_ID,AD_Org_ID) VALUES (0,0,0,'1',1,'D','N','Y','R',0,1,'N','P','Process_NotaFiscal','Process_NotaFiscal','(Standard Process NotaFiscal)','5ad2579d-39ac-4ba2-86a7-27bfedafb7d5','iDempiereLBR','10000000',1000000,0,TO_TIMESTAMP('2014-05-19 14:50:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-19 14:50:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,'LBR',1000033,183,0)
;

-- May 19, 2014 2:51:09 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,"limit",WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,"action",Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType) VALUES (1000000,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','D','(Standard Node)','(DocAuto)','(DocAuto)','1caf5bc0-feeb-4c5f-94b0-69ac088e6c15',0,1000000,TO_TIMESTAMP('2014-05-19 14:51:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 14:51:09','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','--',0,'LBR')
;

-- May 19, 2014 2:51:57 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,"limit",WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,"action",Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType) VALUES (1000001,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','D','(Standard Node)','(DocComplete)','(DocComplete)','fb3252d9-1dd0-453d-ae72-debc441d8172',0,1000000,TO_TIMESTAMP('2014-05-19 14:51:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 14:51:57','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','CO',0,'LBR')
;

-- May 19, 2014 2:52:39 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,"limit",WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,"action",Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType) VALUES (1000002,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','D','(Standard Node)','(DocPrepare)','(DocPrepare)','72fb25d8-9ad4-44b9-be96-7043640b58f8',0,1000000,TO_TIMESTAMP('2014-05-19 14:52:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 14:52:39','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','PR',0,'LBR')
;

-- May 19, 2014 2:53:17 PM BRT
INSERT INTO AD_WF_NodeNext (SeqNo,IsStdUserWorkflow,AD_WF_Node_ID,AD_WF_NodeNext_ID,AD_WF_Next_ID,Description,AD_WF_NodeNext_UU,UpdatedBy,CreatedBy,Updated,Created,IsActive,AD_Client_ID,EntityType,AD_Org_ID) VALUES (100,'N',1000002,1000000,1000001,'(Standard Transition)','a14b2974-d438-4fc0-9505-3a592da0fcad',0,0,TO_TIMESTAMP('2014-05-19 14:53:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-19 14:53:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,'LBR',0)
;

-- May 19, 2014 2:54:04 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,"limit",WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,"action",Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType) VALUES (1000003,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','Z','(Standard Node)','(Start)','(Start)','8c4481e3-602c-40a6-89ec-d60fd6ad4ba7',0,1000000,TO_TIMESTAMP('2014-05-19 14:54:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 14:54:04','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','CO',0,'LBR')
;

-- May 19, 2014 2:54:36 PM BRT
INSERT INTO AD_WF_NodeNext (SeqNo,IsStdUserWorkflow,AD_WF_Node_ID,AD_WF_NodeNext_ID,AD_WF_Next_ID,Description,AD_WF_NodeNext_UU,UpdatedBy,CreatedBy,Updated,Created,IsActive,AD_Client_ID,EntityType,AD_Org_ID) VALUES (10,'Y',1000003,1000001,1000002,'(Standard Approval)','a1d81cc1-a146-44ed-8c8a-a3a438632d31',0,0,TO_TIMESTAMP('2014-05-19 14:54:36','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-19 14:54:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,'LBR',0)
;

-- May 19, 2014 2:55:05 PM BRT
INSERT INTO AD_WF_NodeNext (SeqNo,IsStdUserWorkflow,AD_WF_Node_ID,AD_WF_NodeNext_ID,AD_WF_Next_ID,Description,AD_WF_NodeNext_UU,UpdatedBy,CreatedBy,Updated,Created,IsActive,AD_Client_ID,EntityType,AD_Org_ID) VALUES (100,'N',1000003,1000002,1000000,'(Standard Transition)','1f60096f-30e0-4368-a5e2-e6ea15e0feea',0,0,TO_TIMESTAMP('2014-05-19 14:55:05','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-19 14:55:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,'LBR',0)
;

-- May 19, 2014 2:55:31 PM BRT
UPDATE AD_Workflow SET IsValid='Y', AD_WF_Node_ID=1000003,Updated=TO_TIMESTAMP('2014-05-19 14:55:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Workflow_ID=1000000
;

-- May 19, 2014 2:56:51 PM BRT
INSERT INTO AD_Process (AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Name,AD_Workflow_ID,AD_Org_ID,Updated,UpdatedBy,Created,IsActive,CreatedBy,Value,AD_Client_ID) VALUES (1000000,'N','N','e6df0503-5f93-4a2c-abe6-0c425cc138e9','1','N','N',0,0,'Y','LBR','Process NotaFiscal',1000000,0,TO_TIMESTAMP('2014-05-19 14:56:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 14:56:51','YYYY-MM-DD HH24:MI:SS'),'Y',0,'LBR_NotaFiscal Process',0)
;

-- May 19, 2014 2:59:49 PM BRT
UPDATE AD_Column SET AD_Process_ID=1000000,Updated=TO_TIMESTAMP('2014-05-19 14:59:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000608
;

-- May 19, 2014 3:00:22 PM BRT
UPDATE AD_Column SET AD_Process_ID=1000000,Updated=TO_TIMESTAMP('2014-05-19 15:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000819
;

-- May 19, 2014 3:02:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',390,'Y',1001506,'N','LBR','Process Now','74468d6e-b121-4435-87e8-e733e2c20de0','N','Y',0,0,TO_TIMESTAMP('2014-05-19 15:02:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 15:02:14','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000819)
;

-- May 19, 2014 3:02:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',400,'Y',1001507,'N','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','LBR','Posting status','Posted','fa1f533d-a3d6-47db-9e57-aad118f20834','N','Y',0,0,TO_TIMESTAMP('2014-05-19 15:02:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 15:02:15','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000820)
;

-- May 19, 2014 3:06:03 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001506
;

-- May 19, 2014 3:06:03 PM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001507
;

-- May 19, 2014 3:07:36 PM BRT
UPDATE AD_Field SET DisplayLogic='@Processed@=Y & @#ShowAcct@=Y', XPosition=5,Updated=TO_TIMESTAMP('2014-05-19 15:07:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001507
;

-- May 19, 2014 3:25:09 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Description,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_DocType.DocBaseType=''NFB''',1000006,'LBR','C_DocType NotaFiscal','Document Type for NotaFiscal','S','c3326579-9cca-4199-b1e5-6af7edb98865',0,0,TO_TIMESTAMP('2014-05-19 15:25:09','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-19 15:25:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- May 19, 2014 3:25:32 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000006,Updated=TO_TIMESTAMP('2014-05-19 15:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000606
;

-- May 19, 2014 3:50:31 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000821,'N','N','N',0,'N',20,'N','N','N','Y','f9404dc0-dddb-445d-ad36-fe79207aefdb','Y','ProcessedOn','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Processed On','Y',TO_TIMESTAMP('2014-05-19 15:50:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-19 15:50:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',54128,22,1000033,0,'LBR')
;

-- May 19, 2014 3:50:35 PM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN ProcessedOn NUMERIC DEFAULT NULL 
;

-- May 19, 2014 3:51:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,20,'N','N',400,'Y',1001508,'N','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','LBR','The date+time (expressed in decimal format) when the document has been processed','Processed On','85f45841-c418-4670-8245-27834e5a9167','N','Y',0,0,TO_TIMESTAMP('2014-05-19 15:51:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-19 15:51:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000821)
;

-- May 19, 2014 3:51:17 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001508
;

-- May 19, 2014 4:15:09 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000822,'Y','N','N',0,'N',7,'N','N','N','Y','13fd06ed-d05b-41f5-8bec-521f141cea19','Y','DateAcct','Accounting Date','@#Date@','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date','Y',TO_TIMESTAMP('2014-05-19 16:15:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-19 16:15:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',263,15,1000033,0,'LBR')
;

-- May 19, 2014 4:15:12 PM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN DateAcct TIMESTAMP NOT NULL
;

-- May 21, 2014 9:53:22 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_IsDocIssuedByOrg',1000232,'Is Document Issued by Client/Org?','Is Doc. Issued by Client/Org?','a18bd44f-6ce4-4128-9acf-1ebc4a7a366c',TO_TIMESTAMP('2014-05-21 09:53:22','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-21 09:53:22','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 21, 2014 9:55:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000823,'Y','N','N',0,'N',1,'N','N','N','Y','ed98425f-3bc8-4b08-83e9-11ee50ca0ca7','Y','LBR_IsDocIssuedByOrg','Y','Is Document Issued by Client/Org?','Y',TO_TIMESTAMP('2014-05-21 09:55:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-21 09:55:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000232,20,217,0,'LBR')
;

-- May 21, 2014 9:55:09 AM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_IsDocIssuedByOrg CHAR(1) DEFAULT 'Y' CHECK (LBR_IsDocIssuedByOrg IN ('Y','N')) NOT NULL
;

-- May 21, 2014 10:07:08 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000050,'LBR_NFBModel','LBR','11269b30-a6d9-466d-9b56-c330e24fe9d1','N','L',0,0,TO_TIMESTAMP('2014-05-21 10:07:08','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-21 10:07:08','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 21, 2014 10:08:25 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000179,1000050,'7763ed9b-ec2c-4465-a6cf-2c0c6f1c6422','01',TO_TIMESTAMP('2014-05-21 10:08:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:08:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'01 - Nota Fiscal')
;

-- May 21, 2014 10:08:51 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000180,1000050,'8f4b11f2-66ec-41b8-bc29-8cd867360f9f','55',TO_TIMESTAMP('2014-05-21 10:08:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:08:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'55 - NF-e')
;

-- May 21, 2014 10:09:39 AM BRT
UPDATE AD_Ref_List SET Name='01 - Nota Fiscal',Updated=TO_TIMESTAMP('2014-05-21 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000167
;

-- May 21, 2014 10:10:31 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFBModel',1000233,'NFB (DocType) Model',NULL,'NFB (DocType) Model','43d1c513-21ab-4841-979d-0df97ad04311',TO_TIMESTAMP('2014-05-21 10:10:31','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-21 10:10:31','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 21, 2014 10:11:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000824,'N','N','N',0,'N',2,'N','N','N','Y','9233821c-b3e6-475e-8d2a-bdd43b193b11','Y','LBR_NFBModel','NFB (DocType) Model','Y',TO_TIMESTAMP('2014-05-21 10:11:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-21 10:11:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000233,17,1000050,217,0,'LBR')
;

-- May 21, 2014 10:11:07 AM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_NFBModel VARCHAR(2) DEFAULT NULL 
;

-- May 21, 2014 10:12:25 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000825,'N','N','N',0,'N',3,'N','N','N','Y','25eb84ca-b009-405b-b2c9-68dae563f623','Y','LBR_NFeSerie','NF Serie','Y',TO_TIMESTAMP('2014-05-21 10:12:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-21 10:12:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000174,10,217,0,'LBR')
;

-- May 21, 2014 10:12:27 AM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_NFeSerie VARCHAR(3) DEFAULT NULL 
;

-- May 21, 2014 10:13:37 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeEnv',1000234,'Sefaz NF-e Environment','Sefaz NF-e Env.','66862c66-9bdb-497e-a406-14231e9a9145',TO_TIMESTAMP('2014-05-21 10:13:37','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-21 10:13:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 21, 2014 10:16:27 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000051,'LBR_NFeEnv','LBR','492806a9-e053-4007-a07e-c611ceeab964','N','L',0,0,TO_TIMESTAMP('2014-05-21 10:16:27','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-21 10:16:27','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 21, 2014 10:16:45 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000181,1000051,'466e85cd-9146-4114-8734-a2843cbec3ee','1',TO_TIMESTAMP('2014-05-21 10:16:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:16:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Production')
;

-- May 21, 2014 10:16:59 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000182,1000051,'2ebde250-dfaf-43f3-abec-9fbf8fab7061','2',TO_TIMESTAMP('2014-05-21 10:16:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:16:59','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Homologation')
;

-- May 21, 2014 10:17:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000826,'N','N','N',0,'N',1,'N','N','N','Y','b6434e5f-8f93-4e91-9d58-a7bd1771d587','Y','LBR_NFeEnv','Sefaz NF-e Environment','Y',TO_TIMESTAMP('2014-05-21 10:17:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-21 10:17:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000234,17,1000051,217,0,'LBR')
;

-- May 21, 2014 10:17:24 AM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_NFeEnv CHAR(1) DEFAULT NULL 
;

-- May 21, 2014 10:18:17 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DANFEFormat',1000235,'DANFE Format','DANFE Format','41fca469-2d50-41f3-9a4b-9e315c9afbf0',TO_TIMESTAMP('2014-05-21 10:18:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-21 10:18:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 21, 2014 10:18:34 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000052,'LBR_DANFEFormat','LBR','fc34f2c3-de58-47f8-a378-36e13f23ac65','N','L',0,0,TO_TIMESTAMP('2014-05-21 10:18:34','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-21 10:18:34','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 21, 2014 10:18:55 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000183,1000052,'76207b65-a708-4c95-9c7e-8a120911362e','1',TO_TIMESTAMP('2014-05-21 10:18:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:18:55','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Portrait')
;

-- May 21, 2014 10:19:09 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000184,1000052,'edd2440e-96ea-45f3-84f3-2ffddbefb056','2',TO_TIMESTAMP('2014-05-21 10:19:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:19:09','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Landscape')
;

-- May 21, 2014 10:19:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000827,'N','N','N',0,'N',1,'N','N','N','Y','a0318979-2430-4806-b0dd-d98fbfc4cb38','Y','LBR_DANFEFormat','DANFE Format','Y',TO_TIMESTAMP('2014-05-21 10:19:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-21 10:19:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000235,17,1000052,217,0,'LBR')
;

-- May 21, 2014 10:19:54 AM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_DANFEFormat CHAR(1) DEFAULT NULL 
;

-- May 21, 2014 10:20:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',167,1,'N','N',340,'Y',1001509,'N','For cross document search, the document can be indexed for faster search (Container, Document Type, Request Type)','D','Index the document for the internal search engine','Indexed','20124ac2-b3bb-4ca0-aa7b-a09e94b4ded3','N','Y',0,0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,15806)
;

-- May 21, 2014 10:20:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',167,36,'N','N',350,'Y',1001510,'N','D','C_DocType_UU','048b7727-5ed9-463a-9a97-a48e258a134e','N','N',0,0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,60647)
;

-- May 21, 2014 10:20:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',167,1,'N','N',360,'Y',1001511,'N','LBR','Is Document Issued by Client/Org?','10de6c60-120c-40d9-8433-caa35ccb5b83','N','Y',0,0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000823)
;

-- May 21, 2014 10:20:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',167,2,'N','N',370,'Y',1001512,'N','LBR','NFB (DocType) Model','d16fe352-5553-4eea-8a29-331217410474','N','Y',0,0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000824)
;

-- May 21, 2014 10:20:55 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',167,3,'N','N',380,'Y',1001513,'N','LBR','NF Serie','9816c2aa-f29d-4384-b47f-eb6a6fba935b','N','Y',0,0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:20:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000825)
;

-- May 21, 2014 10:20:55 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',167,1,'N','N',390,'Y',1001514,'N','LBR','Sefaz NF-e Environment','578abc40-152e-4fcb-aabb-9c7ca8c6679f','N','Y',0,0,TO_TIMESTAMP('2014-05-21 10:20:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:20:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000826)
;

-- May 21, 2014 10:20:55 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',167,1,'N','N',400,'Y',1001515,'N','LBR','DANFE Format','4b2f5d2b-dbae-424e-bba6-6b4fcfe775fc','N','Y',0,0,TO_TIMESTAMP('2014-05-21 10:20:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 10:20:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000827)
;

-- May 21, 2014 10:22:23 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001509
;

-- May 21, 2014 10:22:23 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001510
;

-- May 21, 2014 10:22:23 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001511
;

-- May 21, 2014 10:22:23 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001512
;

-- May 21, 2014 10:22:23 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001513
;

-- May 21, 2014 10:22:23 AM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001514
;

-- May 21, 2014 10:22:23 AM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001515
;

-- May 21, 2014 10:23:28 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-21 10:23:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001513
;

-- May 21, 2014 10:23:45 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-21 10:23:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001515
;

-- May 21, 2014 10:25:14 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''',Updated=TO_TIMESTAMP('2014-05-21 10:25:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001511
;

-- May 21, 2014 10:25:19 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''',Updated=TO_TIMESTAMP('2014-05-21 10:25:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001512
;

-- May 21, 2014 10:25:23 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''',Updated=TO_TIMESTAMP('2014-05-21 10:25:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001513
;

-- May 21, 2014 10:25:27 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''',Updated=TO_TIMESTAMP('2014-05-21 10:25:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001514
;

-- May 21, 2014 10:25:32 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''',Updated=TO_TIMESTAMP('2014-05-21 10:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001515
;

-- May 21, 2014 11:27:18 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CountryCode',1000236,'Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Country Code used for issue Nota Fiscal','NF Country Code','1f6242a1-8c5a-446f-9886-eec623f6b0b2',TO_TIMESTAMP('2014-05-21 11:27:18','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-21 11:27:18','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 21, 2014 11:28:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000828,'N','N','N',0,'N',5,'N','N','N','Y','ecc427f8-9ca8-47a5-be62-e4464b66122e','Y','LBR_CountryCode','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Country Code used for issue Nota Fiscal','Y',TO_TIMESTAMP('2014-05-21 11:28:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-21 11:28:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000236,14,170,0,'LBR')
;

-- May 21, 2014 11:28:02 AM BRT
ALTER TABLE C_Country ADD COLUMN LBR_CountryCode VARCHAR(5) DEFAULT NULL 
;

-- May 21, 2014 11:29:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',135,36,'N','N',290,'Y',1001516,'N','D','C_Country_UU','806967e3-1bdd-4df0-82ca-86c8983ed822','N','N',0,0,TO_TIMESTAMP('2014-05-21 11:29:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 11:29:29','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,60639)
;

-- May 21, 2014 11:29:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',135,5,'N','N',300,'Y',1001517,'N','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','LBR','Country Code used for issue Nota Fiscal','672cad78-8455-49fb-a355-6dc1e470fe8b','N','Y',0,0,TO_TIMESTAMP('2014-05-21 11:29:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 11:29:29','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,3,1000828)
;

-- May 21, 2014 11:30:15 AM BRT
UPDATE AD_Element SET Name='Country Code for Nota Fiscal',Updated=TO_TIMESTAMP('2014-05-21 11:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000236
;

-- May 21, 2014 11:30:15 AM BRT
UPDATE AD_Column SET ColumnName='LBR_CountryCode', Name='Country Code for Nota Fiscal', Description=NULL, Help='Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)' WHERE AD_Element_ID=1000236
;

-- May 21, 2014 11:30:15 AM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CountryCode', Name='Country Code for Nota Fiscal', Description=NULL, Help='Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)', AD_Element_ID=1000236 WHERE UPPER(ColumnName)='LBR_COUNTRYCODE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- May 21, 2014 11:30:15 AM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CountryCode', Name='Country Code for Nota Fiscal', Description=NULL, Help='Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)' WHERE AD_Element_ID=1000236 AND IsCentrallyMaintained='Y'
;

-- May 21, 2014 11:30:15 AM BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CountryCode', Name='Country Code for Nota Fiscal', Description=NULL, Help='Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)' WHERE AD_Element_ID=1000236 AND IsCentrallyMaintained='Y'
;

-- May 21, 2014 11:30:15 AM BRT
UPDATE AD_Field SET Name='Country Code for Nota Fiscal', Description=NULL, Help='Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000236) AND IsCentrallyMaintained='Y'
;

-- May 21, 2014 11:30:15 AM BRT
UPDATE AD_PrintFormatItem SET PrintName='NF Country Code', Name='Country Code for Nota Fiscal' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000236)
;

----------------------------------------------------------------------
--		ADempiereLBR.Org
--	Atualização do Codigo do Pais (Kenos, www.kenos.com.br)
--
-- 	ALTER TABLE C_Country ADD lbr_CountryCode VARCHAR;
----------------------------------------------------------------------
UPDATE C_Country SET lbr_CountryCode='01694' WHERE C_Country_ID=156;
UPDATE C_Country SET lbr_CountryCode='01732' WHERE C_Country_ID=157;
UPDATE C_Country SET lbr_CountryCode='01775' WHERE C_Country_ID=158;
UPDATE C_Country SET lbr_CountryCode='01961' WHERE C_Country_ID=161;
UPDATE C_Country SET lbr_CountryCode='01953' WHERE C_Country_ID=163;
UPDATE C_Country SET lbr_CountryCode='01996' WHERE C_Country_ID=164;
UPDATE C_Country SET lbr_CountryCode='02321' WHERE C_Country_ID=167;
UPDATE C_Country SET lbr_CountryCode='02356' WHERE C_Country_ID=169;
UPDATE C_Country SET lbr_CountryCode='02399' WHERE C_Country_ID=171;
UPDATE C_Country SET lbr_CountryCode='02402' WHERE C_Country_ID=172;
UPDATE C_Country SET lbr_CountryCode='06874' WHERE C_Country_ID=173;
UPDATE C_Country SET lbr_CountryCode='02437' WHERE C_Country_ID=175;
UPDATE C_Country SET lbr_CountryCode='02518' WHERE C_Country_ID=176;
UPDATE C_Country SET lbr_CountryCode='02534' WHERE C_Country_ID=177;
UPDATE C_Country SET lbr_CountryCode='02550' WHERE C_Country_ID=178;
UPDATE C_Country SET lbr_CountryCode='02593' WHERE C_Country_ID=179;
UPDATE C_Country SET lbr_CountryCode='02712' WHERE C_Country_ID=181;
UPDATE C_Country SET lbr_CountryCode='03255' WHERE C_Country_ID=183;
UPDATE C_Country SET lbr_CountryCode='04456' WHERE C_Country_ID=233;
UPDATE C_Country SET lbr_CountryCode='04472' WHERE C_Country_ID=234;
UPDATE C_Country SET lbr_CountryCode='04502' WHERE C_Country_ID=236;
UPDATE C_Country SET lbr_CountryCode='04553' WHERE C_Country_ID=238;
UPDATE C_Country SET lbr_CountryCode='04618' WHERE C_Country_ID=239;
UPDATE C_Country SET lbr_CountryCode='04642' WHERE C_Country_ID=240;
UPDATE C_Country SET lbr_CountryCode='04677' WHERE C_Country_ID=241;
UPDATE C_Country SET lbr_CountryCode='04766' WHERE C_Country_ID=242;
UPDATE C_Country SET lbr_CountryCode='04774' WHERE C_Country_ID=243;
UPDATE C_Country SET lbr_CountryCode='04880' WHERE C_Country_ID=244;
UPDATE C_Country SET lbr_CountryCode='04885' WHERE C_Country_ID=246;
UPDATE C_Country SET lbr_CountryCode='04936' WHERE C_Country_ID=247;
UPDATE C_Country SET lbr_CountryCode='04944' WHERE C_Country_ID=249;
UPDATE C_Country SET lbr_CountryCode='04995' WHERE C_Country_ID=248;
UPDATE C_Country SET lbr_CountryCode='04952' WHERE C_Country_ID=250;
UPDATE C_Country SET lbr_CountryCode='05800' WHERE C_Country_ID=274;
UPDATE C_Country SET lbr_CountryCode='05452' WHERE C_Country_ID=275;
UPDATE C_Country SET lbr_CountryCode='05860' WHERE C_Country_ID=276;
UPDATE C_Country SET lbr_CountryCode='05894' WHERE C_Country_ID=277;
UPDATE C_Country SET lbr_CountryCode='06033' WHERE C_Country_ID=280;
UPDATE C_Country SET lbr_CountryCode='02674' WHERE C_Country_ID=278;
UPDATE C_Country SET lbr_CountryCode='06114' WHERE C_Country_ID=282;
UPDATE C_Country SET lbr_CountryCode='08885' WHERE C_Country_ID=159;
UPDATE C_Country SET lbr_CountryCode='01937' WHERE C_Country_ID=162;
UPDATE C_Country SET lbr_CountryCode='07919' WHERE C_Country_ID=166;
UPDATE C_Country SET lbr_CountryCode='01635' WHERE C_Country_ID=165;
UPDATE C_Country SET lbr_CountryCode='07838' WHERE C_Country_ID=168;
UPDATE C_Country SET lbr_CountryCode='05991' WHERE C_Country_ID=184;
UPDATE C_Country SET lbr_CountryCode='08702' WHERE C_Country_ID=180;
UPDATE C_Country SET lbr_CountryCode='04855' WHERE C_Country_ID=245;
UPDATE C_Country SET lbr_CountryCode='06076' WHERE C_Country_ID=281;
UPDATE C_Country SET lbr_CountryCode='02755' WHERE C_Country_ID=102;
UPDATE C_Country SET lbr_CountryCode='02810' WHERE C_Country_ID=186;
UPDATE C_Country SET lbr_CountryCode='02852' WHERE C_Country_ID=187;
UPDATE C_Country SET lbr_CountryCode='02917' WHERE C_Country_ID=188;
UPDATE C_Country SET lbr_CountryCode='00230' WHERE C_Country_ID=101;
UPDATE C_Country SET lbr_CountryCode='02895' WHERE C_Country_ID=190;
UPDATE C_Country SET lbr_CountryCode='03018' WHERE C_Country_ID=192;
UPDATE C_Country SET lbr_CountryCode='06777' WHERE C_Country_ID=303;
UPDATE C_Country SET lbr_CountryCode='03093' WHERE C_Country_ID=195;
UPDATE C_Country SET lbr_CountryCode='03131' WHERE C_Country_ID=196;
UPDATE C_Country SET lbr_CountryCode='03174' WHERE C_Country_ID=197;
UPDATE C_Country SET lbr_CountryCode='03344' WHERE C_Country_ID=199;
UPDATE C_Country SET lbr_CountryCode='03298' WHERE C_Country_ID=198;
UPDATE C_Country SET lbr_CountryCode='03379' WHERE C_Country_ID=200;
UPDATE C_Country SET lbr_CountryCode='03417' WHERE C_Country_ID=201;
UPDATE C_Country SET lbr_CountryCode='03450' WHERE C_Country_ID=204;
UPDATE C_Country SET lbr_CountryCode='03514' WHERE C_Country_ID=205;
UPDATE C_Country SET lbr_CountryCode='04979' WHERE C_Country_ID=251;
UPDATE C_Country SET lbr_CountryCode='05010' WHERE C_Country_ID=252;
UPDATE C_Country SET lbr_CountryCode='04740' WHERE C_Country_ID=253;
UPDATE C_Country SET lbr_CountryCode='05053' WHERE C_Country_ID=254;
UPDATE C_Country SET lbr_CountryCode='05070' WHERE C_Country_ID=256;
UPDATE C_Country SET lbr_CountryCode='05088' WHERE C_Country_ID=257;
UPDATE C_Country SET lbr_CountryCode='05177' WHERE C_Country_ID=258;
UPDATE C_Country SET lbr_CountryCode='06700' WHERE C_Country_ID=285;
UPDATE C_Country SET lbr_CountryCode='06769' WHERE C_Country_ID=286;
UPDATE C_Country SET lbr_CountryCode='06750' WHERE C_Country_ID=287;
UPDATE C_Country SET lbr_CountryCode='07102' WHERE C_Country_ID=288;
UPDATE C_Country SET lbr_CountryCode='07153' WHERE C_Country_ID=290;
UPDATE C_Country SET lbr_CountryCode='06904' WHERE C_Country_ID=293;
UPDATE C_Country SET lbr_CountryCode='07200' WHERE C_Country_ID=295;
UPDATE C_Country SET lbr_CountryCode='07285' WHERE C_Country_ID=297;
UPDATE C_Country SET lbr_CountryCode='00531' WHERE C_Country_ID=296;
UPDATE C_Country SET lbr_CountryCode='07315' WHERE C_Country_ID=298;
UPDATE C_Country SET lbr_CountryCode='07358' WHERE C_Country_ID=299;
UPDATE C_Country SET lbr_CountryCode='07412' WHERE C_Country_ID=300;
UPDATE C_Country SET lbr_CountryCode='02470' WHERE C_Country_ID=301;
UPDATE C_Country SET lbr_CountryCode='07480' WHERE C_Country_ID=304;
UPDATE C_Country SET lbr_CountryCode='07560' WHERE C_Country_ID=305;
UPDATE C_Country SET lbr_CountryCode='02496' WHERE C_Country_ID=100;
UPDATE C_Country SET lbr_CountryCode='02976' WHERE C_Country_ID=194;
UPDATE C_Country SET lbr_CountryCode='03794' WHERE C_Country_ID=207;
UPDATE C_Country SET lbr_CountryCode='00930' WHERE C_Country_ID=255;
UPDATE C_Country SET lbr_CountryCode='01546' WHERE C_Country_ID=283;
UPDATE C_Country SET lbr_CountryCode='00477' WHERE C_Country_ID=260;
UPDATE C_Country SET lbr_CountryCode='06602' WHERE C_Country_ID=284;
UPDATE C_Country SET lbr_CountryCode='06955' WHERE C_Country_ID=289;
UPDATE C_Country SET lbr_CountryCode='07005' WHERE C_Country_ID=291;
UPDATE C_Country SET lbr_CountryCode='07056' WHERE C_Country_ID=292;
UPDATE C_Country SET lbr_CountryCode='02933' WHERE C_Country_ID=191;
UPDATE C_Country SET lbr_CountryCode='00370' WHERE C_Country_ID=114;
UPDATE C_Country SET lbr_CountryCode='00400' WHERE C_Country_ID=115;
UPDATE C_Country SET lbr_CountryCode='00418' WHERE C_Country_ID=116;
UPDATE C_Country SET lbr_CountryCode='00434' WHERE C_Country_ID=118;
UPDATE C_Country SET lbr_CountryCode='00639' WHERE C_Country_ID=119;
UPDATE C_Country SET lbr_CountryCode='00647' WHERE C_Country_ID=120;
UPDATE C_Country SET lbr_CountryCode='00655' WHERE C_Country_ID=121;
UPDATE C_Country SET lbr_CountryCode='00698' WHERE C_Country_ID=122;
UPDATE C_Country SET lbr_CountryCode='02453' WHERE C_Country_ID=106;
UPDATE C_Country SET lbr_CountryCode='00779' WHERE C_Country_ID=125;
UPDATE C_Country SET lbr_CountryCode='00809' WHERE C_Country_ID=126;
UPDATE C_Country SET lbr_CountryCode='07501' WHERE C_Country_ID=308;
UPDATE C_Country SET lbr_CountryCode='07595' WHERE C_Country_ID=309;
UPDATE C_Country SET lbr_CountryCode='07706' WHERE C_Country_ID=310;
UPDATE C_Country SET lbr_CountryCode='07544' WHERE C_Country_ID=312;
UPDATE C_Country SET lbr_CountryCode='07641' WHERE C_Country_ID=313;
UPDATE C_Country SET lbr_CountryCode='07676' WHERE C_Country_ID=107;
UPDATE C_Country SET lbr_CountryCode='07722' WHERE C_Country_ID=317;
UPDATE C_Country SET lbr_CountryCode='07803' WHERE C_Country_ID=318;
UPDATE C_Country SET lbr_CountryCode='07765' WHERE C_Country_ID=319;
UPDATE C_Country SET lbr_CountryCode='07951' WHERE C_Country_ID=320;
UPDATE C_Country SET lbr_CountryCode='08001' WHERE C_Country_ID=321;
UPDATE C_Country SET lbr_CountryCode='08052' WHERE C_Country_ID=322;
UPDATE C_Country SET lbr_CountryCode='08109' WHERE C_Country_ID=323;
UPDATE C_Country SET lbr_CountryCode='08150' WHERE C_Country_ID=324;
UPDATE C_Country SET lbr_CountryCode='08206' WHERE C_Country_ID=325;
UPDATE C_Country SET lbr_CountryCode='08273' WHERE C_Country_ID=326;
UPDATE C_Country SET lbr_CountryCode='08249' WHERE C_Country_ID=327;
UPDATE C_Country SET lbr_CountryCode='08281' WHERE C_Country_ID=329;
UPDATE C_Country SET lbr_CountryCode='08338' WHERE C_Country_ID=330;
UPDATE C_Country SET lbr_CountryCode='08311' WHERE C_Country_ID=331;
UPDATE C_Country SET lbr_CountryCode='02445' WHERE C_Country_ID=332;
UPDATE C_Country SET lbr_CountryCode='06289' WHERE C_Country_ID=333;
UPDATE C_Country SET lbr_CountryCode='08451' WHERE C_Country_ID=336;
UPDATE C_Country SET lbr_CountryCode='08478' WHERE C_Country_ID=337;
UPDATE C_Country SET lbr_CountryCode='08583' WHERE C_Country_ID=340;
UPDATE C_Country SET lbr_CountryCode='08630' WHERE C_Country_ID=341;
UPDATE C_Country SET lbr_CountryCode='08664' WHERE C_Country_ID=342;
UPDATE C_Country SET lbr_CountryCode='06912' WHERE C_Country_ID=113;
UPDATE C_Country SET lbr_CountryCode='05517' WHERE C_Country_ID=338;
UPDATE C_Country SET lbr_CountryCode='06858' WHERE C_Country_ID=344;
UPDATE C_Country SET lbr_CountryCode='03573' WHERE C_Country_ID=345;
UPDATE C_Country SET lbr_CountryCode='08907' WHERE C_Country_ID=347;
UPDATE C_Country SET lbr_CountryCode='06653' WHERE C_Country_ID=348;
UPDATE C_Country SET lbr_CountryCode='00728' WHERE C_Country_ID=108;
UPDATE C_Country SET lbr_CountryCode='00833' WHERE C_Country_ID=128;
UPDATE C_Country SET lbr_CountryCode='00884' WHERE C_Country_ID=131;
UPDATE C_Country SET lbr_CountryCode='00906' WHERE C_Country_ID=133;
UPDATE C_Country SET lbr_CountryCode='00973' WHERE C_Country_ID=135;
UPDATE C_Country SET lbr_CountryCode='00981' WHERE C_Country_ID=136;
UPDATE C_Country SET lbr_CountryCode='01015' WHERE C_Country_ID=137;
UPDATE C_Country SET lbr_CountryCode='01198' WHERE C_Country_ID=134;
UPDATE C_Country SET lbr_CountryCode='01082' WHERE C_Country_ID=141;
UPDATE C_Country SET lbr_CountryCode='01155' WHERE C_Country_ID=144;
UPDATE C_Country SET lbr_CountryCode='01414' WHERE C_Country_ID=145;
UPDATE C_Country SET lbr_CountryCode='01457' WHERE C_Country_ID=146;
UPDATE C_Country SET lbr_CountryCode='01279' WHERE C_Country_ID=148;
UPDATE C_Country SET lbr_CountryCode='01376' WHERE C_Country_ID=149;
UPDATE C_Country SET lbr_CountryCode='01600' WHERE C_Country_ID=153;
UPDATE C_Country SET lbr_CountryCode='01589' WHERE C_Country_ID=152;
UPDATE C_Country SET lbr_CountryCode='03611' WHERE C_Country_ID=208;
UPDATE C_Country SET lbr_CountryCode='03727' WHERE C_Country_ID=210;
UPDATE C_Country SET lbr_CountryCode='03697' WHERE C_Country_ID=211;
UPDATE C_Country SET lbr_CountryCode='03751' WHERE C_Country_ID=212;
UPDATE C_Country SET lbr_CountryCode='03832' WHERE C_Country_ID=213;
UPDATE C_Country SET lbr_CountryCode='03867' WHERE C_Country_ID=214;
UPDATE C_Country SET lbr_CountryCode='03913' WHERE C_Country_ID=215;
UPDATE C_Country SET lbr_CountryCode='04030' WHERE C_Country_ID=217;
UPDATE C_Country SET lbr_CountryCode='04111' WHERE C_Country_ID=220;
UPDATE C_Country SET lbr_CountryCode='01872' WHERE C_Country_ID=221;
UPDATE C_Country SET lbr_CountryCode='01902' WHERE C_Country_ID=222;
UPDATE C_Country SET lbr_CountryCode='04200' WHERE C_Country_ID=225;
UPDATE C_Country SET lbr_CountryCode='04260' WHERE C_Country_ID=228;
UPDATE C_Country SET lbr_CountryCode='04340' WHERE C_Country_ID=229;
UPDATE C_Country SET lbr_CountryCode='05428' WHERE C_Country_ID=261;
UPDATE C_Country SET lbr_CountryCode='05487' WHERE C_Country_ID=262;
UPDATE C_Country SET lbr_CountryCode='05215' WHERE C_Country_ID=263;
UPDATE C_Country SET lbr_CountryCode='05258' WHERE C_Country_ID=264;
UPDATE C_Country SET lbr_CountryCode='05282' WHERE C_Country_ID=265;
UPDATE C_Country SET lbr_CountryCode='05312' WHERE C_Country_ID=266;
UPDATE C_Country SET lbr_CountryCode='05355' WHERE C_Country_ID=267;
UPDATE C_Country SET lbr_CountryCode='05762' WHERE C_Country_ID=271;
UPDATE C_Country SET lbr_CountryCode='05754' WHERE C_Country_ID=272;
UPDATE C_Country SET lbr_CountryCode='02291' WHERE C_Country_ID=132;
UPDATE C_Country SET lbr_CountryCode='07820' WHERE C_Country_ID=140;
UPDATE C_Country SET lbr_CountryCode='00310' WHERE C_Country_ID=143;
UPDATE C_Country SET lbr_CountryCode='07889' WHERE C_Country_ID=151;
UPDATE C_Country SET lbr_CountryCode='05118' WHERE C_Country_ID=154;
UPDATE C_Country SET lbr_CountryCode='01538' WHERE C_Country_ID=218;
UPDATE C_Country SET lbr_CountryCode='06238' WHERE C_Country_ID=219;
UPDATE C_Country SET lbr_CountryCode='04316' WHERE C_Country_ID=227;
UPDATE C_Country SET lbr_CountryCode='05380' WHERE C_Country_ID=269;
UPDATE C_Country SET lbr_CountryCode='05568' WHERE C_Country_ID=270;
UPDATE C_Country SET lbr_CountryCode='06408' WHERE C_Country_ID=150;
UPDATE C_Country SET lbr_CountryCode='00132' WHERE C_Country_ID=110;
UPDATE C_Country SET lbr_CountryCode='00175' WHERE C_Country_ID=111;
UPDATE C_Country SET lbr_CountryCode='00736' WHERE C_Country_ID=124;
UPDATE C_Country SET lbr_CountryCode='00817' WHERE C_Country_ID=127;
UPDATE C_Country SET lbr_CountryCode='00850' WHERE C_Country_ID=129;
UPDATE C_Country SET lbr_CountryCode='00876' WHERE C_Country_ID=103;
UPDATE C_Country SET lbr_CountryCode='01058' WHERE C_Country_ID=139;
UPDATE C_Country SET lbr_CountryCode='01112' WHERE C_Country_ID=142;
UPDATE C_Country SET lbr_CountryCode='01490' WHERE C_Country_ID=109;
UPDATE C_Country SET lbr_CountryCode='01651' WHERE C_Country_ID=155;
UPDATE C_Country SET lbr_CountryCode='01830' WHERE C_Country_ID=160;
UPDATE C_Country SET lbr_CountryCode='03310' WHERE C_Country_ID=174;
UPDATE C_Country SET lbr_CountryCode='03050' WHERE C_Country_ID=193;
UPDATE C_Country SET lbr_CountryCode='03557' WHERE C_Country_ID=206;
UPDATE C_Country SET lbr_CountryCode='03654' WHERE C_Country_ID=209;
UPDATE C_Country SET lbr_CountryCode='03999' WHERE C_Country_ID=216;
UPDATE C_Country SET lbr_CountryCode='04405' WHERE C_Country_ID=231;
UPDATE C_Country SET lbr_CountryCode='04421' WHERE C_Country_ID=232;
UPDATE C_Country SET lbr_CountryCode='04499' WHERE C_Country_ID=235;
UPDATE C_Country SET lbr_CountryCode='04985' WHERE C_Country_ID=350;
UPDATE C_Country SET lbr_CountryCode='04723' WHERE C_Country_ID=268;
UPDATE C_Country SET lbr_CountryCode='05932' WHERE C_Country_ID=279;
UPDATE C_Country SET lbr_CountryCode='06971' WHERE C_Country_ID=294;
UPDATE C_Country SET lbr_CountryCode='07370' WHERE C_Country_ID=349;
UPDATE C_Country SET lbr_CountryCode='02461' WHERE C_Country_ID=302;
UPDATE C_Country SET lbr_CountryCode='07447' WHERE C_Country_ID=315;
UPDATE C_Country SET lbr_CountryCode='08230' WHERE C_Country_ID=328;
UPDATE C_Country SET lbr_CountryCode='08508' WHERE C_Country_ID=339;
UPDATE C_Country SET lbr_CountryCode='06475' WHERE C_Country_ID=170;
UPDATE C_Country SET lbr_CountryCode='04278' WHERE C_Country_ID=226;
UPDATE C_Country SET lbr_CountryCode='04383' WHERE C_Country_ID=230;

UPDATE C_Country_Trl SET Description='COLOMBIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=156;

UPDATE C_Country_Trl SET Description='COMORES, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=157;

UPDATE C_Country_Trl SET Description='CONGO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=158;

UPDATE C_Country_Trl SET Description='COSTA RICA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=161;

UPDATE C_Country_Trl SET Description='CROACIA (REPUBLICA DA)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=163;

UPDATE C_Country_Trl SET Description='CUBA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=164;

UPDATE C_Country_Trl SET Description='DINAMARCA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=167;

UPDATE C_Country_Trl SET Description='DOMINICA,ILHA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=169;

UPDATE C_Country_Trl SET Description='EQUADOR'
    WHERE AD_Language='pt_BR' AND C_Country_ID=171;

UPDATE C_Country_Trl SET Description='EGITO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=172;

UPDATE C_Country_Trl SET Description='EL SALVADOR'
    WHERE AD_Language='pt_BR' AND C_Country_ID=173;

UPDATE C_Country_Trl SET Description='ERITREIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=175;

UPDATE C_Country_Trl SET Description='ESTONIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=176;

UPDATE C_Country_Trl SET Description='ETIOPIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=177;

UPDATE C_Country_Trl SET Description='FALKLAND (ILHAS MALVINAS)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=178;

UPDATE C_Country_Trl SET Description='FEROE, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=179;

UPDATE C_Country_Trl SET Description='FINLANDIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=181;

UPDATE C_Country_Trl SET Description='GUIANA FRANCESA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=183;

UPDATE C_Country_Trl SET Description='LUXEMBURGO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=233;

UPDATE C_Country_Trl SET Description='MACAU'
    WHERE AD_Language='pt_BR' AND C_Country_ID=234;

UPDATE C_Country_Trl SET Description='MADAGASCAR'
    WHERE AD_Language='pt_BR' AND C_Country_ID=236;

UPDATE C_Country_Trl SET Description='MALASIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=238;

UPDATE C_Country_Trl SET Description='MALDIVAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=239;

UPDATE C_Country_Trl SET Description='MALI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=240;

UPDATE C_Country_Trl SET Description='MALTA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=241;

UPDATE C_Country_Trl SET Description='MARSHALL,ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=242;

UPDATE C_Country_Trl SET Description='MARTINICA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=243;

UPDATE C_Country_Trl SET Description='MAURITANIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=244;

UPDATE C_Country_Trl SET Description='MAYOTTE (ILHAS FRANCESAS)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=246;

UPDATE C_Country_Trl SET Description='MEXICO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=247;

UPDATE C_Country_Trl SET Description='MOLDAVIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=249;

UPDATE C_Country_Trl SET Description='MICRONESIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=248;

UPDATE C_Country_Trl SET Description='MONACO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=250;

UPDATE C_Country_Trl SET Description='PANAMA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=274;

UPDATE C_Country_Trl SET Description='PAPUA NOVA GUINE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=275;

UPDATE C_Country_Trl SET Description='PARAGUAI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=276;

UPDATE C_Country_Trl SET Description='PERU'
    WHERE AD_Language='pt_BR' AND C_Country_ID=277;

UPDATE C_Country_Trl SET Description='POLONIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=280;

UPDATE C_Country_Trl SET Description='FILIPINAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=278;

UPDATE C_Country_Trl SET Description='PORTO RICO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=282;

UPDATE C_Country_Trl SET Description='CONGO, REPUBLICA DEMOCRATICA DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=159;

UPDATE C_Country_Trl SET Description='COSTA DO MARFIM'
    WHERE AD_Language='pt_BR' AND C_Country_ID=162;

UPDATE C_Country_Trl SET Description='TCHECA, REPUBLICA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=166;

UPDATE C_Country_Trl SET Description='CHIPRE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=165;

UPDATE C_Country_Trl SET Description='DJIBUTI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=168;

UPDATE C_Country_Trl SET Description='POLINESIA FRANCESA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=184;

UPDATE C_Country_Trl SET Description='FIJI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=180;

UPDATE C_Country_Trl SET Description='MAURICIO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=245;

UPDATE C_Country_Trl SET Description='PORTUGAL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=281;

UPDATE C_Country_Trl SET Description='FRANCA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=102;

UPDATE C_Country_Trl SET Description='GABAO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=186;

UPDATE C_Country_Trl SET Description='GAMBIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=187;

UPDATE C_Country_Trl SET Description='GEORGIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=188;

UPDATE C_Country_Trl SET Description='ALEMANHA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=101;

UPDATE C_Country_Trl SET Description='GANA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=190;

UPDATE C_Country_Trl SET Description='GRECIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=192;

UPDATE C_Country_Trl SET Description='SALOMAO, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=303;

UPDATE C_Country_Trl SET Description='GUADALUPE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=195;

UPDATE C_Country_Trl SET Description='GUAM'
    WHERE AD_Language='pt_BR' AND C_Country_ID=196;

UPDATE C_Country_Trl SET Description='GUATEMALA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=197;

UPDATE C_Country_Trl SET Description='GUINE-BISSAU'
    WHERE AD_Language='pt_BR' AND C_Country_ID=199;

UPDATE C_Country_Trl SET Description='GUINE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=198;

UPDATE C_Country_Trl SET Description='GUIANA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=200;

UPDATE C_Country_Trl SET Description='HAITI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=201;

UPDATE C_Country_Trl SET Description='HONDURAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=204;

UPDATE C_Country_Trl SET Description='HONG KONG'
    WHERE AD_Language='pt_BR' AND C_Country_ID=205;

UPDATE C_Country_Trl SET Description='MONGOLIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=251;

UPDATE C_Country_Trl SET Description='MONTSERRAT,ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=252;

UPDATE C_Country_Trl SET Description='MARROCOS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=253;

UPDATE C_Country_Trl SET Description='MOCAMBIQUE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=254;

UPDATE C_Country_Trl SET Description='NAMIBIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=256;

UPDATE C_Country_Trl SET Description='NAURU'
    WHERE AD_Language='pt_BR' AND C_Country_ID=257;

UPDATE C_Country_Trl SET Description='NEPAL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=258;

UPDATE C_Country_Trl SET Description='ROMENIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=285;

UPDATE C_Country_Trl SET Description='RUSSIA, FEDERACAO DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=286;

UPDATE C_Country_Trl SET Description='RUANDA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=287;

UPDATE C_Country_Trl SET Description='SANTA HELENA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=288;

UPDATE C_Country_Trl SET Description='SANTA LUCIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=290;

UPDATE C_Country_Trl SET Description='SAMOA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=293;

UPDATE C_Country_Trl SET Description='SAO TOME E PRINCIPE, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=295;

UPDATE C_Country_Trl SET Description='SENEGAL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=297;

UPDATE C_Country_Trl SET Description='ARABIA SAUDITA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=296;

UPDATE C_Country_Trl SET Description='SEYCHELLES'
    WHERE AD_Language='pt_BR' AND C_Country_ID=298;

UPDATE C_Country_Trl SET Description='SERRA LEOA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=299;

UPDATE C_Country_Trl SET Description='CINGAPURA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=300;

UPDATE C_Country_Trl SET Description='ESLOVACA, REPUBLICA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=301;

UPDATE C_Country_Trl SET Description='SOMALIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=304;

UPDATE C_Country_Trl SET Description='AFRICA DO SUL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=305;

UPDATE C_Country_Trl SET Description='ESTADOS UNIDOS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=100;

UPDATE C_Country_Trl SET Description='GRANADA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=194;

UPDATE C_Country_Trl SET Description='ISLANDIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=207;

UPDATE C_Country_Trl SET Description='MIANMAR (BIRMANIA)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=255;

UPDATE C_Country_Trl SET Description='CATAR'
    WHERE AD_Language='pt_BR' AND C_Country_ID=283;

UPDATE C_Country_Trl SET Description='ANTILHAS HOLANDESAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=260;

UPDATE C_Country_Trl SET Description='REUNIAO, ILHA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=284;

UPDATE C_Country_Trl SET Description='SAO CRISTOVAO E NEVES,ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=289;

UPDATE C_Country_Trl SET Description='SAO PEDRO E MIQUELON'
    WHERE AD_Language='pt_BR' AND C_Country_ID=291;

UPDATE C_Country_Trl SET Description='SAO VICENTE E GRANADINAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=292;

UPDATE C_Country_Trl SET Description='GIBRALTAR'
    WHERE AD_Language='pt_BR' AND C_Country_ID=191;

UPDATE C_Country_Trl SET Description='ANDORRA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=114;

UPDATE C_Country_Trl SET Description='ANGOLA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=115;

UPDATE C_Country_Trl SET Description='ANGUILLA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=116;

UPDATE C_Country_Trl SET Description='ANTIGUA E BARBUDA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=118;

UPDATE C_Country_Trl SET Description='ARGENTINA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=119;

UPDATE C_Country_Trl SET Description='ARMENIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=120;

UPDATE C_Country_Trl SET Description='ARUBA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=121;

UPDATE C_Country_Trl SET Description='AUSTRALIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=122;

UPDATE C_Country_Trl SET Description='ESPANHA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=106;

UPDATE C_Country_Trl SET Description='BAHAMAS, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=125;

UPDATE C_Country_Trl SET Description='BAHREIN, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=126;

UPDATE C_Country_Trl SET Description='SRI LANKA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=308;

UPDATE C_Country_Trl SET Description='SUDAO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=309;

UPDATE C_Country_Trl SET Description='SURINAME'
    WHERE AD_Language='pt_BR' AND C_Country_ID=310;

UPDATE C_Country_Trl SET Description='SUAZILANDIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=312;

UPDATE C_Country_Trl SET Description='SUECIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=313;

UPDATE C_Country_Trl SET Description='SUICA '
    WHERE AD_Language='pt_BR' AND C_Country_ID=107;

UPDATE C_Country_Trl SET Description='TADJIQUISTAO, REPUBLICA DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=317;

UPDATE C_Country_Trl SET Description='TANZANIA, REP.UNIDA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=318;

UPDATE C_Country_Trl SET Description='TAILANDIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=319;

UPDATE C_Country_Trl SET Description='TIMOR LESTE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=320;

UPDATE C_Country_Trl SET Description='TOGO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=321;

UPDATE C_Country_Trl SET Description='TOQUELAU,ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=322;

UPDATE C_Country_Trl SET Description='TONGA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=323;

UPDATE C_Country_Trl SET Description='TRINIDAD E TOBAGO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=324;

UPDATE C_Country_Trl SET Description='TUNISIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=325;

UPDATE C_Country_Trl SET Description='TURQUIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=326;

UPDATE C_Country_Trl SET Description='TURCOMENISTAO, REPUBLICA DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=327;

UPDATE C_Country_Trl SET Description='TUVALU'
    WHERE AD_Language='pt_BR' AND C_Country_ID=329;

UPDATE C_Country_Trl SET Description='UGANDA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=330;

UPDATE C_Country_Trl SET Description='UCRANIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=331;

UPDATE C_Country_Trl SET Description='EMIRADOS ARABES UNIDOS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=332;

UPDATE C_Country_Trl SET Description='REINO UNIDO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=333;

UPDATE C_Country_Trl SET Description='URUGUAI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=336;

UPDATE C_Country_Trl SET Description='UZBEQUISTAO, REPUBLICA DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=337;

UPDATE C_Country_Trl SET Description='VIETNA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=340;

UPDATE C_Country_Trl SET Description='VIRGENS,ILHAS (BRITANICAS)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=341;

UPDATE C_Country_Trl SET Description='VIRGENS,ILHAS (E.U.A.)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=342;

UPDATE C_Country_Trl SET Description='SAMOA AMERICANA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=113;

UPDATE C_Country_Trl SET Description='VANUATU'
    WHERE AD_Language='pt_BR' AND C_Country_ID=338;

UPDATE C_Country_Trl SET Description='SAARA OCIDENTAL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=344;

UPDATE C_Country_Trl SET Description='IEMEN'
    WHERE AD_Language='pt_BR' AND C_Country_ID=345;

UPDATE C_Country_Trl SET Description='ZAMBIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=347;

UPDATE C_Country_Trl SET Description='ZIMBABUE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=348;

UPDATE C_Country_Trl SET Description='AUSTRIA '
    WHERE AD_Language='pt_BR' AND C_Country_ID=108;

UPDATE C_Country_Trl SET Description='BARBADOS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=128;

UPDATE C_Country_Trl SET Description='BELIZE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=131;

UPDATE C_Country_Trl SET Description='BERMUDAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=133;

UPDATE C_Country_Trl SET Description='BOLIVIA, ESTADO PLURINACIONAL DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=135;

UPDATE C_Country_Trl SET Description='BOSNIA-HERZEGOVINA (REPUBLICA DA)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=136;

UPDATE C_Country_Trl SET Description='BOTSUANA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=137;

UPDATE C_Country_Trl SET Description='BUTAO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=134;

UPDATE C_Country_Trl SET Description='BRUNEI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=141;

UPDATE C_Country_Trl SET Description='BURUNDI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=144;

UPDATE C_Country_Trl SET Description='CAMBOJA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=145;

UPDATE C_Country_Trl SET Description='CAMAROES'
    WHERE AD_Language='pt_BR' AND C_Country_ID=146;

UPDATE C_Country_Trl SET Description='CABO VERDE, REPUBLICA DE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=148;

UPDATE C_Country_Trl SET Description='CAYMAN, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=149;

UPDATE C_Country_Trl SET Description='CHINA, REPUBLICA POPULAR'
    WHERE AD_Language='pt_BR' AND C_Country_ID=153;

UPDATE C_Country_Trl SET Description='CHILE '
    WHERE AD_Language='pt_BR' AND C_Country_ID=152;

UPDATE C_Country_Trl SET Description='INDIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=208;

UPDATE C_Country_Trl SET Description='IRA, REPUBLICA ISLAMICA DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=210;

UPDATE C_Country_Trl SET Description='IRAQUE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=211;

UPDATE C_Country_Trl SET Description='IRLANDA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=212;

UPDATE C_Country_Trl SET Description='ISRAEL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=213;

UPDATE C_Country_Trl SET Description='ITALIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=214;

UPDATE C_Country_Trl SET Description='JAMAICA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=215;

UPDATE C_Country_Trl SET Description='JORDANIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=217;

UPDATE C_Country_Trl SET Description='KIRIBATI'
    WHERE AD_Language='pt_BR' AND C_Country_ID=220;

UPDATE C_Country_Trl SET Description='COREIA (DO NORTE), REP.POP.DEMOCRATICA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=221;

UPDATE C_Country_Trl SET Description='COREIA (DO SUL), REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=222;

UPDATE C_Country_Trl SET Description='LAOS, REP.POP.DEMOCR.DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=225;

UPDATE C_Country_Trl SET Description='LESOTO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=228;

UPDATE C_Country_Trl SET Description='LIBERIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=229;

UPDATE C_Country_Trl SET Description='NOVA CALEDONIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=261;

UPDATE C_Country_Trl SET Description='NOVA ZELANDIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=262;

UPDATE C_Country_Trl SET Description='NICARAGUA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=263;

UPDATE C_Country_Trl SET Description='NIGER'
    WHERE AD_Language='pt_BR' AND C_Country_ID=264;

UPDATE C_Country_Trl SET Description='NIGERIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=265;

UPDATE C_Country_Trl SET Description='NIUE,ILHA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=266;

UPDATE C_Country_Trl SET Description='NORFOLK,ILHA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=267;

UPDATE C_Country_Trl SET Description='PAQUISTAO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=271;

UPDATE C_Country_Trl SET Description='PALAU'
    WHERE AD_Language='pt_BR' AND C_Country_ID=272;

UPDATE C_Country_Trl SET Description='BENIN'
    WHERE AD_Language='pt_BR' AND C_Country_ID=132;

UPDATE C_Country_Trl SET Description='TERRITORIO BRIT.OC.INDICO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=140;

UPDATE C_Country_Trl SET Description='BURKINA FASO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=143;

UPDATE C_Country_Trl SET Description='CHADE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=151;

UPDATE C_Country_Trl SET Description='CHRISTMAS,ILHA (NAVIDAD)'
    WHERE AD_Language='pt_BR' AND C_Country_ID=154;

UPDATE C_Country_Trl SET Description='CAZAQUISTAO, REPUBLICA DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=218;

UPDATE C_Country_Trl SET Description='QUENIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=219;

UPDATE C_Country_Trl SET Description='LIBANO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=227;

UPDATE C_Country_Trl SET Description='NORUEGA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=269;

UPDATE C_Country_Trl SET Description='OMA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=270;

UPDATE C_Country_Trl SET Description='REPUBLICA CENTRO-AFRICANA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=150;

UPDATE C_Country_Trl SET Description='AFEGANISTAO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=110;

UPDATE C_Country_Trl SET Description='ALBANIA, REPUBLICA  DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=111;

UPDATE C_Country_Trl SET Description='AZERBAIJAO, REPUBLICA DO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=124;

UPDATE C_Country_Trl SET Description='BANGLADESH'
    WHERE AD_Language='pt_BR' AND C_Country_ID=127;

UPDATE C_Country_Trl SET Description='BELARUS, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=129;

UPDATE C_Country_Trl SET Description='BELGICA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=103;

UPDATE C_Country_Trl SET Description='BRASIL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=139;

UPDATE C_Country_Trl SET Description='BULGARIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=142;

UPDATE C_Country_Trl SET Description='CANADA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=109;

UPDATE C_Country_Trl SET Description='COCOS(KEELING),ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=155;

UPDATE C_Country_Trl SET Description='COOK, ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=160;

UPDATE C_Country_Trl SET Description='GUINE-EQUATORIAL'
    WHERE AD_Language='pt_BR' AND C_Country_ID=174;

UPDATE C_Country_Trl SET Description='GROENLANDIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=193;

UPDATE C_Country_Trl SET Description='HUNGRIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=206;

UPDATE C_Country_Trl SET Description='INDONESIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=209;

UPDATE C_Country_Trl SET Description='JAPAO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=216;

UPDATE C_Country_Trl SET Description='LIECHTENSTEIN'
    WHERE AD_Language='pt_BR' AND C_Country_ID=231;

UPDATE C_Country_Trl SET Description='LITUANIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=232;

UPDATE C_Country_Trl SET Description='MACEDONIA, ANT.REP.IUGOSLAVA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=235;

UPDATE C_Country_Trl SET Description='MONTENEGRO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=350;

UPDATE C_Country_Trl SET Description='MARIANAS DO NORTE'
    WHERE AD_Language='pt_BR' AND C_Country_ID=268;

UPDATE C_Country_Trl SET Description='PITCAIRN,ILHA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=279;

UPDATE C_Country_Trl SET Description='SAN MARINO'
    WHERE AD_Language='pt_BR' AND C_Country_ID=294;

UPDATE C_Country_Trl SET Description='SERVIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=349;

UPDATE C_Country_Trl SET Description='ESLOVENIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=302;

UPDATE C_Country_Trl SET Description='SIRIA, REPUBLICA ARABE DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=315;

UPDATE C_Country_Trl SET Description='TURCAS E CAICOS,ILHAS'
    WHERE AD_Language='pt_BR' AND C_Country_ID=328;

UPDATE C_Country_Trl SET Description='VENEZUELA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=339;

UPDATE C_Country_Trl SET Description='REPUBLICA DOMINICANA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=170;

UPDATE C_Country_Trl SET Description='LETONIA, REPUBLICA DA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=226;

UPDATE C_Country_Trl SET Description='LIBIA'
    WHERE AD_Language='pt_BR' AND C_Country_ID=230;
    
-- May 21, 2014 1:34:04 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CNAE',1000237,'CNAE','CNAE','445dcb26-4e63-4d3f-8ff8-61ed3efd762c',TO_TIMESTAMP('2014-05-21 13:34:04','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-21 13:34:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 21, 2014 1:34:41 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000829,'N','N','N',0,'N',10,'N','N','N','Y','ac521f40-b381-472b-95bf-d0da2f1bb6c4','Y','LBR_CNAE','CNAE','Y',TO_TIMESTAMP('2014-05-21 13:34:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-21 13:34:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000237,14,228,0,'LBR')
;

-- May 21, 2014 1:34:46 PM BRT
ALTER TABLE AD_OrgInfo ADD COLUMN LBR_CNAE VARCHAR(10) DEFAULT NULL 
;

-- May 21, 2014 1:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',170,36,'N','N',190,'Y',1001518,'N','D','AD_OrgInfo_UU','f5dd32cf-847f-4474-9304-f3e0d0f0517e','N','N',0,0,TO_TIMESTAMP('2014-05-21 13:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 13:35:10','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,60441)
;

-- May 21, 2014 1:35:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',170,10,'N','N',200,'Y',1001519,'N','LBR','CNAE','11f18dbf-df6a-4e18-b53a-e9f5fcd18289','N','Y',0,0,TO_TIMESTAMP('2014-05-21 13:35:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-21 13:35:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,3,1000829)
;

-- May 21, 2014 1:35:41 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, NumLines=1, AD_FieldGroup_ID=1000002,Updated=TO_TIMESTAMP('2014-05-21 13:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001519
;

-- May 22, 2014 10:48:28 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000044,'N','N','Y','LBR','L','c8ca36b4-fe62-48ff-8c2e-eea759cdc14e','Y','Y','LBR_DigitalCertificate','Digital Certificate','Y',0,0,TO_TIMESTAMP('2014-05-22 10:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 10:48:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 22, 2014 10:48:29 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000056,'Table LBR_DigitalCertificate','LBR_DigitalCertificate',1,'714386cb-8c14-43d0-94c4-ae7e131372a4',TO_TIMESTAMP('2014-05-22 10:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 10:48:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 22, 2014 10:49:05 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DigitalCertificate_ID',1000238,'Digital Certificate','Digital Certificate','74b30cce-7dd4-4973-9c0d-b6151dda79f8',TO_TIMESTAMP('2014-05-22 10:49:05','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 10:49:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 22, 2014 10:49:12 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DigitalCertificate_UU',1000239,'Digital Certificate','Digital Certificate','4c35253e-8bad-471e-9053-04b40cb2c92d',TO_TIMESTAMP('2014-05-22 10:49:12','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 10:49:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 22, 2014 10:49:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000830,'Y','N','N',0,'N',22,'N','N','N','Y','f3fbf39b-10fb-4018-9d38-59a96ce6940a','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-22 10:49:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:49:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000044,129,0,'LBR')
;

-- May 22, 2014 10:49:45 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDigitalCertificate', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-22 10:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000830
;

-- May 22, 2014 10:49:45 AM BRT
CREATE TABLE LBR_DigitalCertificate (AD_Client_ID NUMERIC(10) NOT NULL)
;

-- May 22, 2014 10:49:46 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT ADClient_LBRDigitalCertificate FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 22, 2014 10:50:21 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000831,'Y','N','N',0,'N',22,'N','N','N','Y','c265df3b-1ca4-49e0-ba02-e00d4f74be1f','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-22 10:50:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:50:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000044,104,0,'LBR')
;

-- May 22, 2014 10:50:26 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDigitalCertificate', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-22 10:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000831
;

-- May 22, 2014 10:50:26 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 22, 2014 10:50:26 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT ADOrg_LBRDigitalCertificate FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 22, 2014 10:51:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000832,'Y','N','N',0,'N',22,'N','Y','N','Y','9f2e39e7-9bee-417d-af4b-7b9b99857b16','N','LBR_DigitalCertificate_ID','Digital Certificate','N',TO_TIMESTAMP('2014-05-22 10:51:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:51:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000238,13,1000044,0,'LBR')
;

-- May 22, 2014 10:51:02 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN LBR_DigitalCertificate_ID NUMERIC(10) NOT NULL
;

-- May 22, 2014 10:51:02 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT LBR_DigitalCertificate_Key PRIMARY KEY (LBR_DigitalCertificate_ID)
;

-- May 22, 2014 10:51:18 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000833,'N','N','N',0,'N',36,'N','N','N','Y','3a2e6d39-a473-4267-8a26-10e298fc3a00','N','LBR_DigitalCertificate_UU','Digital Certificate','N',TO_TIMESTAMP('2014-05-22 10:51:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:51:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000239,10,1000044,0,'LBR')
;

-- May 22, 2014 10:51:20 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN LBR_DigitalCertificate_UU VARCHAR(36) DEFAULT NULL 
;

-- May 22, 2014 10:51:20 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT LBR_DigitalCertificate_UU_idx UNIQUE (LBR_DigitalCertificate_UU)
;

-- May 22, 2014 10:51:37 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000834,'N','N','N',0,'N',7,'N','N','N','Y','5ea1d8f5-cdf6-412f-be6d-febb49ee3cd4','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-22 10:51:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:51:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000044,0,'LBR')
;

-- May 22, 2014 10:51:38 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 22, 2014 10:51:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000835,'N','N','N',0,'N',22,'N','N','N','Y','1e15bbbb-95a3-4a99-b28d-bfdca3881312','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-22 10:51:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:51:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000044,0,'LBR')
;

-- May 22, 2014 10:51:52 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDigitalCertificat', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-22 10:51:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000835
;

-- May 22, 2014 10:51:52 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 22, 2014 10:51:52 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT CreatedBy_LBRDigitalCertificat FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 22, 2014 10:52:07 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000836,'N','N','N',0,'N',7,'N','N','N','Y','2fed7c60-dc00-4226-a315-191a28fbf37b','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-22 10:52:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:52:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000044,0,'LBR')
;

-- May 22, 2014 10:52:08 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 22, 2014 10:52:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000837,'N','N','N',0,'N',22,'N','N','N','Y','c28c6fc7-1ec8-428c-83ed-1091e3d788bf','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-22 10:52:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:52:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000044,0,'LBR')
;

-- May 22, 2014 10:52:21 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDigitalCertificat', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-22 10:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000837
;

-- May 22, 2014 10:52:21 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 22, 2014 10:52:21 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT UpdatedBy_LBRDigitalCertificat FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 22, 2014 10:52:35 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000838,'Y','N','N',0,'N',1,'N','N','N','Y','85011820-d45f-4e02-a4cb-db12eab19eab','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-22 10:52:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:52:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000044,0,'LBR')
;

-- May 22, 2014 10:52:36 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 22, 2014 10:54:40 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000839,'N','N','N',0,'N',255,'N','N','N','Y','a14cc951-b5b9-40c8-bc61-fd57a7a2a794','Y','Alias','Defines an alternate method of indicating an account combination.','The Alias field allows you to define a alternate method for referring to a full account combination.  For example, the Account Receivable Account for Garden World may be aliased as GW_AR.','Alias','Y',TO_TIMESTAMP('2014-05-22 10:54:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:54:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',159,10,1000044,0,'LBR')
;

-- May 22, 2014 10:54:41 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN Alias VARCHAR(255) DEFAULT NULL 
;

-- May 22, 2014 10:55:05 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000840,'N','N','N',0,'N',255,'Y','N','N','Y','2108a782-2f71-42ed-8f21-20037fe6ed2a','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-05-22 10:55:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:55:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000044,0,'LBR')
;

-- May 22, 2014 10:55:06 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- May 22, 2014 10:56:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000841,'Y','N','Y',0,'N',60,'Y','N','N','Y','556c0f21-8ea8-47f5-84e8-aa35a3a61f3b','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_TIMESTAMP('2014-05-22 10:56:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:56:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000044,0,'LBR')
;

-- May 22, 2014 10:56:01 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN Name VARCHAR(60) NOT NULL
;

-- May 22, 2014 10:58:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000842,'N','N','N',0,'N',60,'N','N','N','Y','df71e662-52d7-41f8-b0e2-1c6a2e0fc6e1','Y','Password','Password of any length (case sensitive)','The Password for this User.  Passwords are required to identify authorized users.  For iDempiere Users, you can change the password via the Process "Reset Password".','Password','Y',TO_TIMESTAMP('2014-05-22 10:58:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:58:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','Y',498,10,1000044,0,'LBR')
;

-- May 22, 2014 10:58:17 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN Password VARCHAR(60) DEFAULT NULL 
;

-- May 22, 2014 10:58:42 AM BRT
UPDATE AD_Column SET FieldLength=1024,Updated=TO_TIMESTAMP('2014-05-22 10:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000842
;

-- May 22, 2014 10:58:46 AM BRT
INSERT INTO t_alter_column values('lbr_digitalcertificate','Password','VARCHAR(1024)',null,'NULL')
;

-- May 22, 2014 10:59:52 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000843,'Y','N','N',0,'N',7,'N','N','N','Y','183bfc2b-d7f9-4c98-89d4-bf6fabe66756','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_TIMESTAMP('2014-05-22 10:59:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 10:59:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000044,0,'LBR')
;

-- May 22, 2014 10:59:53 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN ValidFrom TIMESTAMP NOT NULL
;

-- May 22, 2014 11:00:17 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000844,'N','N','N',0,'N',7,'N','N','N','Y','69c143bf-cfed-4ff0-8a89-cf7cfe89d971','Y','ValidTo','Valid to including this date (last day)','The Valid To date indicates the last day of a date range','Valid to','Y',TO_TIMESTAMP('2014-05-22 11:00:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 11:00:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',618,15,1000044,0,'LBR')
;

-- May 22, 2014 11:00:18 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN ValidTo TIMESTAMP DEFAULT NULL 
;

-- May 22, 2014 11:01:53 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000845,'Y','N','N',0,'N',1,'N','N','N','Y','bea64459-a7cd-4afa-86f4-d691875abdbf','Y','LBR_NFeEnv','1','Sefaz NF-e Environment','Y',TO_TIMESTAMP('2014-05-22 11:01:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 11:01:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000234,17,1000051,1000044,0,'LBR')
;

-- May 22, 2014 11:01:58 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN LBR_NFeEnv CHAR(1) DEFAULT '1' NOT NULL
;

-- May 22, 2014 11:02:49 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000053,'LBR_CertType','LBR','27fba129-630d-4606-9d9d-b57d902aff86','N','L',0,0,TO_TIMESTAMP('2014-05-22 11:02:49','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-22 11:02:49','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 22, 2014 11:03:16 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000185,1000053,'aa43edf5-2b40-4e6f-ad8b-ade4b89a7f78','ICP',TO_TIMESTAMP('2014-05-22 11:03:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:03:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'ICP TrustStore (JKS)')
;

-- May 22, 2014 11:03:32 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000186,1000053,'200b09fb-b2d7-4129-a5cd-34785dedf412','JKS',TO_TIMESTAMP('2014-05-22 11:03:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:03:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Java Key Store')
;

-- May 22, 2014 11:03:47 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000187,1000053,'572bee37-1ed2-4718-9354-cb1a6739a34a','P11',TO_TIMESTAMP('2014-05-22 11:03:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:03:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'PKCS#11')
;

-- May 22, 2014 11:04:03 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000188,1000053,'0a4c1c13-de43-4c7e-9c24-b6be132f9daf','P12',TO_TIMESTAMP('2014-05-22 11:04:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:04:03','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'PKCS#12')
;

-- May 22, 2014 11:04:29 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CertType',1000240,'Digital Certificate Type','Digital Certificate Type','78ac1d38-b68f-45e5-a5ae-96952cd68da6',TO_TIMESTAMP('2014-05-22 11:04:29','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 11:04:29','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 22, 2014 11:05:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000846,'N','N','N',0,'N',3,'N','N','N','Y','12cc8c0c-5d32-4250-9ae4-50d426a62e42','Y','LBR_CertType','Digital Certificate Type','Y',TO_TIMESTAMP('2014-05-22 11:05:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 11:05:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000240,17,1000053,1000044,0,'LBR')
;

-- May 22, 2014 11:05:06 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN LBR_CertType VARCHAR(3) DEFAULT NULL 
;

-- May 22, 2014 11:06:37 AM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Digital Certificate (LBR)',1000015,'77fe687d-6f56-4722-99eb-4c6d69743fa3',TO_TIMESTAMP('2014-05-22 11:06:37','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 11:06:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- May 22, 2014 11:06:57 AM BRT
UPDATE AD_Table SET AD_Window_ID=1000015,Updated=TO_TIMESTAMP('2014-05-22 11:06:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000044
;

-- May 22, 2014 11:08:31 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000015,10,'N','N','N','N','N','Y','N',0,'14bf0651-5c09-475b-96cb-61739881e1c4','LBR','Digital Certificate','Store Digital Certificates',1000086,0,TO_TIMESTAMP('2014-05-22 11:08:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000044,'B')
;

-- May 22, 2014 11:08:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,22,'N','N',10,'Y',1001520,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','0d47d20d-0127-42a4-9660-0de20b0ecb59','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000830)
;

-- May 22, 2014 11:08:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,22,'N','N',20,'Y',1001521,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','7366a738-462e-4c97-b7b3-23e3ec9cbac3','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000831)
;

-- May 22, 2014 11:08:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,60,'N','N',30,'Y',1001522,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','b1fbbdbc-96a3-4943-96a0-f43a764730d5','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000841)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,255,'N','N',40,'Y',1001523,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','4ac0e560-09bf-41ce-a7e8-4776cc4ad80a','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000840)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,22,'N','N',50,'Y',1001524,'N','LBR','Digital Certificate','d63d1e93-8d26-418b-9c11-7ba586a54b5d','N','N',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000832)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,36,'N','N',60,'Y',1001525,'N','LBR','Digital Certificate','6bfe7c58-2ab3-4fd2-9277-7e4de55c7215','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000833)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,255,'N','N',70,'Y',1001526,'N','The Alias field allows you to define a alternate method for referring to a full account combination.  For example, the Account Receivable Account for Garden World may be aliased as GW_AR.','LBR','Defines an alternate method of indicating an account combination.','Alias','c94292ee-b91a-47e2-a870-ee451c41fe4e','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000839)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,1024,'N','N',80,'Y',1001527,'N','The Password for this User.  Passwords are required to identify authorized users.  For iDempiere Users, you can change the password via the Process "Reset Password".','LBR','Password of any length (case sensitive)','Password','5d780c8f-6c3d-4bf8-a217-abab7d6b4442','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000842)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,7,'N','N',90,'Y',1001528,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','f8e5f2e4-6f7d-4bad-a660-44540d40ddbf','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000843)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,7,'N','N',100,'Y',1001529,'N','The Valid To date indicates the last day of a date range','LBR','Valid to including this date (last day)','Valid to','0e9ac297-e7ca-4bef-aa7f-86b70cf426eb','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000844)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,1,'N','N',110,'Y',1001530,'N','LBR','Sefaz NF-e Environment','c5f68e74-26c8-4016-8997-c70bc830ad0e','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000845)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,3,'N','N',120,'Y',1001531,'N','LBR','Digital Certificate Type','2da2313a-4206-4c6f-9eb4-be57cf52d5df','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000846)
;

-- May 22, 2014 11:08:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000086,1,'N','N',130,'Y',1001532,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','5d7f09dc-b1a1-4a6b-9473-0c5714a9e2cf','N','Y',0,0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 11:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000838)
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001525
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001524
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001532
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001531
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001530
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001522
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001523
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001526
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001527
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001528
;

-- May 22, 2014 11:10:08 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001529
;

-- May 22, 2014 11:10:32 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-22 11:10:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001521
;

-- May 22, 2014 11:11:30 AM BRT
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@LBR_CertType@=''JKS''', XPosition=4,Updated=TO_TIMESTAMP('2014-05-22 11:11:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001530
;

-- May 22, 2014 11:12:08 AM BRT
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-22 11:12:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001526
;

-- May 22, 2014 11:13:07 AM BRT
UPDATE AD_Field SET IsEncrypted='Y', IsSameLine='Y', XPosition=4, ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-22 11:13:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001527
;

-- May 22, 2014 11:13:20 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-22 11:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001529
;

-- May 22, 2014 11:16:24 AM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000015,1000018,'N','Y','N','LBR','Y','Digital Certificate (LBR)','Maintain Digital Certificates','31b214c3-d11a-414d-955a-0eb2e44d40b0','W','Y',0,TO_TIMESTAMP('2014-05-22 11:16:24','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 11:16:24','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- May 22, 2014 11:16:24 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000018, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000018)
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- May 22, 2014 11:16:40 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- May 22, 2014 2:12:21 PM BRT
UPDATE AD_Ref_List SET IsActive='N',Updated=TO_TIMESTAMP('2014-05-22 14:12:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000187
;

-- May 22, 2014 2:13:52 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DC_Org_ID',1000241,'Digital Certificado of Organization','Digital Certificado of Organization','28b2b0f8-e845-4437-a958-adb34cdf3c75',TO_TIMESTAMP('2014-05-22 14:13:52','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 14:13:52','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 22, 2014 2:14:36 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DC_WS_ID',1000242,'Digital Certificado of Transmission','Digital Certificado of Transmission','d652e816-9887-4188-ab11-a5c23df2134b',TO_TIMESTAMP('2014-05-22 14:14:36','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 14:14:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 22, 2014 2:16:35 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000054,'LBR_DigitalCertificate','LBR','ebeb2f1d-6096-44c7-9254-8c0b7445c204','N','T',0,0,TO_TIMESTAMP('2014-05-22 14:16:35','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-22 14:16:35','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 22, 2014 2:17:10 PM BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','c6a7ebd1-3abd-4627-a117-9a989775373f',0,TO_TIMESTAMP('2014-05-22 14:17:10','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-22 14:17:10','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000841,1000832,1000054,1000044,'LBR')
;

-- May 22, 2014 2:17:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000847,'N','N','N',0,'N',10,'N','N','N','Y','d434a37c-d9cd-4cd3-a922-3bbf6a53f120','Y','LBR_DC_Org_ID','Digital Certificado of Organization','Y',TO_TIMESTAMP('2014-05-22 14:17:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 14:17:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000241,18,1000054,228,0,'LBR')
;

-- May 22, 2014 2:17:30 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRDCOrg_ADOrgInfo', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-22 14:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000847
;

-- May 22, 2014 2:17:30 PM BRT
ALTER TABLE AD_OrgInfo ADD COLUMN LBR_DC_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- May 22, 2014 2:17:31 PM BRT
ALTER TABLE AD_OrgInfo ADD CONSTRAINT LBRDCOrg_ADOrgInfo FOREIGN KEY (LBR_DC_Org_ID) REFERENCES lbr_digitalcertificate(lbr_digitalcertificate_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 22, 2014 2:18:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000848,'N','N','N',0,'N',10,'N','N','N','Y','71e27010-9e6c-485a-9bd9-1beacb859351','Y','LBR_DC_WS_ID','Digital Certificado of Transmission','Y',TO_TIMESTAMP('2014-05-22 14:18:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-22 14:18:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000242,18,1000054,228,0,'LBR')
;

-- May 22, 2014 2:18:12 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRDCWS_ADOrgInfo', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-22 14:18:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000848
;

-- May 22, 2014 2:18:12 PM BRT
ALTER TABLE AD_OrgInfo ADD COLUMN LBR_DC_WS_ID NUMERIC(10) DEFAULT NULL 
;

-- May 22, 2014 2:18:12 PM BRT
ALTER TABLE AD_OrgInfo ADD CONSTRAINT LBRDCWS_ADOrgInfo FOREIGN KEY (LBR_DC_WS_ID) REFERENCES lbr_digitalcertificate(lbr_digitalcertificate_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 22, 2014 2:18:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',170,10,'N','N',210,'Y',1001533,'N','LBR','Digital Certificado of Organization','9cf401eb-be34-4673-8ffd-50c42501c4e2','N','Y',0,0,TO_TIMESTAMP('2014-05-22 14:18:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 14:18:35','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000847)
;

-- May 22, 2014 2:18:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',170,10,'N','N',220,'Y',1001534,'N','LBR','Digital Certificado of Transmission','caf93f71-b90f-4523-a0fb-26218ac4053c','N','Y',0,0,TO_TIMESTAMP('2014-05-22 14:18:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-22 14:18:35','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000848)
;

-- May 22, 2014 2:19:47 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=200015,Updated=TO_TIMESTAMP('2014-05-22 14:19:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001533
;

-- May 22, 2014 2:19:58 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=200015,Updated=TO_TIMESTAMP('2014-05-22 14:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001534
;

-- May 22, 2014 2:21:01 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=50002,Updated=TO_TIMESTAMP('2014-05-22 14:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001534
;

-- May 22, 2014 2:21:06 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=50002,Updated=TO_TIMESTAMP('2014-05-22 14:21:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001533
;

-- May 23, 2014 10:03:37 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000849,'Y','N','N',0,'N',22,'N','N','N','Y','adc7a6cc-0447-49f5-ae39-fc25c9b67942','N','C_UOM_ID','Unit of Measure','@#C_UOM_ID@','The UOM defines a unique non monetary Unit of Measure','UOM','Y',TO_TIMESTAMP('2014-05-23 10:03:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-23 10:03:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',215,19,1000034,210,0,'LBR')
;

-- May 23, 2014 10:03:42 AM BRT
UPDATE AD_Column SET FKConstraintName='CUOM_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-23 10:03:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000849
;

-- May 23, 2014 10:03:42 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN C_UOM_ID NUMERIC(10) NOT NULL
;

-- May 23, 2014 10:08:44 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,1,'N','N',110,'Y',1001535,'N','The Processed checkbox indicates that a document has been processed.','LBR','The document has been processed','Processed','ec9e74df-7405-4157-931e-a283fabfdeef','N','Y',0,0,TO_TIMESTAMP('2014-05-23 10:08:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-23 10:08:44','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000676)
;

-- May 23, 2014 10:08:44 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',120,'Y',1001536,'N','The UOM defines a unique non monetary Unit of Measure','LBR','Unit of Measure','UOM','0614b33e-65bd-4a44-bfd5-5b63226dc711','N','Y',0,0,TO_TIMESTAMP('2014-05-23 10:08:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-23 10:08:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000849)
;

-- May 23, 2014 10:09:31 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001535
;

-- May 23, 2014 10:09:31 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001536
;

-- May 23, 2014 10:09:31 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001235
;

-- May 23, 2014 10:09:31 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001236
;

-- May 23, 2014 10:09:31 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001237
;

-- May 23, 2014 10:10:02 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-23 10:10:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001536
;

-- May 23, 2014 10:10:12 AM BRT
UPDATE AD_Field SET IsSameLine='N', XPosition=1,Updated=TO_TIMESTAMP('2014-05-23 10:10:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001235
;

-- May 26, 2014 12:50:00 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_TaxBaseDeductionAmt',1000243,'Tax Base Deduction Amount','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','ccb886f6-8605-4ab2-b8cd-1c4604a5b8d6',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 12:50:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 12:50:00','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 12:51:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000850,'N','N','N',0,'N',10,'N','N','N','Y','a03d97b6-5ff1-41ea-9ee7-dca72d53424a','Y','LBR_TaxBaseDeductionAmt','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','Y',TO_TIMESTAMP('2014-05-26 12:51:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 12:51:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000243,12,1000032,0,'LBR')
;

-- May 26, 2014 12:51:11 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_TaxBaseDeductionAmt NUMERIC DEFAULT NULL 
;

-- May 26, 2014 12:53:41 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_OtherWithholdingsAmt',1000244,'Other Withholdings Amount','Other Withholdings Amount','8ee5baae-af91-4f90-bf20-730aafe2539f',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 12:53:41','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 12:53:41','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 12:54:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000851,'N','N','N',0,'N',10,'N','N','N','Y','ffbb5f2b-101d-4c1e-aa7a-9ce0d1ed6c59','Y','LBR_OtherWithholdingsAmt','Other Withholdings Amount','Y',TO_TIMESTAMP('2014-05-26 12:54:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 12:54:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000244,12,1000032,0,'LBR')
;

-- May 26, 2014 12:54:07 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_OtherWithholdingsAmt NUMERIC DEFAULT NULL 
;

-- May 26, 2014 12:55:35 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_UncondDiscountAmt',1000245,'Unconditioned Discount Amount','Unconditioned Discount Amount','98e60253-3700-4d2d-9cad-3a08385b63f6',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 12:55:35','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 12:55:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 12:56:13 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CondDiscountAmt',1000246,'Conditioned Discount Amount','Conditioned Discount Amount','51b2842a-8de0-4848-9ab6-bfc114043ccb',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 12:56:13','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 12:56:13','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 12:56:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000852,'N','N','N',0,'N',10,'N','N','N','Y','bc8e3191-cfd3-458e-97e3-8bfafce31c19','Y','LBR_UncondDiscountAmt','Unconditioned Discount Amount','Y',TO_TIMESTAMP('2014-05-26 12:56:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 12:56:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000245,12,1000032,0,'LBR')
;

-- May 26, 2014 12:56:37 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_UncondDiscountAmt NUMERIC DEFAULT NULL 
;

-- May 26, 2014 12:56:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000853,'N','N','N',0,'N',10,'N','N','N','Y','532b21cb-9da0-4d95-8b50-04da62af4f38','Y','LBR_CondDiscountAmt','Conditioned Discount Amount','Y',TO_TIMESTAMP('2014-05-26 12:56:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 12:56:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000246,12,1000032,0,'LBR')
;

-- May 26, 2014 12:57:01 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_CondDiscountAmt NUMERIC DEFAULT NULL 
;

-- May 26, 2014 12:58:16 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ISS_WithholdingAmt',1000247,'ISS Withholding Amount','ISS Withholding Amount','3d87d898-4b79-4146-82a7-be849b8427b0',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 12:58:16','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 12:58:16','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 12:58:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000854,'N','N','N',0,'N',10,'N','N','N','Y','e0c69e3a-9858-48af-ad6a-7e5dc09488e2','Y','LBR_ISS_WithholdingAmt','ISS Withholding Amount','Y',TO_TIMESTAMP('2014-05-26 12:58:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 12:58:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000247,12,1000032,0,'LBR')
;

-- May 26, 2014 12:58:37 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_ISS_WithholdingAmt NUMERIC DEFAULT NULL 
;

-- May 26, 2014 1:02:14 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ISS_Chargeability',1000248,'ISS Chargeability Indicator','ISS Chargeability','ee9bf455-a18f-48a3-b0d5-d8e68d601e0b',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 13:02:14','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 13:02:14','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:02:36 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000055,'LBR_ISS_Chargeability','LBR','41589cff-9f45-400c-9510-a231bd629536','N','L',0,0,TO_TIMESTAMP('2014-05-26 13:02:36','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-26 13:02:36','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 26, 2014 1:04:00 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000189,1000055,'eba32107-0698-4070-82a3-dfadcbcea8d7','1',TO_TIMESTAMP('2014-05-26 13:04:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:04:00','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Exigivel')
;

-- May 26, 2014 1:04:14 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000190,1000055,'6a67c7e2-6737-4496-b3ea-1ebe33e926fe','2',TO_TIMESTAMP('2014-05-26 13:04:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:04:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Nao incidencia')
;

-- May 26, 2014 1:04:24 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000191,1000055,'6c3a26c0-3aa3-43c2-9ab3-d644ae8c5b7f','3',TO_TIMESTAMP('2014-05-26 13:04:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:04:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Isencao')
;

-- May 26, 2014 1:04:39 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000192,1000055,'01115569-a083-48d6-860a-69902000ea72','4',TO_TIMESTAMP('2014-05-26 13:04:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:04:39','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Exportacao')
;

-- May 26, 2014 1:04:53 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000193,1000055,'6a23a4de-0636-4bd4-bd2d-62cab8054085','5',TO_TIMESTAMP('2014-05-26 13:04:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:04:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Imunidade')
;

-- May 26, 2014 1:05:36 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000194,1000055,'313dd3a9-61d6-457b-aed3-13621266225d','6',TO_TIMESTAMP('2014-05-26 13:05:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:05:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Exigibilidade suspensa por decisao judicial')
;

-- May 26, 2014 1:05:54 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000195,1000055,'3df03acc-421d-4240-bf9e-da0dcc3adec7','7',TO_TIMESTAMP('2014-05-26 13:05:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:05:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Exigibilidade suspensa por processo administrativo')
;

-- May 26, 2014 1:06:31 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000855,'N','N','N',0,'N',2,'N','N','N','Y','8537bb12-23f7-4b88-9d1d-bb2011d5de26','Y','LBR_ISS_Chargeability','ISS Chargeability Indicator','Y',TO_TIMESTAMP('2014-05-26 13:06:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 13:06:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000248,17,1000055,1000032,0,'LBR')
;

-- May 26, 2014 1:06:33 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_ISS_Chargeability VARCHAR(2) DEFAULT NULL 
;

-- May 26, 2014 1:08:58 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ServiceCode',1000249,'Service Code','Service Code','3d32b37b-fb82-433b-862d-36b205c53c25',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 13:08:58','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 13:08:58','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:09:27 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000856,'N','N','N',0,'N',20,'N','N','N','Y','be27b2e3-2a6e-4662-b611-59d3351f9bf6','Y','LBR_ServiceCode','Service Code','Y',TO_TIMESTAMP('2014-05-26 13:09:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 13:09:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000249,10,1000032,0,'LBR')
;

-- May 26, 2014 1:09:29 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_ServiceCode VARCHAR(20) DEFAULT NULL 
;

-- May 26, 2014 1:13:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000857,'N','N','N',0,'N',10,'N','N','N','Y','e1209a39-3c48-4701-b7a3-79ad0848102f','Y','C_Country_ID','Country ','The Country defines a Country.  Each Country must be defined before it can be used in any document.','Country','Y',TO_TIMESTAMP('2014-05-26 13:13:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 13:13:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',192,30,156,1000032,0,'LBR')
;

-- May 26, 2014 1:13:09 PM BRT
UPDATE AD_Column SET FKConstraintName='CCountry_LBRDocLineISSQN', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000857
;

-- May 26, 2014 1:13:09 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN C_Country_ID NUMERIC(10) DEFAULT NULL 
;

-- May 26, 2014 1:13:10 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT CCountry_LBRDocLineISSQN FOREIGN KEY (C_Country_ID) REFERENCES c_country(c_country_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 26, 2014 1:15:10 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IncidenceRegion_ID',1000250,'The Region identifies a unique Region for this Country.','Incidence Region','Identifies a geographical Region','Incidence Region','57014b7d-7093-4c4a-abc0-7b2705122689',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 13:15:10','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 13:15:10','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:15:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000858,'N','N','N',0,'N',10,'N','N','N','Y','fc3856ac-2272-43c8-a08d-6dc9c876b58c','Y','LBR_IncidenceRegion_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Incidence Region','Y',TO_TIMESTAMP('2014-05-26 13:15:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 13:15:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000250,18,157,1000032,1000001,0,'LBR')
;

-- May 26, 2014 1:16:00 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRIncidenceRegion_LBRDocLineI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-26 13:16:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000858
;

-- May 26, 2014 1:16:00 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_IncidenceRegion_ID NUMERIC(10) DEFAULT NULL 
;

-- May 26, 2014 1:16:00 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT LBRIncidenceRegion_LBRDocLineI FOREIGN KEY (LBR_IncidenceRegion_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 26, 2014 1:16:55 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IncidenceCity_ID',1000251,'City in a country','Incidence City','Incidence City','Incidence City','0b56c986-9696-4c7c-be2b-49cef06f8a81',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 13:16:55','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 13:16:55','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:17:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000859,'N','N','N',0,'N',10,'N','N','N','Y','d50eea7d-5407-4bcb-952e-ad9549785def','Y','LBR_IncidenceCity_ID','Incidence City','City in a country','Incidence City','Y',TO_TIMESTAMP('2014-05-26 13:17:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 13:17:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000251,30,1000011,1000032,52045,0,'LBR')
;

-- May 26, 2014 1:17:37 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRIncidenceCity_LBRDocLineISS', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-26 13:17:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000859
;

-- May 26, 2014 1:17:37 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_IncidenceCity_ID NUMERIC(10) DEFAULT NULL 
;

-- May 26, 2014 1:17:37 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT LBRIncidenceCity_LBRDocLineISS FOREIGN KEY (LBR_IncidenceCity_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 26, 2014 1:19:43 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000860,'N','N','N',0,'N',30,'Y','N','N','Y','02680877-6315-4ed4-bbb0-b0b0b40d82f1','Y','ProcessName','Name of the Process','Process Name','Y',TO_TIMESTAMP('2014-05-26 13:19:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 13:19:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',54115,10,1000032,0,'LBR')
;

-- May 26, 2014 1:19:44 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN ProcessName VARCHAR(30) DEFAULT NULL 
;

-- May 26, 2014 1:23:00 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_TaxIncentive',1000252,'Tax Incentive Indicator','Tax Incentive','feb1baee-c927-43ab-a5f9-52e57f45ebbf',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-26 13:23:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-26 13:23:00','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:23:16 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000056,'LBR_TaxIncentive','LBR','eb1654c8-aba8-4f1f-82af-b36e0f65db32','N','L',0,0,TO_TIMESTAMP('2014-05-26 13:23:16','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-26 13:23:16','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 26, 2014 1:23:31 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000196,1000056,'c1b54bbc-17df-447b-b4ea-19287aa2e60f','1',TO_TIMESTAMP('2014-05-26 13:23:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:23:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Yes')
;

-- May 26, 2014 1:23:39 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000197,1000056,'cfaffd41-8fd0-4b28-a048-c3c5c126beb5','2',TO_TIMESTAMP('2014-05-26 13:23:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-26 13:23:39','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'No')
;

-- May 26, 2014 1:24:04 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000861,'N','N','N',0,'N',1,'N','N','N','Y','8dd679f5-e81f-48b1-8113-b214d970f99f','Y','LBR_TaxIncentive','Tax Incentive Indicator','Y',TO_TIMESTAMP('2014-05-26 13:24:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-26 13:24:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000252,17,1000056,1000032,0,'LBR')
;

-- May 26, 2014 1:24:06 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_TaxIncentive CHAR(1) DEFAULT NULL 
;

-- May 26, 2014 1:25:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,1,'N','N',90,'Y',1001537,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','e3ace044-8b61-49c0-8376-142aba85dbf1','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000594,TO_TIMESTAMP('2014-05-26 13:25:17','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',100,'Y',1001538,'N','LBR','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','25accae8-71da-4dd5-8c26-cfa1ccd1d3d2','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000850,TO_TIMESTAMP('2014-05-26 13:25:17','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',110,'Y',1001539,'N','LBR','Other Withholdings Amount','94252aa8-4d15-425f-8268-09170a59aca9','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1000851,TO_TIMESTAMP('2014-05-26 13:25:17','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',120,'Y',1001540,'N','LBR','Unconditioned Discount Amount','2fb7bd5b-2611-4bd2-81b5-95a5137db3d5','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1000852,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',130,'Y',1001541,'N','LBR','Conditioned Discount Amount','7ab9bbe1-34af-49b9-a0da-2f7d09ebb8ae','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1000853,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',140,'Y',1001542,'N','LBR','ISS Withholding Amount','69ac71a3-e9d3-4027-b01b-8680688079f6','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000854,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,2,'N','N',150,'Y',1001543,'N','LBR','ISS Chargeability Indicator','4efeae77-ffe6-4afb-bc04-de3b114b8ebc','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1000855,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,20,'N','N',160,'Y',1001544,'N','LBR','Service Code','6a4157ac-c546-4b3c-adc3-bc501dbc98c8','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1000856,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',170,'Y',1001545,'N','The Country defines a Country.  Each Country must be defined before it can be used in any document.','LBR','Country ','Country','3c92ad58-740c-48ab-b5ef-ce0e4431335a','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1000857,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',180,'Y',1001546,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Incidence Region','e0df67b9-d842-4a86-b254-d20b55770d10','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1000858,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,10,'N','N',190,'Y',1001547,'N','City in a country','LBR','Incidence City','Incidence City','f52adee2-cc0d-4261-bd8a-6b5b63125c1d','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1000859,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,30,'N','N',200,'Y',1001548,'N','LBR','Name of the Process','Process Name','c8fd406e-36df-4385-9046-6b7936f3bb96','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1000860,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:25:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000077,1,'N','N',210,'Y',1001549,'N','LBR','Tax Incentive Indicator','15fda9f7-5c4a-4c04-865b-599d45910884','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1000861,TO_TIMESTAMP('2014-05-26 13:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001537
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001538
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001539
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001540
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001541
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001542
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001543
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001544
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001545
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001546
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001547
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001548
;

-- May 26, 2014 1:29:44 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001549
;

-- May 26, 2014 1:32:03 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 13:32:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001539
;

-- May 26, 2014 1:32:33 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 13:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001541
;

-- May 26, 2014 1:32:45 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 13:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001543
;

-- May 26, 2014 1:33:07 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 13:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001547
;

-- May 26, 2014 1:33:24 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 13:33:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001549
;

-- May 26, 2014 1:54:53 PM BRT
UPDATE AD_Column SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-05-26 13:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000857
;

-- May 26, 2014 2:02:31 PM BRT
UPDATE AD_Column SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-05-26 14:02:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000587
;

-- May 26, 2014 2:18:05 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 14:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001545
;

-- May 26, 2014 2:18:59 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 14:18:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001546
;

-- May 26, 2014 2:19:05 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 14:19:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001547
;

-- May 26, 2014 2:21:09 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 14:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001548
;

-- May 26, 2014 3:16:58 PM BRT
UPDATE AD_Tab SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-05-26 15:16:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000032
;

-- May 26, 2014 3:48:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,1,'N','N',90,'Y',1001550,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','47dadc11-ee95-44a6-831b-a9865a6baa71','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000594,TO_TIMESTAMP('2014-05-26 15:48:50','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',100,'Y',1001551,'N','LBR','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','3e25572d-a65e-4c94-8d65-e4e239cdf0f2','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000850,TO_TIMESTAMP('2014-05-26 15:48:50','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',110,'Y',1001552,'N','LBR','Other Withholdings Amount','6b07f355-30d5-4bac-91e1-a0f49dbc5765','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1000851,TO_TIMESTAMP('2014-05-26 15:48:50','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',120,'Y',1001553,'N','LBR','Unconditioned Discount Amount','f3ff94b9-1bfa-4239-b714-8c0207663ac2','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1000852,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',130,'Y',1001554,'N','LBR','Conditioned Discount Amount','d758cb8d-37f1-4493-a835-cb0c3eb930a5','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1000853,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',140,'Y',1001555,'N','LBR','ISS Withholding Amount','1761a7fa-59f9-4a3a-b661-f43dce3ead69','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000854,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,2,'N','N',150,'Y',1001556,'N','LBR','ISS Chargeability Indicator','ddae960c-9e35-47ad-a190-06cd49c21854','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1000855,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,20,'N','N',160,'Y',1001557,'N','LBR','Service Code','636c3808-c8ea-4446-9e44-3f47a4ef3d5d','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1000856,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',170,'Y',1001558,'N','The Country defines a Country.  Each Country must be defined before it can be used in any document.','LBR','Country ','Country','50b3f1d5-860f-4e1f-b639-a852a9b147b3','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1000857,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',180,'Y',1001559,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Incidence Region','4854d45c-47d3-4ae0-a501-6a184ecd5ddd','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1000858,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,10,'N','N',190,'Y',1001560,'N','City in a country','LBR','Incidence City','Incidence City','c81db1fb-fb68-4a28-ba8f-43c0a103e51c','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1000859,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,30,'N','N',200,'Y',1001561,'N','LBR','Name of the Process','Process Name','0216d452-4915-4e63-8b8b-a0972cfb256e','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1000860,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:48:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000032,1,'N','N',210,'Y',1001562,'N','LBR','Tax Incentive Indicator','57febe62-06af-4d73-8625-8b8005a66ea9','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1000861,TO_TIMESTAMP('2014-05-26 15:48:51','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001550
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001551
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001552
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001553
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001554
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001555
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001556
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001557
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001558
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001559
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001560
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001561
;

-- May 26, 2014 3:49:05 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001562
;

-- May 26, 2014 3:50:09 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001552
;

-- May 26, 2014 3:50:41 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:50:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001554
;

-- May 26, 2014 3:51:06 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:51:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001556
;

-- May 26, 2014 3:51:46 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 15:51:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001558
;

-- May 26, 2014 3:53:04 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 15:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001559
;

-- May 26, 2014 3:54:01 PM BRT
UPDATE AD_Field SET IsSameLine='Y', IsCentrallyMaintained='N', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:54:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001560
;

-- May 26, 2014 3:54:40 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 15:54:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001561
;

-- May 26, 2014 3:55:18 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:55:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001562
;

-- May 26, 2014 3:57:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,1,'N','N',90,'Y',1001563,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','96d84d49-7cbf-4fd1-8405-55d65892234f','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000594,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',100,'Y',1001564,'N','LBR','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','ff6fc258-6dfb-4ae3-adf7-832bf65b736a','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000850,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',110,'Y',1001565,'N','LBR','Other Withholdings Amount','d3c3ff52-e6a7-4c5e-b745-b7c33fa84506','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1000851,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',120,'Y',1001566,'N','LBR','Unconditioned Discount Amount','3ca81604-f4c4-4c36-9f32-4ed1fbe352d7','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1000852,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',130,'Y',1001567,'N','LBR','Conditioned Discount Amount','745c0340-e62a-464f-81f0-6f86e10b4890','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1000853,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',140,'Y',1001568,'N','LBR','ISS Withholding Amount','d7d4277a-37b6-465d-982c-3979c764ed27','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000854,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,2,'N','N',150,'Y',1001569,'N','LBR','ISS Chargeability Indicator','f57c5cea-cda8-4d2f-b125-2c7f901d5763','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1000855,TO_TIMESTAMP('2014-05-26 15:57:08','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,20,'N','N',160,'Y',1001570,'N','LBR','Service Code','240d79fa-3557-4a72-807e-7f853c6282ab','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1000856,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',170,'Y',1001571,'N','The Country defines a Country.  Each Country must be defined before it can be used in any document.','LBR','Country ','Country','43a097af-f1ec-4931-a735-dd63f384b65b','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1000857,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',180,'Y',1001572,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Incidence Region','4424f360-0352-405b-a287-d3c6182f81c1','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1000858,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,10,'N','N',190,'Y',1001573,'N','City in a country','LBR','Incidence City','Incidence City','a8b55a80-4120-4047-a36a-59c0d404c850','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1000859,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,30,'N','N',200,'Y',1001574,'N','LBR','Name of the Process','Process Name','41f83dfc-801c-4aa9-866d-2b7719d4f3e0','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1000860,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000046,1,'N','N',210,'Y',1001575,'N','LBR','Tax Incentive Indicator','b5de41e7-0f6c-4fc0-b1b6-65e54285608b','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1000861,TO_TIMESTAMP('2014-05-26 15:57:09','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001563
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001564
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001565
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001566
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001567
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001568
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001569
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001570
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001571
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001572
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001573
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001574
;

-- May 26, 2014 3:57:31 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001575
;

-- May 26, 2014 3:58:24 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:58:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001565
;

-- May 26, 2014 3:58:41 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:58:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001567
;

-- May 26, 2014 3:58:59 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 15:58:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001569
;

-- May 26, 2014 3:59:27 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 15:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001571
;

-- May 26, 2014 4:00:07 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001572
;

-- May 26, 2014 4:00:38 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001573
;

-- May 26, 2014 4:01:20 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:01:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001573
;

-- May 26, 2014 4:01:36 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001574
;

-- May 26, 2014 4:02:04 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:02:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001575
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,1,'N','N',90,'Y',1001576,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','1742b888-6a3d-41c1-b9ba-2cfcb8e930c7','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000594,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',100,'Y',1001577,'N','LBR','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','898a06b4-f266-4e56-90b0-b66f711c9495','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000850,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',110,'Y',1001578,'N','LBR','Other Withholdings Amount','0dbd75e3-ad34-4d58-a9c8-e5a28efdc68a','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1000851,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',120,'Y',1001579,'N','LBR','Unconditioned Discount Amount','3abfcd3d-1c38-479a-8bd5-3acb8bd1538c','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1000852,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',130,'Y',1001580,'N','LBR','Conditioned Discount Amount','29675566-6cb9-48a8-b66d-d64117dfee67','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1000853,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',140,'Y',1001581,'N','LBR','ISS Withholding Amount','b85843e7-935c-4acb-bfa6-9aa3315b406e','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000854,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,2,'N','N',150,'Y',1001582,'N','LBR','ISS Chargeability Indicator','4e4a34c2-7e99-4762-8e08-8edef2988fdf','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1000855,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,20,'N','N',160,'Y',1001583,'N','LBR','Service Code','4997a13e-e0b5-4b87-8989-a6cd7cccf04f','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1000856,TO_TIMESTAMP('2014-05-26 16:02:35','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',170,'Y',1001584,'N','The Country defines a Country.  Each Country must be defined before it can be used in any document.','LBR','Country ','Country','9e2e8c68-fd5f-465a-ac41-77c238788639','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1000857,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',180,'Y',1001585,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Incidence Region','4b9dff52-0f61-4a0f-bc58-5b3689a648b9','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1000858,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,10,'N','N',190,'Y',1001586,'N','City in a country','LBR','Incidence City','Incidence City','c13fd389-1c85-470f-a186-7a3d8482b645','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1000859,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,30,'N','N',200,'Y',1001587,'N','LBR','Name of the Process','Process Name','3a8d857a-1100-4a86-8a75-c33500d4f480','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1000860,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000039,1,'N','N',210,'Y',1001588,'N','LBR','Tax Incentive Indicator','2f826445-6533-4df1-ab05-637baaebd43c','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1000861,TO_TIMESTAMP('2014-05-26 16:02:36','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:02:46 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001576
;

-- May 26, 2014 4:02:46 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001577
;

-- May 26, 2014 4:02:46 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001578
;

-- May 26, 2014 4:02:46 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001579
;

-- May 26, 2014 4:02:46 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001580
;

-- May 26, 2014 4:02:46 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001581
;

-- May 26, 2014 4:02:47 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001582
;

-- May 26, 2014 4:02:47 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001583
;

-- May 26, 2014 4:02:47 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001584
;

-- May 26, 2014 4:02:47 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001585
;

-- May 26, 2014 4:02:47 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001586
;

-- May 26, 2014 4:02:47 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001587
;

-- May 26, 2014 4:02:47 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001588
;

-- May 26, 2014 4:03:33 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:03:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001578
;

-- May 26, 2014 4:03:50 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001580
;

-- May 26, 2014 4:04:03 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:04:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001582
;

-- May 26, 2014 4:04:34 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:04:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001584
;

-- May 26, 2014 4:05:03 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001585
;

-- May 26, 2014 4:05:30 PM BRT
UPDATE AD_Field SET IsSameLine='Y', IsCentrallyMaintained='N', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001586
;

-- May 26, 2014 4:06:02 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:06:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001587
;

-- May 26, 2014 4:07:01 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:07:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001588
;

-- May 26, 2014 4:07:06 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-26 16:07:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001588
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,1,'N','N',90,'Y',1001589,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','c5d02348-8384-4da2-bf02-fcddfba38a6f','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000594,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',100,'Y',1001590,'N','LBR','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','76efab5a-baff-4119-acc2-5c44ca9e046c','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000850,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',110,'Y',1001591,'N','LBR','Other Withholdings Amount','30b69ffd-61d0-40c6-a9dc-f2b0e1e56158','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1000851,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',120,'Y',1001592,'N','LBR','Unconditioned Discount Amount','96a95f9a-d08e-4f35-8856-5fac4f6c8b80','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1000852,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',130,'Y',1001593,'N','LBR','Conditioned Discount Amount','52195e23-b905-4f96-9506-4fe1b618cf56','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1000853,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',140,'Y',1001594,'N','LBR','ISS Withholding Amount','bdef86aa-2e55-4f49-8d6b-288e0c6c194e','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000854,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,2,'N','N',150,'Y',1001595,'N','LBR','ISS Chargeability Indicator','b245e155-9803-4785-99a7-de69f4361568','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1000855,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,20,'N','N',160,'Y',1001596,'N','LBR','Service Code','3467b5ec-d54e-4ae4-8337-cab43ccbde52','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1000856,TO_TIMESTAMP('2014-05-26 16:08:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',170,'Y',1001597,'N','The Country defines a Country.  Each Country must be defined before it can be used in any document.','LBR','Country ','Country','a7d8f814-9c04-45cd-9bfa-75abd3728d01','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1000857,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',180,'Y',1001598,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Incidence Region','f3c931a9-6a99-4539-8e22-7272ccb164ab','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1000858,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,10,'N','N',190,'Y',1001599,'N','City in a country','LBR','Incidence City','Incidence City','868bdea3-00bf-4a4a-8598-841d3957b021','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1000859,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,30,'N','N',200,'Y',1001600,'N','LBR','Name of the Process','Process Name','ed4b90b4-fe3f-4b3f-9c0e-09b844ddbb33','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1000860,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000053,1,'N','N',210,'Y',1001601,'N','LBR','Tax Incentive Indicator','a3e80867-e77c-46fd-9673-f353f935913f','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1000861,TO_TIMESTAMP('2014-05-26 16:08:06','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001589
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001590
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001591
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001592
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001593
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001594
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001595
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001596
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001597
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001598
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001599
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001600
;

-- May 26, 2014 4:08:16 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001601
;

-- May 26, 2014 4:08:33 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001591
;

-- May 26, 2014 4:08:41 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:08:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001593
;

-- May 26, 2014 4:08:50 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:08:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001595
;

-- May 26, 2014 4:08:59 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:08:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001597
;

-- May 26, 2014 4:09:47 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:09:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001598
;

-- May 26, 2014 4:10:24 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:10:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001599
;

-- May 26, 2014 4:10:49 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001599
;

-- May 26, 2014 4:10:55 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001600
;

-- May 26, 2014 4:11:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,1,'N','N',90,'Y',1001602,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','f3aefdad-ea15-4d74-bead-5cfa5578c33a','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000594,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',100,'Y',1001603,'N','LBR','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','7963b9aa-d7a4-4b17-901c-0d426f77c216','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000850,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',110,'Y',1001604,'N','LBR','Other Withholdings Amount','d2b0e50e-dfb2-4b43-895d-5303257900b4','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1000851,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',120,'Y',1001605,'N','LBR','Unconditioned Discount Amount','7aebaab4-6f0f-4be9-a0a5-ec9fbb8efa43','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1000852,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',130,'Y',1001606,'N','LBR','Conditioned Discount Amount','2707dd38-18d6-4cef-b85c-8571a48e2531','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1000853,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',140,'Y',1001607,'N','LBR','ISS Withholding Amount','019ae0e7-28ae-41a3-b895-be3df6168554','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000854,TO_TIMESTAMP('2014-05-26 16:11:42','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,2,'N','N',150,'Y',1001608,'N','LBR','ISS Chargeability Indicator','c22d2075-66d2-40fe-aeb4-388b3386c568','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1000855,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,20,'N','N',160,'Y',1001609,'N','LBR','Service Code','e3eaf06b-af26-4f88-9c10-ee7e0d247ca1','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1000856,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',170,'Y',1001610,'N','The Country defines a Country.  Each Country must be defined before it can be used in any document.','LBR','Country ','Country','013fa535-00ed-4134-bc71-c0d7253431a6','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1000857,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',180,'Y',1001611,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Incidence Region','7b8bf4dd-9159-4eef-8606-988422df63d2','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1000858,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,10,'N','N',190,'Y',1001612,'N','City in a country','LBR','Incidence City','Incidence City','36c97e14-b9b8-4e9b-8057-15284280f5ae','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1000859,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,30,'N','N',200,'Y',1001613,'N','LBR','Name of the Process','Process Name','5ac29525-0240-4f02-b01b-e82dc0e1bede','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1000860,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000066,1,'N','N',210,'Y',1001614,'N','LBR','Tax Incentive Indicator','e470f78e-e870-4d7e-9973-ff39718f7a4f','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1000861,TO_TIMESTAMP('2014-05-26 16:11:43','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001602
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001603
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001604
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001605
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001606
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001607
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001608
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001609
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001610
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001611
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001612
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001613
;

-- May 26, 2014 4:11:54 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001614
;

-- May 26, 2014 4:12:12 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:12:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001604
;

-- May 26, 2014 4:12:21 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:12:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001606
;

-- May 26, 2014 4:12:29 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:12:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001608
;

-- May 26, 2014 4:12:37 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:12:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001610
;

-- May 26, 2014 4:13:19 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001611
;

-- May 26, 2014 4:13:52 PM BRT
UPDATE AD_Field SET IsSameLine='Y', IsCentrallyMaintained='N', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:13:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001612
;

-- May 26, 2014 4:14:36 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:14:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001613
;

-- May 26, 2014 4:15:00 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001614
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,1,'N','N',90,'Y',1001615,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','bd77ecd5-a869-4360-9143-b37f777928dd','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000594,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',100,'Y',1001616,'N','LBR','Defines the Tax Base Deduction Amount','Tax Base Deduction Amount','8b0bf71a-7459-405d-af26-be7f9e617061','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000850,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',110,'Y',1001617,'N','LBR','Other Withholdings Amount','9eb79f59-1280-4c77-9b59-2d8ce5624005','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1000851,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',120,'Y',1001618,'N','LBR','Unconditioned Discount Amount','b2692286-1ab1-4735-b252-bda77e59156a','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1000852,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',130,'Y',1001619,'N','LBR','Conditioned Discount Amount','ce989766-ce3b-483b-be4f-8d78ed750c80','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1000853,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',140,'Y',1001620,'N','LBR','ISS Withholding Amount','b16e3bba-9357-4ac4-9d0c-03272a9d4ed9','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000854,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,2,'N','N',150,'Y',1001621,'N','LBR','ISS Chargeability Indicator','a3897861-8080-441d-9685-ba7cd4f0a99f','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1000855,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,20,'N','N',160,'Y',1001622,'N','LBR','Service Code','b2992373-bac8-4bb4-8ea8-6ebf059d3ea8','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1000856,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',170,'Y',1001623,'N','The Country defines a Country.  Each Country must be defined before it can be used in any document.','LBR','Country ','Country','519c5993-f22f-4c34-8151-7ff4498d0525','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1000857,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',180,'Y',1001624,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Incidence Region','9dbb202d-1d17-4e92-acb7-585f988e1de5','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1000858,TO_TIMESTAMP('2014-05-26 16:15:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,10,'N','N',190,'Y',1001625,'N','City in a country','LBR','Incidence City','Incidence City','2cddac15-bb88-4bc4-bac7-1583a19e95e2','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1000859,TO_TIMESTAMP('2014-05-26 16:15:47','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,30,'N','N',200,'Y',1001626,'N','LBR','Name of the Process','Process Name','d9a42cbb-d933-4962-ad59-b0fc0765139b','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1000860,TO_TIMESTAMP('2014-05-26 16:15:47','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000067,1,'N','N',210,'Y',1001627,'N','LBR','Tax Incentive Indicator','7d9a874b-c6bd-4db5-b349-7cc4dc16b235','N','Y',0,0,0,TO_TIMESTAMP('2014-05-26 16:15:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1000861,TO_TIMESTAMP('2014-05-26 16:15:47','YYYY-MM-DD HH24:MI:SS'))
;

-- May 26, 2014 4:15:54 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001615
;

-- May 26, 2014 4:15:54 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001616
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001617
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001618
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001619
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001620
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001621
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001622
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001623
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001624
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001625
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001626
;

-- May 26, 2014 4:15:55 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001627
;

-- May 26, 2014 4:16:33 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:16:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001617
;

-- May 26, 2014 4:17:00 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:17:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001619
;

-- May 26, 2014 4:17:09 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:17:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001621
;

-- May 26, 2014 4:17:16 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:17:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001623
;

-- May 26, 2014 4:18:01 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:18:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001624
;

-- May 26, 2014 4:18:35 PM BRT
UPDATE AD_Field SET IsSameLine='Y', IsCentrallyMaintained='N', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:18:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001625
;

-- May 26, 2014 4:19:26 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-26 16:19:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001626
;

-- May 26, 2014 4:19:48 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-26 16:19:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001627
;

-- May 26, 2014 4:20:34 PM BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_TIMESTAMP('2014-05-26 16:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000618
;

-- May 26, 2014 4:30:02 PM BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_TIMESTAMP('2014-05-26 16:30:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000617
;

-- May 28, 2014 8:58:17 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BP_Pickup_ID',1000253,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Pickup)','Identifies a Business Partner','Business Partner (Pickup)','d586142d-5b07-4cf8-8fd1-efd9320167ff',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-28 08:58:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-28 08:58:17','YYYY-MM-DD HH24:MI:SS'))
;

-- May 28, 2014 8:58:45 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BP_Ship_ID',1000254,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Ship)','Identifies a Business Partner','Business Partner (Ship)','12a6a832-4234-4f4e-a437-cacd0eb640f3',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-28 08:58:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-28 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- May 28, 2014 9:00:46 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000862,'N','N','N',0,'N',22,'N','N','N','Y','6da49fa7-c9d1-430f-90a2-fb3da0fb91b1','Y','LBR_BP_Pickup_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Pickup)','Y',TO_TIMESTAMP('2014-05-28 09:00:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-28 09:00:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000253,30,138,1000033,0,'LBR')
;

-- May 28, 2014 9:00:52 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRBPPickup_LBRNotaFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-28 09:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000862
;

-- May 28, 2014 9:00:52 AM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_BP_Pickup_ID NUMERIC(10) DEFAULT NULL 
;

-- May 28, 2014 9:00:54 AM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBRBPPickup_LBRNotaFiscal FOREIGN KEY (LBR_BP_Pickup_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 28, 2014 9:01:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000863,'N','N','N',0,'N',22,'N','N','N','Y','ce04b4d8-5414-4680-8cac-56545e61e9cd','Y','LBR_BP_Ship_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Ship)','Y',TO_TIMESTAMP('2014-05-28 09:01:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-28 09:01:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000254,30,138,1000033,0,'LBR')
;

-- May 28, 2014 9:01:46 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRBPShip_LBRNotaFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-28 09:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000863
;

-- May 28, 2014 9:01:46 AM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_BP_Ship_ID NUMERIC(10) DEFAULT NULL 
;

-- May 28, 2014 9:01:46 AM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBRBPShip_LBRNotaFiscal FOREIGN KEY (LBR_BP_Ship_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 28, 2014 9:02:05 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000068,7,'N','N',400,'Y',1001628,'N','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','LBR','Accounting Date','Account Date','d8e93b32-5b05-4725-a527-3d6fbfca78a7','N','Y',0,0,0,TO_TIMESTAMP('2014-05-28 09:02:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',360,0,2,1000822,TO_TIMESTAMP('2014-05-28 09:02:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 28, 2014 9:02:05 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000068,22,'N','N',410,'Y',1001629,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner (Pickup)','b62665bd-6714-471a-b471-442f7ba03105','N','Y',0,0,0,TO_TIMESTAMP('2014-05-28 09:02:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',370,0,2,1000862,TO_TIMESTAMP('2014-05-28 09:02:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 28, 2014 9:02:05 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000068,22,'N','N',420,'Y',1001630,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner (Ship)','ea822081-0fdb-4560-a9f7-8bbe56d961c6','N','Y',0,0,0,TO_TIMESTAMP('2014-05-28 09:02:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',380,0,2,1000863,TO_TIMESTAMP('2014-05-28 09:02:05','YYYY-MM-DD HH24:MI:SS'))
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001628
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001629
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001214
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001630
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001215
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001397
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001216
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001217
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001218
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001462
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001463
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001224
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- May 28, 2014 9:02:57 AM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001507
;

-- May 28, 2014 9:03:31 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000011,Updated=TO_TIMESTAMP('2014-05-28 09:03:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001629
;

-- May 28, 2014 9:03:43 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-28 09:03:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001214
;

-- May 28, 2014 9:03:50 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000011,Updated=TO_TIMESTAMP('2014-05-28 09:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001630
;

-- May 28, 2014 9:09:01 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_BP_Pickup_ID@ > 0',Updated=TO_TIMESTAMP('2014-05-28 09:09:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001214
;

-- May 28, 2014 9:09:20 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_BP_Ship_ID@ > 0',Updated=TO_TIMESTAMP('2014-05-28 09:09:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001215
;

-- May 28, 2014 9:11:16 AM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_BPartner_Location.C_BPartner_ID=@LBR_BP_Pickup_ID@ AND C_BPartner_Location.IsShipTo=''Y'' AND C_BPartner_Location.IsActive=''Y''',1000007,'LBR','LBR_BP_Pickup_Location Ship To','S','91f9b67f-e80c-4c11-b609-3c3dd946d8df',0,0,TO_TIMESTAMP('2014-05-28 09:11:16','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-28 09:11:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- May 28, 2014 9:11:33 AM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_BPartner_Location.C_BPartner_ID=@LBR_BP_Ship_ID@ AND C_BPartner_Location.IsShipTo=''Y'' AND C_BPartner_Location.IsActive=''Y''',1000008,'LBR','LBR_BP_Ship_Location Ship To','S','ff3d148a-d90c-4630-bec4-478b92a4e05a',0,0,TO_TIMESTAMP('2014-05-28 09:11:33','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-28 09:11:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- May 28, 2014 9:12:14 AM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000007,Updated=TO_TIMESTAMP('2014-05-28 09:12:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000630
;

-- May 28, 2014 9:12:27 AM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000008,Updated=TO_TIMESTAMP('2014-05-28 09:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000631
;

-- May 28, 2014 9:13:02 AM BRT
UPDATE AD_Column SET MandatoryLogic='@LBR_BP_Ship_ID@ > 0',Updated=TO_TIMESTAMP('2014-05-28 09:13:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000631
;

-- May 28, 2014 9:13:19 AM BRT
UPDATE AD_Column SET MandatoryLogic='@LBR_BP_Pickup_ID@ > 0',Updated=TO_TIMESTAMP('2014-05-28 09:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000630
;

-- May 30, 2014 12:47:57 PM BRT
UPDATE AD_Table SET IsDeleteable='Y',Updated=TO_TIMESTAMP('2014-05-30 12:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000039
;

-- May 30, 2014 12:48:26 PM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2014-05-30 12:48:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000081
;

-- May 30, 2014 3:37:46 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_RegionCode',1000255,'Region Code used for issue Nota Fiscal.','Region Code for Nota Fiscal','NF Region Code','2aab1837-5832-4ba2-942c-f87cfc0e9e3f',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-05-30 15:37:46','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-30 15:37:46','YYYY-MM-DD HH24:MI:SS'))
;

-- May 30, 2014 3:39:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000864,'N','N','N',0,'N',2,'N','N','N','Y','e9b1a950-fa71-4834-879a-e435cbf68d37','Y','LBR_RegionCode','Region Code used for issue Nota Fiscal.','Region Code for Nota Fiscal','Y',TO_TIMESTAMP('2014-05-30 15:39:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-30 15:39:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000255,10,164,0,'LBR')
;

-- May 30, 2014 3:39:35 PM BRT
ALTER TABLE C_Region ADD COLUMN LBR_RegionCode VARCHAR(2) DEFAULT NULL 
;

-- May 30, 2014 3:40:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',136,36,'N','N','Y',1001631,'N','D','C_Region_UU','1db1d3c0-63a3-4ed5-aa61-624920014418','N','N',0,0,0,TO_TIMESTAMP('2014-05-30 15:40:29','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,60747,TO_TIMESTAMP('2014-05-30 15:40:29','YYYY-MM-DD HH24:MI:SS'))
;

-- May 30, 2014 3:40:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',136,2,'N','N',90,'Y',1001632,'N','Region Code used for issue Nota Fiscal.','LBR','Region Code for Nota Fiscal','f12803b2-b3b0-494e-8bfe-2991a9bce69b','N','Y',0,0,0,TO_TIMESTAMP('2014-05-30 15:40:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000864,TO_TIMESTAMP('2014-05-30 15:40:29','YYYY-MM-DD HH24:MI:SS'))
;

-- May 30, 2014 3:42:10 PM BRT
UPDATE C_Region SET LBR_RegionCode='12',Updated=TO_TIMESTAMP('2014-05-30 15:42:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=441
;

-- May 30, 2014 3:42:23 PM BRT
UPDATE C_Region SET LBR_RegionCode='27',Updated=TO_TIMESTAMP('2014-05-30 15:42:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=442
;

-- May 30, 2014 3:42:30 PM BRT
UPDATE C_Region SET LBR_RegionCode='13',Updated=TO_TIMESTAMP('2014-05-30 15:42:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=444
;

-- May 30, 2014 3:42:38 PM BRT
UPDATE C_Region SET LBR_RegionCode='16',Updated=TO_TIMESTAMP('2014-05-30 15:42:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=443
;

-- May 30, 2014 3:42:47 PM BRT
UPDATE C_Region SET LBR_RegionCode='29',Updated=TO_TIMESTAMP('2014-05-30 15:42:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=445
;

-- May 30, 2014 3:42:55 PM BRT
UPDATE C_Region SET LBR_RegionCode='23',Updated=TO_TIMESTAMP('2014-05-30 15:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=446
;

-- May 30, 2014 3:43:10 PM BRT
UPDATE C_Region SET LBR_RegionCode='53',Updated=TO_TIMESTAMP('2014-05-30 15:43:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=447
;

-- May 30, 2014 3:43:17 PM BRT
UPDATE C_Region SET LBR_RegionCode='32',Updated=TO_TIMESTAMP('2014-05-30 15:43:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=448
;

-- May 30, 2014 3:43:25 PM BRT
UPDATE C_Region SET LBR_RegionCode='52',Updated=TO_TIMESTAMP('2014-05-30 15:43:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=449
;

-- May 30, 2014 3:43:41 PM BRT
UPDATE C_Region SET LBR_RegionCode='21',Updated=TO_TIMESTAMP('2014-05-30 15:43:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=450
;

-- May 30, 2014 3:43:48 PM BRT
UPDATE C_Region SET LBR_RegionCode='31',Updated=TO_TIMESTAMP('2014-05-30 15:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=453
;

-- May 30, 2014 3:43:56 PM BRT
UPDATE C_Region SET LBR_RegionCode='50',Updated=TO_TIMESTAMP('2014-05-30 15:43:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=452
;

-- May 30, 2014 3:44:02 PM BRT
UPDATE C_Region SET LBR_RegionCode='51',Updated=TO_TIMESTAMP('2014-05-30 15:44:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=451
;

-- May 30, 2014 3:44:12 PM BRT
UPDATE C_Region SET LBR_RegionCode='15',Updated=TO_TIMESTAMP('2014-05-30 15:44:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=454
;

-- May 30, 2014 3:44:19 PM BRT
UPDATE C_Region SET LBR_RegionCode='25',Updated=TO_TIMESTAMP('2014-05-30 15:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=455
;

-- May 30, 2014 3:44:25 PM BRT
UPDATE C_Region SET LBR_RegionCode='26',Updated=TO_TIMESTAMP('2014-05-30 15:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=457
;

-- May 30, 2014 3:44:34 PM BRT
UPDATE C_Region SET LBR_RegionCode='22',Updated=TO_TIMESTAMP('2014-05-30 15:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=458
;

-- May 30, 2014 3:44:49 PM BRT
UPDATE C_Region SET LBR_RegionCode='41',Updated=TO_TIMESTAMP('2014-05-30 15:44:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=456
;

-- May 30, 2014 3:44:54 PM BRT
UPDATE C_Region SET LBR_RegionCode='33',Updated=TO_TIMESTAMP('2014-05-30 15:44:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=459
;

-- May 30, 2014 3:45:02 PM BRT
UPDATE C_Region SET LBR_RegionCode='24',Updated=TO_TIMESTAMP('2014-05-30 15:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=460
;

-- May 30, 2014 3:45:18 PM BRT
UPDATE C_Region SET LBR_RegionCode='11',Updated=TO_TIMESTAMP('2014-05-30 15:45:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=462
;

-- May 30, 2014 3:45:25 PM BRT
UPDATE C_Region SET LBR_RegionCode='14',Updated=TO_TIMESTAMP('2014-05-30 15:45:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=463
;

-- May 30, 2014 3:45:33 PM BRT
UPDATE C_Region SET LBR_RegionCode='43',Updated=TO_TIMESTAMP('2014-05-30 15:45:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=461
;

-- May 30, 2014 3:45:43 PM BRT
UPDATE C_Region SET LBR_RegionCode='42',Updated=TO_TIMESTAMP('2014-05-30 15:45:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=464
;

-- May 30, 2014 3:46:01 PM BRT
UPDATE C_Region SET LBR_RegionCode='28',Updated=TO_TIMESTAMP('2014-05-30 15:46:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=466
;

-- May 30, 2014 3:46:08 PM BRT
UPDATE C_Region SET LBR_RegionCode='35',Updated=TO_TIMESTAMP('2014-05-30 15:46:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=465
;

-- May 30, 2014 3:46:18 PM BRT
UPDATE C_Region SET LBR_RegionCode='17',Updated=TO_TIMESTAMP('2014-05-30 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=467
;

-- Jun 2, 2014 8:36:23 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Error when validating XML, please contact technical support',1000002,'LBR','b3749697-9564-4e21-a38d-bd6676f63951','LBR_ErrorValidatingXML','Y',TO_TIMESTAMP('2014-06-02 08:36:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:36:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:36:48 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Error when generating XML, please contact technical support',1000003,'LBR','7a5b0832-773d-4b7a-b566-08426f31ab77','LBR_ErrorGeneratingXML','Y',TO_TIMESTAMP('2014-06-02 08:36:48','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:36:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:37:10 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Import Tax',1000004,'LBR','7954b82c-227d-4d43-a904-a8a8e8cab2a9','LBR_ImportTax','Y',TO_TIMESTAMP('2014-06-02 08:37:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:37:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:37:30 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Ref. Doc',1000005,'LBR','4e76b757-4d58-4604-be22-204a267eb1a3','LBR_DocRef','Y',TO_TIMESTAMP('2014-06-02 08:37:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:37:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:37:46 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Transportation',1000006,'LBR','e313b6a7-c55b-4c0f-93ce-2fdd2f3d1e1b','LBR_Transportation','Y',TO_TIMESTAMP('2014-06-02 08:37:46','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:37:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:38:05 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Trailer',1000007,'LBR','75a845ba-21d9-4599-9961-73aee379349a','LBR_Trailer','Y',TO_TIMESTAMP('2014-06-02 08:38:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:38:05','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:38:26 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Pay Schedule',1000008,'LBR','07db69b1-2b25-4487-81de-199f62692eef','LBR_PaySchedule','Y',TO_TIMESTAMP('2014-06-02 08:38:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:38:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:38:42 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Note',1000009,'LBR','2bd5781f-3755-47b6-8b7e-cd952ab83032','LBR_Note','Y',TO_TIMESTAMP('2014-06-02 08:38:42','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:38:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:39:10 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','LBR_TIMEZONE SysConfig has wrong format. It should be in format: ''+03:00''. The default value will be used.',1000010,'LBR','d9a3073c-24f9-456e-a0a7-67b574cdd926','LBR_WrongTimezoneFormat','Y',TO_TIMESTAMP('2014-06-02 08:39:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:39:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:39:52 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Issuer',1000011,'LBR','c9565bd7-7780-43fa-8cd8-14e1f038e781','LBR_Issuer','Y',TO_TIMESTAMP('2014-06-02 08:39:52','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:39:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:40:02 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Recipient',1000012,'LBR','512be554-ce44-471c-941d-2d27ef668645','LBR_Recipient','Y',TO_TIMESTAMP('2014-06-02 08:40:02','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:40:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:40:20 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Pickup Location',1000013,'LBR','61eea927-1fed-4cae-8b38-5cfef5d2f038','LBR_PickupLocation','Y',TO_TIMESTAMP('2014-06-02 08:40:20','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:40:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:40:37 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','Ship Location',1000014,'LBR','3cd1576e-d735-484c-82fb-fbf29c9c3c10','LBR_ShipLocation','Y',TO_TIMESTAMP('2014-06-02 08:40:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:40:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:41:06 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Invalid IE',1000015,'LBR','c02434da-201d-4d9c-af9d-edf7717ab575','LBR_WrongIE','Y',TO_TIMESTAMP('2014-06-02 08:41:06','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:41:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:41:31 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Invalid Address3 value',1000016,'LBR','38b7771b-04fb-4475-a02d-945f44e1b8b6','LBR_WrongAddress3','Y',TO_TIMESTAMP('2014-06-02 08:41:31','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:41:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:41:50 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Couldn''t find the city',1000017,'LBR','8204b476-08f7-4a1e-a5e7-8884e471918e','LBR_CantFindCity','Y',TO_TIMESTAMP('2014-06-02 08:41:50','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:41:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:42:24 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Couldn''t fing IBGE city code',1000018,'LBR','b9eebe9e-c61e-4a87-8b41-484134ce8b01','LBR_CantFindIBGECityCode','Y',TO_TIMESTAMP('2014-06-02 08:42:24','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:42:24','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:42:45 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Invalid Postal Code',1000019,'LBR','27cd6a15-c17f-4131-96f6-bdd8005d68f6','LBR_WrongPostalCode','Y',TO_TIMESTAMP('2014-06-02 08:42:45','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:42:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:43:02 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Invalid Country',1000020,'LBR','f48c3be4-ce2b-4451-8034-eaa0770ef160','LBR_WrongCountry','Y',TO_TIMESTAMP('2014-06-02 08:43:02','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:43:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:43:23 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','NCM is missing',1000021,'LBR','4fbfa1f1-f151-4a07-a3f4-9e7d44a21f71','LBR_MissingNCM','Y',TO_TIMESTAMP('2014-06-02 08:43:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:43:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:43:41 AM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('E','Invalid CFOP',1000022,'LBR','10baa247-5e3a-4b65-83cd-28410696ab71','LBR_InvalidCFO','Y',TO_TIMESTAMP('2014-06-02 08:43:41','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_TIMESTAMP('2014-06-02 08:43:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 8:46:59 AM BRT
UPDATE AD_Message SET Value='LBR_InvalidCFOP',Updated=TO_TIMESTAMP('2014-06-02 08:46:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Message_ID=1000022
;

SELECT lbr_register_migration_script('201405191720.sql') FROM dual
;
