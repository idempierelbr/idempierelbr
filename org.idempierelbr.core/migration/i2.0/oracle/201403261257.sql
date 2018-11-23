SET SQLBLANKLINES ON
SET DEFINE OFF

-- Mar 25, 2014 1:06:32 PM BRT
-- Table/Tab/Fields for LBR_DocLine_ICMS (Order)
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSRegime',1000107,'ICMS Regime','Identifies a ICMS Regime for taxes','ICMS Regime','5a4ee7f2-47fc-476c-9f60-cf5782d4dbbf',TO_DATE('2014-03-25 13:06:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:06:32','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:08:35 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMS_TaxStatusTN',1000108,'ICMS Tax Status (Standard Taxation)','Identifies a ICMS Tax Status in a standard taxation','ICMS Tax Status (Standard Taxation)','64a65097-7e33-4c0e-83cf-68435e9436ac',TO_DATE('2014-03-25 13:08:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:08:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:09:49 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMS_TaxStatusSN',1000109,'ICMS Tax Status (Simple)','Identifies a ICMS Tax Status in a simple taxation','ICMS Tax Status (Simple)','fb36421d-dae8-40ca-9f86-709cbc374590',TO_DATE('2014-03-25 13:09:49','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:09:49','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:11:36 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMS_TaxBaseType',1000110,'ICMS Tax Base Type','Identifies a ICMS Tax Base Type','ICMS Tax Base Type','c0f88fd4-a8f7-411e-bf28-e24da8b97530',TO_DATE('2014-03-25 13:11:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:11:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:14:09 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxBaseType',1000111,'ICMS-ST Tax Base Type','Identifies a ICMS-ST Tax Base Type','ICMS-ST Tax Base Type','97ffbe66-83cd-44a7-9b5b-0452700d418d',TO_DATE('2014-03-25 13:14:09','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:14:09','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:15:07 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxBase',1000112,'ICMS-ST Tax Base','Indicates the ICMS-ST Tax Base','ICMS-ST Tax Base','ee5294af-0d2e-4416-a355-a836ffbcb58e',TO_DATE('2014-03-25 13:15:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:15:07','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:16:00 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxBaseAmt',1000113,'ICMS-ST Tax Base Amount','Defines the ICMS-ST Tax Base Amount','ICMS-ST Tax Base Amount','4c688ede-c508-4191-aed3-ff7f6d72d475',TO_DATE('2014-03-25 13:16:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:16:00','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:16:37 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxRate',1000114,'ICMS-ST Tax Rate','Indicates the ICMS-ST Tax Rate','ICMS-ST Tax Rate','59168602-7da6-44d7-b172-b53924689bee',TO_DATE('2014-03-25 13:16:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:16:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:18:12 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxAmt',1000115,'ICMS-ST Tax Amount','Defines the ICMS-ST Tax Amount','ICMS-ST Tax Amount','069c43a4-56b3-4ef3-9e23-53ae755cd0f9',TO_DATE('2014-03-25 13:18:12','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:18:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:21:26 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxBaseOwnOperation',1000116,'Tax Base Own Operation (%)','Identifies the Tax Base Own Operation in percentage','Tax Base Own Operation (%)','d4727352-d435-4cbc-b0a1-5f2d12a9b6dc',TO_DATE('2014-03-25 13:21:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:21:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:22:38 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxRateCredit',1000117,'Tax Rate Credit (%)','Identifies the Tax Rate Credit in percentage','Tax Rate Credit (%)','7871ae23-18ca-4661-b00e-6da29fdf7bcc',TO_DATE('2014-03-25 13:22:38','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:22:38','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:23:06 PM BRT
UPDATE AD_WorkflowProcessor SET DateNextRun=TO_DATE('2014-03-25 15:23:06','YYYY-MM-DD HH24:MI:SS'), DateLastRun=TO_DATE('2014-03-25 13:23:06','YYYY-MM-DD HH24:MI:SS'),Updated=TO_DATE('2014-03-25 13:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_WorkflowProcessor_ID=100
;

-- Mar 25, 2014 1:23:56 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxAmtCredit',1000118,'Tax Amount Credit','Identifies the Tax Amount Credit','Tax Amount Credit','bf0f5f00-c895-4298-8d32-1176c6faeb4c',TO_DATE('2014-03-25 13:23:56','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:23:56','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:26:25 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMS_TaxReliefType',1000119,'ICMS Tax Relief Type','Identifies the ICMS Tax Relief Type','ICMS Tax Relief Type','fa315555-ed2f-4fba-a5d4-e6e1a49f8431',TO_DATE('2014-03-25 13:26:25','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:26:25','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:28:12 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxAdded',1000120,'ICMS-ST Added Amount Margin (%)','Identifies the ICMS-ST Added Amount Margin in percentage','ICMS-ST Added Amount Margin (%)','2a624433-1b89-42a0-a25b-33ff011e1972',TO_DATE('2014-03-25 13:28:12','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:28:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:30:37 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxUFDue_ID',1000121,'ICMS-ST UF Due','Identifies the ICMS-ST UF Due','ICMS-ST UF Due','193926bf-bf24-4508-86ab-09b705f8047b',TO_DATE('2014-03-25 13:30:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:30:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:35:37 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxBAmtUFSen',1000122,'ICMS-ST Base Amount withheld in Sender UF','Identifies the ICMS-ST Base Amount withheld in Sender UF','ICMS-ST Base Amount withheld in Sender UF','0021c951-15cc-4767-83ca-b85f3c065488',TO_DATE('2014-03-25 13:35:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:35:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:37:07 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxBAmtUFDes',1000123,'ICMS-ST Base Amount in Receiver UF','Identifies the ICMS-ST Base Amount in Receiver UF','ICMS-ST Base Amount in Receiver UF','1f1d1804-1622-4336-af40-8b09820287a9',TO_DATE('2014-03-25 13:37:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:37:06','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:46:53 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxAmtUFSen',1000124,'ICMS-ST Amount withheld in Sender UF','Identifies the ICMS-ST Amount withheld in Sender UF','ICMS-ST Amount withheld in Sender UF','5b87012c-d38e-4668-9fb2-7fe0c2309161',TO_DATE('2014-03-25 13:46:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:46:53','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:48:10 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxAmtUFDes',1000125,'ICMS-ST Amount in Receiver UF','Identifies the ICMS-ST Amount in Receiver UF','ICMS-ST Amount in Receiver UF','df054476-bc0d-489b-b343-a8e8fb70fada',TO_DATE('2014-03-25 13:48:09','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:48:09','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:50:03 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxAmtWhd',1000126,'ICMS-ST Withheld Amount','Identifies the ICMS-ST Withheld Amount','ICMS-ST Withheld Amount','90a7ba01-9f67-4b7c-ad01-55bccb00bb3f',TO_DATE('2014-03-25 13:50:03','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:50:03','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:50:53 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxBAmtWhd',1000127,'ICMS-ST Withheld Base Amount','Identifies the ICMS-ST Withheld Base Amount','ICMS-ST Withheld Base Amount','c433af0f-6355-4511-a386-a15b2e1d50ab',TO_DATE('2014-03-25 13:50:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-25 13:50:53','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 25, 2014 1:59:57 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000024,'LBR_ICMSRegime','LBR','b1590dd3-27e3-40bc-b173-b75e43c97f3c','N','L',0,0,TO_DATE('2014-03-25 13:59:57','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-03-25 13:59:57','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Mar 25, 2014 2:00:52 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000047,1000024,'3000a7b0-7c6f-4e1c-83ff-c6762bbc2a5c','TN',TO_DATE('2014-03-25 14:00:52','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-25 14:00:52','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Default Taxation')
;

-- Mar 25, 2014 2:01:13 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000048,1000024,'27a1b3d0-84c7-46d9-9828-a0fae6b627f4','SN',TO_DATE('2014-03-25 14:01:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-25 14:01:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Simple Taxation')
;

-- Mar 26, 2014 9:51:10 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxReliefType',1000128,'ICMS-ST Tax Relief Type','Identifies the ICMS-ST Tax Relief Type','ICMS-ST Tax Relief Type','62e6ecac-145d-41f7-b6f2-5db85b400ae8',TO_DATE('2014-03-26 09:51:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-26 09:51:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 26, 2014 9:52:29 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_TaxReliefAmt',1000129,'ICMS-ST Tax Relief Amount','Identifies the ICMS-ST Tax Relief Amount','ICMS-ST Tax Relief Amount','2a3b9dae-f371-41e1-a4e3-55e2b17a7b21',TO_DATE('2014-03-26 09:52:29','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-26 09:52:29','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 26, 2014 9:52:51 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxReliefAmt',1000130,'Tax Relief Amount','Identifies the Tax Relief Amount','Tax Relief Amount','75dfc80e-a7ef-4996-aa83-6d7d58f70236',TO_DATE('2014-03-26 09:52:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-26 09:52:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 26, 2014 10:07:14 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000025,'LBR_ICMS_TaxReliefType','LBR','945f0103-3fb1-4d30-b340-3d95fa2d8f18','N','L',0,0,TO_DATE('2014-03-26 10:07:14','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-03-26 10:07:14','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Mar 26, 2014 10:07:52 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000049,1000025,'da16b647-d848-4370-b3f4-d967ef1f053a','1',TO_DATE('2014-03-26 10:07:52','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:07:52','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Cab')
;

-- Mar 26, 2014 10:08:41 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000050,1000025,'40f9cedf-973c-423e-85e7-4ec4b5d3f400','3',TO_DATE('2014-03-26 10:08:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:08:41','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Agriculture Use')
;

-- Mar 26, 2014 10:09:44 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000051,1000025,'7934af8b-eea0-408b-aff6-a2f217f4eea5','4',TO_DATE('2014-03-26 10:09:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:09:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Rental')
;

-- Mar 26, 2014 10:10:35 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000052,1000025,'1991564f-caff-459e-8320-e08f10998330','5',TO_DATE('2014-03-26 10:10:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:10:35','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Consular')
;

-- Mar 26, 2014 10:12:31 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000053,1000025,'ef8d475d-20c5-424b-81fb-148421a897d4','6',TO_DATE('2014-03-26 10:12:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:12:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'SUVs and Motorcycles')
;

-- Mar 26, 2014 10:12:53 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000054,1000025,'0044409f-ea68-4172-b0a0-b25b1bdd4c0e','7',TO_DATE('2014-03-26 10:12:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:12:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'SUFRAMA')
;

-- Mar 26, 2014 10:13:50 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000055,1000025,'cd9df5af-8cbf-4e34-b726-50592f578ba6','8',TO_DATE('2014-03-26 10:13:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:13:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Sale to public institutions')
;

-- Mar 26, 2014 10:14:39 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000056,1000025,'7bfdbdb4-aaf0-4c67-80a5-362b53d6e735','9',TO_DATE('2014-03-26 10:14:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:14:39','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Other')
;

-- Mar 26, 2014 10:15:23 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000057,1000025,'a2df0eca-f858-4486-bd06-4874e63116e6','12',TO_DATE('2014-03-26 10:15:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 10:15:23','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Financing agency')
;

-- Mar 26, 2014 10:43:40 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxDeferralAmt',1000131,'Tax Deferral Amount','Identifies the Tax Deferral Amount','Tax Deferral Amount','6aa6e7d5-67d1-4b4f-87fb-7488afd45367',TO_DATE('2014-03-26 10:43:40','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-26 10:43:40','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 26, 2014 10:44:17 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxDeferralRate',1000132,'Tax Deferral Rate (%)','Identifies the Tax Deferral Rate (%)','Tax Deferral Rate (%)','56599cf2-6d2d-4b7a-aa5e-b9760e51db70',TO_DATE('2014-03-26 10:44:17','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-26 10:44:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 26, 2014 10:45:21 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMS_TaxAmtOp',1000133,'ICMS Tax Operation Amount','Identifies the ICMS Tax Operation Amount','ICMS Tax Operation Amount','188cb792-53d5-4094-910f-d42cf2f1dd75',TO_DATE('2014-03-26 10:45:21','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-26 10:45:21','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 26, 2014 1:06:51 PM BRT
UPDATE AD_Reference SET Name='LBR_ICMS_TaxStatus',Updated=TO_DATE('2014-03-26 13:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=1000015
;

-- Mar 26, 2014 1:09:01 PM BRT
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2014-03-26 13:09:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000282
;

-- Mar 26, 2014 1:09:04 PM BRT
ALTER TABLE LBR_TaxConfig_BPartner MODIFY LBR_TaxStatus NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 26, 2014 1:09:56 PM BRT
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2014-03-26 13:09:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000296
;

-- Mar 26, 2014 1:09:58 PM BRT
ALTER TABLE LBR_TaxConfig_BPGroup MODIFY LBR_TaxStatus NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 26, 2014 1:10:30 PM BRT
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2014-03-26 13:10:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000310
;

-- Mar 26, 2014 1:10:31 PM BRT
ALTER TABLE LBR_TaxConfig_Region MODIFY LBR_TaxStatus NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 26, 2014 1:11:09 PM BRT
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2014-03-26 13:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000324
;

-- Mar 26, 2014 1:11:10 PM BRT
ALTER TABLE LBR_TaxConfig_Product MODIFY LBR_TaxStatus NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 26, 2014 1:11:47 PM BRT
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2014-03-26 13:11:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000339
;

-- Mar 26, 2014 1:11:49 PM BRT
ALTER TABLE LBR_TaxConfig_ProductGroup MODIFY LBR_TaxStatus NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 26, 2014 1:12:28 PM BRT
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2014-03-26 13:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000362
;

-- Mar 26, 2014 1:12:29 PM BRT
ALTER TABLE LBR_TaxDefinition MODIFY LBR_TaxStatus NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 26, 2014 1:12:59 PM BRT
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2014-03-26 13:12:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000398
;

-- Mar 26, 2014 1:13:00 PM BRT
ALTER TABLE LBR_CFOPLine MODIFY LBR_TaxStatus NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 26, 2014 1:17:54 PM BRT
UPDATE AD_Ref_List SET Value='10_1',Updated=TO_DATE('2014-03-26 13:17:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000024
;

-- Mar 26, 2014 1:18:31 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000058,1000015,'d54a7d6b-8754-4e0a-90c6-183481623741','10_2',TO_DATE('2014-03-26 13:18:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:18:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'10 - Tributada e com cobranca do ICMS por Sub. Tributaria (com partilha)')
;

-- Mar 26, 2014 1:19:04 PM BRT
UPDATE AD_Ref_List SET Value='41_1',Updated=TO_DATE('2014-03-26 13:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000028
;

-- Mar 26, 2014 1:19:30 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000059,1000015,'4fc35d99-471f-4898-88a9-31d45d7843a1','41_2',TO_DATE('2014-03-26 13:19:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:19:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'41 - Nao-tributada (retencao antecipada)')
;

-- Mar 26, 2014 1:19:59 PM BRT
UPDATE AD_Ref_List SET Value='90_2',Updated=TO_DATE('2014-03-26 13:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000033
;

-- Mar 26, 2014 1:20:13 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000060,1000015,'2f591975-cc2f-4141-952f-a6d24bc3f4df','90_1',TO_DATE('2014-03-26 13:20:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:20:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'90 - Outras (com partilha)')
;

-- Mar 26, 2014 1:22:01 PM BRT
UPDATE AD_Reference SET Name='LBR_ICMS_TaxStatus_DefaultTaxation',Updated=TO_DATE('2014-03-26 13:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=1000015
;

-- Mar 26, 2014 1:22:23 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000026,'LBR_ICMS_TaxStatus_SimpleTaxation','LBR','2c140b99-3df5-4c1d-bd93-b15450e07faa','N','L',0,0,TO_DATE('2014-03-26 13:22:23','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-03-26 13:22:23','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Mar 26, 2014 1:23:25 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000061,1000026,'ceff9b90-b63b-4e99-8c14-d380c7b1063b','101',TO_DATE('2014-03-26 13:23:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:23:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'101 - Tributada com permissao de credito')
;

-- Mar 26, 2014 1:24:44 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000062,1000026,'e6b3435b-251f-415a-ab2d-9224c57bef5c','102',TO_DATE('2014-03-26 13:24:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:24:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'102 - Tributada sem permissao de credito')
;

-- Mar 26, 2014 1:25:21 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000063,1000026,'c9ce64d1-eb7a-4508-965e-ed078b90cdc8','103',TO_DATE('2014-03-26 13:25:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:25:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'103 - Isencao do ICMS para faixa de receita bruta')
;

-- Mar 26, 2014 1:25:51 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000064,1000026,'d09e9ab6-51a3-41b5-a3a9-40e114521caa','201',TO_DATE('2014-03-26 13:25:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:25:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'201 - Tributada com permissao de credito')
;

-- Mar 26, 2014 1:26:06 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000065,1000026,'7baf4313-af46-4c5c-9636-8ebfdd1c7e5d','202',TO_DATE('2014-03-26 13:26:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:26:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'202 - Tributada sem permissao de credito')
;

-- Mar 26, 2014 1:26:43 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000066,1000026,'e318db80-6f8c-44ca-9a67-966411fb398e','203',TO_DATE('2014-03-26 13:26:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:26:43','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'203 - Isencao do ICMS para faixa de receita bruta')
;

-- Mar 26, 2014 1:27:57 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000067,1000026,'0ece1d2d-4b94-4a08-bacd-8524e3604284','300',TO_DATE('2014-03-26 13:27:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:27:57','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'300 - Imune')
;

-- Mar 26, 2014 1:28:12 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000068,1000026,'323ced58-9e39-4310-a224-83a4ea423ce1','400',TO_DATE('2014-03-26 13:28:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:28:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'400 - Nao Tributada')
;

-- Mar 26, 2014 1:28:30 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000069,1000026,'31e06254-a490-4176-a102-e0e12417a07a','500',TO_DATE('2014-03-26 13:28:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:28:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'500 - ICMS cobrado anteriormente')
;

-- Mar 26, 2014 1:28:45 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000070,1000026,'ed5bcf2c-81ac-4b6e-aa4a-5822b3ec31c3','900',TO_DATE('2014-03-26 13:28:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-26 13:28:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'900 - Outros')
;

-- Mar 26, 2014 2:01:42 PM BRT
UPDATE AD_Reference SET Name='LBR_ICMS_TaxStatus_StandardTaxation',Updated=TO_DATE('2014-03-26 14:01:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=1000015
;

-- Mar 27, 2014 9:03:00 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000027,'LBR_ICMS_TaxBaseType','LBR','9292aa3b-d1bd-4aba-a054-f61069cf6a18','N','L',0,0,TO_DATE('2014-03-27 09:02:59','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-03-27 09:02:59','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Mar 27, 2014 9:05:14 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000071,1000027,'800f6ba8-8364-498d-856c-283db35aca83','0',TO_DATE('2014-03-27 09:05:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:05:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Margem Valor Agregado (%)')
;

-- Mar 27, 2014 9:05:32 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000072,1000027,'611e47b3-0d72-4b64-8720-05b7d63127b4','1',TO_DATE('2014-03-27 09:05:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:05:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Pauta (Valor)')
;

-- Mar 27, 2014 9:05:58 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000073,1000027,'8afc06f2-5678-4908-a7d9-14795b250a60','2',TO_DATE('2014-03-27 09:05:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:05:58','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Preco Tabelado Max. (Valor)')
;

-- Mar 27, 2014 9:06:23 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000074,1000027,'8099a42f-fd7c-403b-bee6-177cec0f4e27','3',TO_DATE('2014-03-27 09:06:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:06:23','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Valor da Operacao')
;

-- Mar 27, 2014 9:07:45 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000028,'LBR_ICMSST_TaxBaseType','LBR','da1e9fd0-f568-4bbd-a105-3100ede84fd4','N','L',0,0,TO_DATE('2014-03-27 09:07:45','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-03-27 09:07:45','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Mar 27, 2014 9:08:06 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000075,1000028,'78da1fb8-96fd-4ec2-a350-f5f913f4f2af','0',TO_DATE('2014-03-27 09:08:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:08:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Preco Tabelado ou Maximo Sugerido')
;

-- Mar 27, 2014 9:08:20 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000076,1000028,'793d0af2-8593-4d6e-80e3-0bab3138c264','1',TO_DATE('2014-03-27 09:08:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:08:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Lista Negativa (Valor)')
;

-- Mar 27, 2014 9:08:34 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000077,1000028,'fec520e1-caea-4465-83c5-10bccb225acc','2',TO_DATE('2014-03-27 09:08:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:08:34','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Lista Positiva (Valor)')
;

-- Mar 27, 2014 9:08:49 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000078,1000028,'cbb05c8f-726c-4a21-8e96-a6f0c42abbcb','3',TO_DATE('2014-03-27 09:08:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:08:49','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Lista Neutra (Valor)')
;

-- Mar 27, 2014 9:09:08 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000079,1000028,'2a7ea5d9-5d79-4541-abe7-906c9dbfeb73','4',TO_DATE('2014-03-27 09:09:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:09:08','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Margem Valor Agregado (%)')
;

-- Mar 27, 2014 9:09:20 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000080,1000028,'742b6dc5-d0f5-4e66-a8f9-ddffdaa90c5c','5',TO_DATE('2014-03-27 09:09:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 09:09:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Pauta (Valor)')
;

-- Mar 27, 2014 10:02:04 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000027,'N','N','Y','LBR','L','1b1f7f5a-ec45-4622-ad7c-0ef023f023f9','Y','Y','LBR_DocLine_ICMS','Doc Line ICMS','Y',0,0,TO_DATE('2014-03-27 10:02:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 10:02:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Mar 27, 2014 10:02:04 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000031,'Table LBR_DocLine_ICMS','LBR_DocLine_ICMS',1,'46df9238-8632-4f6e-bc76-14ce9c707890',TO_DATE('2014-03-27 10:02:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 10:02:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Mar 27, 2014 10:02:21 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000451,'N','N','N',0,'N',22,'N','N','N','Y','51418c0b-b595-45fc-9b84-30c81b9c4a74','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-03-27 10:02:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:02:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000027,129,0,'LBR')
;

-- Mar 27, 2014 10:02:26 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDocLineICMS', FKConstraintType='N',Updated=TO_DATE('2014-03-27 10:02:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000451
;

-- Mar 27, 2014 10:02:26 AM BRT
CREATE TABLE LBR_DocLine_ICMS (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Mar 27, 2014 10:02:26 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT ADClient_LBRDocLineICMS FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 27, 2014 10:02:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000452,'N','N','N',0,'N',22,'N','N','N','Y','9d28193e-a8e2-4a05-a3ec-92f1520c35e3','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-03-27 10:02:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:02:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000027,104,0,'LBR')
;

-- Mar 27, 2014 10:02:46 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDocLineICMS', FKConstraintType='N',Updated=TO_DATE('2014-03-27 10:02:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000452
;

-- Mar 27, 2014 10:02:46 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 27, 2014 10:02:46 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT ADOrg_LBRDocLineICMS FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 27, 2014 10:03:04 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000453,'N','N','N',0,'N',1,'N','N','N','Y','d6a34386-15e4-4d88-9e03-57bee72360a4','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-03-27 10:03:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:03:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000027,0,'LBR')
;

-- Mar 27, 2014 10:03:09 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Mar 27, 2014 10:03:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000454,'N','N','N',0,'N',7,'N','N','N','Y','389bbaad-f9c4-43cb-9ca9-bfd828b8bb46','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-03-27 10:03:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:03:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000027,0,'LBR')
;

-- Mar 27, 2014 10:03:52 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD Created DATE DEFAULT NULL 
;

-- Mar 27, 2014 10:04:18 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000455,'N','N','N',0,'N',22,'N','N','N','Y','5a36c23b-68db-491f-b6aa-3c5a982d1641','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-03-27 10:04:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:04:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000027,0,'LBR')
;

-- Mar 27, 2014 10:04:22 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDocLineICMS', FKConstraintType='N',Updated=TO_DATE('2014-03-27 10:04:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000455
;

-- Mar 27, 2014 10:04:22 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Mar 27, 2014 10:04:22 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT CreatedBy_LBRDocLineICMS FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 27, 2014 10:04:46 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000456,'N','N','N',0,'N',7,'N','N','N','Y','b0982b8c-dab7-459a-890c-c1ff0428214b','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-03-27 10:04:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:04:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000027,0,'LBR')
;

-- Mar 27, 2014 10:04:50 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD Updated DATE DEFAULT NULL 
;

-- Mar 27, 2014 10:05:12 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000457,'N','N','N',0,'N',22,'N','N','N','Y','671e84ae-1757-4df1-96f1-061b03bff42e','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-03-27 10:05:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:05:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000027,0,'LBR')
;

-- Mar 27, 2014 10:05:16 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDocLineICMS', FKConstraintType='N',Updated=TO_DATE('2014-03-27 10:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000457
;

-- Mar 27, 2014 10:05:16 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Mar 27, 2014 10:05:16 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT UpdatedBy_LBRDocLineICMS FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 27, 2014 10:16:30 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_ICMS_ID',1000134,'The Doc Line ICMS is a unique identifier for a doc line details.','Doc Line ICMS','Doc Line ICMS','Doc Line ICMS','d0c61f4a-d97e-4836-86cc-564883cf6673',TO_DATE('2014-03-27 10:16:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-27 10:16:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 27, 2014 10:17:21 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_ICMS_UU',1000135,'The Doc Line ICMS is a unique identifier for a doc line details.','Doc Line ICMS','Doc Line ICMS','Doc Line ICMS','43db1486-d566-4adc-9a3c-3c67debade18',TO_DATE('2014-03-27 10:17:21','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-27 10:17:21','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 27, 2014 10:18:10 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000458,'N','N','N',0,'N',22,'N','Y','N','Y','ca4ce567-012d-4395-81eb-1dcd9666b0dc','N','LBR_DocLine_ICMS_ID','Doc Line ICMS','The Doc Line ICMS is a unique identifier for a doc line details.','Doc Line ICMS','N',TO_DATE('2014-03-27 10:18:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:18:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000134,13,1000027,0,'LBR')
;

-- Mar 27, 2014 10:18:13 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DocLine_ICMS_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 27, 2014 10:18:14 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT LBR_DocLine_ICMS_Key PRIMARY KEY (LBR_DocLine_ICMS_ID)
;

-- Mar 27, 2014 10:18:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000459,'N','N','N',0,'N',36,'N','N','N','Y','0f0f9f8b-4f5b-4582-acab-35b225e26bd4','N','LBR_DocLine_ICMS_UU','Doc Line ICMS','The Doc Line ICMS is a unique identifier for a doc line details.','Doc Line ICMS','N',TO_DATE('2014-03-27 10:18:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:18:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000135,10,1000027,0,'LBR')
;

-- Mar 27, 2014 10:18:37 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DocLine_ICMS_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Mar 27, 2014 10:18:37 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT LBR_DocLine_ICMS_UU_idx UNIQUE (LBR_DocLine_ICMS_UU)
;

-- Mar 27, 2014 10:19:10 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000460,'N','N','N',0,'N',22,'N','N','N','Y','a3c7fe1d-a904-4a29-a270-4e6f87779374','Y','LBR_DocLine_Details_ID','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','Y',TO_DATE('2014-03-27 10:19:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:19:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000094,19,1000027,0,'LBR')
;

-- Mar 27, 2014 10:19:14 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRDocLineDetails_LBRDocLineIC', FKConstraintType='N',Updated=TO_DATE('2014-03-27 10:19:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000460
;

-- Mar 27, 2014 10:19:14 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DocLine_Details_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 27, 2014 10:19:14 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT LBRDocLineDetails_LBRDocLineIC FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 27, 2014 10:20:38 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000461,'N','N','N',0,'N',2,'N','N','N','Y','676e1641-bda6-4f62-ba93-069ae4c26570','Y','LBR_ICMSRegime','Identifies a ICMS Regime for taxes','ICMS Regime','Y',TO_DATE('2014-03-27 10:20:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:20:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000107,17,1000024,1000027,0,'LBR')
;

-- Mar 27, 2014 10:20:45 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSRegime NVARCHAR2(2) DEFAULT NULL 
;

-- Mar 27, 2014 10:21:56 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000462,'N','N','N',0,'N',5,'N','N','N','Y','8a70ba8c-b0bc-4997-a908-f9e7826e6ff7','Y','LBR_ICMS_TaxStatusTN','Identifies a ICMS Tax Status in a standard taxation','ICMS Tax Status (Standard Taxation)','Y',TO_DATE('2014-03-27 10:21:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:21:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000108,17,1000015,1000027,0,'LBR')
;

-- Mar 27, 2014 10:22:00 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMS_TaxStatusTN NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 27, 2014 10:22:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000463,'N','N','N',0,'N',5,'N','N','N','Y','db37480e-cea6-41b5-87da-d2db8fca4189','Y','LBR_ICMS_TaxStatusSN','Identifies a ICMS Tax Status in a simple taxation','ICMS Tax Status (Simple)','Y',TO_DATE('2014-03-27 10:22:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:22:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000109,17,1000026,1000027,0,'LBR')
;

-- Mar 27, 2014 10:22:53 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMS_TaxStatusSN NVARCHAR2(5) DEFAULT NULL 
;

-- Mar 27, 2014 10:23:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000464,'N','N','N',0,'N',1,'N','N','N','Y','e1f17cbb-929e-480b-89ca-0fe2fe051a89','Y','LBR_ProductSource','Identifies a Product Source','''0''','Product Source','Y',TO_DATE('2014-03-27 10:23:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:23:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000026,17,1000002,1000027,0,'LBR')
;

-- Mar 27, 2014 10:23:19 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ProductSource CHAR(1) DEFAULT '0'
;

-- Mar 27, 2014 10:24:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000465,'N','N','N',0,'N',1,'N','N','N','Y','f7d1afab-9384-44d4-99e0-bacca00b411a','Y','LBR_ICMS_TaxBaseType','Identifies a ICMS Tax Base Type','ICMS Tax Base Type','Y',TO_DATE('2014-03-27 10:24:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:24:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000110,17,1000027,1000027,0,'LBR')
;

-- Mar 27, 2014 10:24:26 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMS_TaxBaseType CHAR(1) DEFAULT NULL 
;

-- Mar 27, 2014 10:25:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000466,'N','N','N',0,'N',10,'N','N','N','Y','6e01df96-30b7-4af1-81d6-b4539d5d9720','Y','LBR_TaxBase','Indicates the Tax Base','Tax Base','Y',TO_DATE('2014-03-27 10:25:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:25:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000057,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:25:04 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxBase NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:26:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000467,'N','N','N',0,'N',10,'N','N','N','Y','2c966f70-0873-40e6-8d23-5a9dae80d516','Y','LBR_TaxBaseAmt','Defines the Tax Base Amount','Tax Base Amount','Y',TO_DATE('2014-03-27 10:26:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:26:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000058,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:26:19 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxBaseAmt NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:27:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000468,'N','N','N',0,'N',10,'N','N','N','Y','2af89303-df3f-4112-8a15-7684f6f30a2c','Y','LBR_TaxRate','Indicates the Tax Rate','Tax Rate','Y',TO_DATE('2014-03-27 10:27:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:27:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000062,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:27:19 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxRate NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:27:40 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000469,'N','N','N',0,'N',10,'N','N','N','Y','7c901509-4b51-4f6f-abb8-3b3ce8d8c711','Y','LBR_TaxAmt','Defines the Tax Amount','Tax Amount','Y',TO_DATE('2014-03-27 10:27:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:27:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000056,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:27:43 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxAmt NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:29:13 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000470,'N','N','N',0,'N',10,'N','N','N','Y','c385cb58-2a23-4627-9035-99489edab639','Y','LBR_TaxBaseOwnOperation','Identifies the Tax Base Own Operation in percentage','Tax Base Own Operation (%)','Y',TO_DATE('2014-03-27 10:29:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:29:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000116,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:29:17 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxBaseOwnOperation NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:29:47 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000471,'N','N','N',0,'N',10,'N','N','N','Y','8d61108f-2779-4c08-abb0-4122423033af','Y','LBR_TaxRateCredit','Identifies the Tax Rate Credit in percentage','Tax Rate Credit (%)','Y',TO_DATE('2014-03-27 10:29:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:29:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000117,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:29:51 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxRateCredit NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:30:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000472,'N','N','N',0,'N',10,'N','N','N','Y','fa73c59e-1b04-4b90-9ac1-75cb2d9a8cf3','Y','LBR_TaxAmtCredit','Identifies the Tax Amount Credit','Tax Amount Credit','Y',TO_DATE('2014-03-27 10:30:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:30:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000118,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:30:31 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxAmtCredit NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:31:36 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000473,'N','N','N',0,'N',2,'N','N','N','Y','0e660f96-1eae-433d-bca9-3682d81518ac','Y','LBR_ICMS_TaxReliefType','Identifies the ICMS Tax Relief Type','ICMS Tax Relief Type','Y',TO_DATE('2014-03-27 10:31:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:31:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000119,17,1000025,1000027,0,'LBR')
;

-- Mar 27, 2014 10:31:40 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMS_TaxReliefType NVARCHAR2(2) DEFAULT NULL 
;

-- Mar 27, 2014 10:34:09 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000474,'N','N','N',0,'N',10,'N','N','N','Y','8b6fc063-aa9c-4e9f-bc4c-38abd09daeba','Y','LBR_TaxReliefAmt','Identifies the Tax Relief Amount','Tax Relief Amount','Y',TO_DATE('2014-03-27 10:34:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:34:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000130,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:34:13 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxReliefAmt NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:36:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000475,'N','N','N',0,'N',10,'N','N','N','Y','a4773b91-4bf5-49b2-8ac6-1085fd93c183','Y','LBR_TaxDeferralRate','Identifies the Tax Deferral Rate (%)','Tax Deferral Rate (%)','Y',TO_DATE('2014-03-27 10:36:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:36:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000132,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:36:59 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxDeferralRate NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:37:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000476,'N','N','N',0,'N',10,'N','N','N','Y','b3b1445b-a401-4e06-9e69-72e8cd9d4194','Y','LBR_ICMS_TaxAmtOp','Identifies the ICMS Tax Operation Amount','ICMS Tax Operation Amount','Y',TO_DATE('2014-03-27 10:37:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:37:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000133,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:38:03 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMS_TaxAmtOp NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:42:16 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000477,'N','N','N',0,'N',10,'N','N','N','Y','1fe7fac2-b819-40d3-8715-5fc0314c249d','Y','LBR_TaxDeferralAmt','Identifies the Tax Deferral Amount','Tax Deferral Amount','Y',TO_DATE('2014-03-27 10:42:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:42:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000131,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:42:21 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_TaxDeferralAmt NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:47:59 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000479,'N','N','N',0,'N',1,'N','N','N','Y','e0994e33-2fa6-46c0-9bd2-5fe647836e72','Y','LBR_ICMSST_TaxBaseType','Identifies a ICMS-ST Tax Base Type','ICMS-ST Tax Base Type','Y',TO_DATE('2014-03-27 10:47:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:47:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000111,17,1000028,1000027,0,'LBR')
;

-- Mar 27, 2014 10:48:05 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxBaseType CHAR(1) DEFAULT NULL 
;

-- Mar 27, 2014 10:48:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000480,'N','N','N',0,'N',10,'N','N','N','Y','c8f07705-df24-48eb-9bbf-14cbd94804a4','Y','LBR_ICMSST_TaxBase','Indicates the ICMS-ST Tax Base','ICMS-ST Tax Base','Y',TO_DATE('2014-03-27 10:48:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:48:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000112,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:48:46 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxBase NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:49:16 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000481,'N','N','N',0,'N',10,'N','N','N','Y','e0d4e952-1ffd-4921-ab05-0ebf904da871','Y','LBR_ICMSST_TaxAdded','Identifies the ICMS-ST Added Amount Margin in percentage','ICMS-ST Added Amount Margin (%)','Y',TO_DATE('2014-03-27 10:49:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:49:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000120,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:49:20 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxAdded NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 10:49:57 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000482,'N','N','N',0,'N',10,'N','N','N','Y','ac0db640-2260-4e8d-a1e4-1ec91323b12d','Y','LBR_ICMSST_TaxBaseAmt','Defines the ICMS-ST Tax Base Amount','ICMS-ST Tax Base Amount','Y',TO_DATE('2014-03-27 10:49:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 10:49:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000113,12,1000027,0,'LBR')
;

-- Mar 27, 2014 10:50:06 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxBaseAmt NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:04:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000483,'N','N','N',0,'N',10,'N','N','N','Y','79416650-ee00-449e-bbaf-028452a3a5c0','Y','LBR_ICMSST_TaxRate','Indicates the ICMS-ST Tax Rate','ICMS-ST Tax Rate','Y',TO_DATE('2014-03-27 11:04:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:04:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000114,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:04:53 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxRate NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:05:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000484,'N','N','N',0,'N',10,'N','N','N','Y','b9a64f99-17dd-4a35-addd-fabdc388e6d7','Y','LBR_ICMSST_TaxAmt','Defines the ICMS-ST Tax Amount','ICMS-ST Tax Amount','Y',TO_DATE('2014-03-27 11:05:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:05:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000115,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:05:32 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxAmt NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:32:04 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000485,'N','N','N',0,'N',22,'N','N','N','Y','66e9e196-620a-440d-aa02-8a13de8eb6d1','Y','LBR_ICMSST_TaxUFDue_ID','Identifies the ICMS-ST UF Due','ICMS-ST UF Due','Y',TO_DATE('2014-03-27 11:32:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:32:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000121,18,157,1000027,1000001,0,'LBR')
;

-- Mar 27, 2014 11:32:09 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRICMSSTTaxUFDue_LBRDocLineIC', FKConstraintType='N',Updated=TO_DATE('2014-03-27 11:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000485
;

-- Mar 27, 2014 11:32:09 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxUFDue_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 27, 2014 11:32:10 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD CONSTRAINT LBRICMSSTTaxUFDue_LBRDocLineIC FOREIGN KEY (LBR_ICMSST_TaxUFDue_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 27, 2014 11:32:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000486,'N','N','N',0,'N',10,'N','N','N','Y','32ffe7a9-6e7e-4fdc-b6e1-7261f81eb593','Y','LBR_ICMSST_TaxBAmtUFSen','Identifies the ICMS-ST Base Amount withheld in Sender UF','ICMS-ST Base Amount withheld in Sender UF','Y',TO_DATE('2014-03-27 11:32:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:32:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000122,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:32:52 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxBAmtUFSen NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:33:29 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000487,'N','N','N',0,'N',10,'N','N','N','Y','8c72d66f-df89-429f-8c0e-af37152428cb','Y','LBR_ICMSST_TaxAmtUFSen','Identifies the ICMS-ST Amount withheld in Sender UF','ICMS-ST Amount withheld in Sender UF','Y',TO_DATE('2014-03-27 11:33:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:33:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000124,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:33:32 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxAmtUFSen NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:34:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000488,'N','N','N',0,'N',10,'N','N','N','Y','dbe90d8a-71b1-40d7-a5cd-15e3aff63b70','Y','LBR_ICMSST_TaxBAmtUFDes','Identifies the ICMS-ST Base Amount in Receiver UF','ICMS-ST Base Amount in Receiver UF','Y',TO_DATE('2014-03-27 11:34:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:34:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000123,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:34:05 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxBAmtUFDes NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:34:46 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000489,'N','N','N',0,'N',10,'N','N','N','Y','bbf566c2-0e82-40ad-af43-c56622a9d65d','Y','LBR_ICMSST_TaxAmtUFDes','Identifies the ICMS-ST Amount in Receiver UF','ICMS-ST Amount in Receiver UF','Y',TO_DATE('2014-03-27 11:34:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:34:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000125,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:34:51 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxAmtUFDes NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:35:34 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000490,'N','N','N',0,'N',10,'N','N','N','Y','2648d27d-1172-4b9e-a65f-7449820dfc87','Y','LBR_ICMSST_TaxBAmtWhd','Identifies the ICMS-ST Withheld Base Amount','ICMS-ST Withheld Base Amount','Y',TO_DATE('2014-03-27 11:35:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:35:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000127,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:35:45 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxBAmtWhd NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 11:36:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000491,'N','N','N',0,'N',10,'N','N','N','Y','8072c4e5-1472-4b74-9c21-8e4155fef1b1','Y','LBR_ICMSST_TaxAmtWhd','Identifies the ICMS-ST Withheld Amount','ICMS-ST Withheld Amount','Y',TO_DATE('2014-03-27 11:36:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-27 11:36:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000126,12,1000027,0,'LBR')
;

-- Mar 27, 2014 11:36:26 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_ICMSST_TaxAmtWhd NUMBER DEFAULT NULL 
;

-- Mar 27, 2014 12:02:58 PM BRT
INSERT INTO AD_Tab (Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','Y',143,40,'The ICMS Tab defines amounts for ICMS Tax','N','N','N','N','N','N','N',3,'81410fdd-0c0b-4aa6-b855-05c73dd3ad9d','LBR','ICMS','ICMS',1000027,'@Processed@=Y',0,TO_DATE('2014-03-27 12:02:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:02:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000460,1000027,'B')
;

-- Mar 27, 2014 12:03:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,22,'N','N',10,'Y',1000347,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','f855d055-7638-48f8-bc46-803b2155395b','N','Y',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000451)
;

-- Mar 27, 2014 12:03:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,22,'N','N',20,'Y',1000348,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','968bc91a-99d1-46d9-b2f7-5f49d17b59b9','N','Y','Y',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000452)
;

-- Mar 27, 2014 12:03:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,22,'N','N',30,'Y',1000349,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','4735429c-d4d3-4fe4-ae92-eb62b9929cce','N','N',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000458)
;

-- Mar 27, 2014 12:03:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,36,'N','N',40,'Y',1000350,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','c043881e-94ac-4a0f-82aa-4080953d5bb4','N','Y',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000459)
;

-- Mar 27, 2014 12:03:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,22,'N','N',50,'Y',1000351,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','e98f1bb5-3912-4a3d-81e9-e362bf0186a6','N','Y',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000460)
;

-- Mar 27, 2014 12:03:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,2,'N','N',60,'Y',1000352,'N','LBR','Identifies a ICMS Regime for taxes','ICMS Regime','1c925410-8dda-4d7f-b8b1-5104457686d3','N','Y',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000461)
;

-- Mar 27, 2014 12:03:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,5,'N','N',70,'Y',1000353,'N','LBR','Identifies a ICMS Tax Status in a standard taxation','ICMS Tax Status (Standard Taxation)','a4cec253-fff6-4ad5-8f96-f73ab0cee743','N','Y',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000462)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,5,'N','N',80,'Y',1000354,'N','LBR','Identifies a ICMS Tax Status in a simple taxation','ICMS Tax Status (Simple)','ca479681-77bc-4ca6-8937-4302990dd669','N','Y',0,0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:12','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000463)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,1,'N','N',90,'Y',1000355,'N','LBR','Identifies a Product Source','Product Source','3b396b90-ce35-4864-ab94-ac0db553ba24','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000464)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,1,'N','N',100,'Y',1000356,'N','LBR','Identifies a ICMS Tax Base Type','ICMS Tax Base Type','87a2bfaa-b7cd-418f-be55-430eb5b8f56b','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000465)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',110,'Y',1000357,'N','LBR','Indicates the Tax Base','Tax Base','d14ab19a-1d70-4c7b-b0eb-4fa5c14bb95e','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000466)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',120,'Y',1000358,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','12a01117-d32b-46de-9835-d05a4c281710','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000467)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',130,'Y',1000359,'N','LBR','Indicates the Tax Rate','Tax Rate','4e69929a-a8b4-40c6-b79c-c8aabbc4f426','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000468)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',140,'Y',1000360,'N','LBR','Defines the Tax Amount','Tax Amount','d085e39d-dba9-4f3f-8676-36fe8376656d','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000469)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',150,'Y',1000361,'N','LBR','Identifies the Tax Base Own Operation in percentage','Tax Base Own Operation (%)','a2925c5f-7061-4a01-b7c4-f62b4b6a10b5','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000470)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',160,'Y',1000362,'N','LBR','Identifies the Tax Rate Credit in percentage','Tax Rate Credit (%)','b4f050b9-39c4-4bb1-a041-6ca85613611e','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000471)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',170,'Y',1000363,'N','LBR','Identifies the Tax Amount Credit','Tax Amount Credit','5006f60e-8c86-4ddc-878c-8cb1012e83ef','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000472)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,2,'N','N',180,'Y',1000364,'N','LBR','Identifies the ICMS Tax Relief Type','ICMS Tax Relief Type','08a28a2e-13b1-4557-b86e-d0d8088bd374','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000473)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',190,'Y',1000365,'N','LBR','Identifies the Tax Relief Amount','Tax Relief Amount','3e95c054-0ae8-44b9-92eb-e27917fd1183','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000474)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',200,'Y',1000366,'N','LBR','Identifies the Tax Deferral Rate (%)','Tax Deferral Rate (%)','e9cfb377-d922-4e13-9e2b-01361769e766','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000475)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',210,'Y',1000367,'N','LBR','Identifies the ICMS Tax Operation Amount','ICMS Tax Operation Amount','2eaea691-8dfb-4af9-b2d6-a47e1df43ad8','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000476)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',220,'Y',1000368,'N','LBR','Identifies the Tax Deferral Amount','Tax Deferral Amount','1233713e-2a69-48d0-89e1-45815c4c3b07','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000477)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,1,'N','N',230,'Y',1000369,'N','LBR','Identifies a ICMS-ST Tax Base Type','ICMS-ST Tax Base Type','93a48b4e-03d5-46c4-b2b9-260cc4e51be5','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000479)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',240,'Y',1000370,'N','LBR','Indicates the ICMS-ST Tax Base','ICMS-ST Tax Base','1df3cd53-6aa1-441e-93e9-93b33c0a86d5','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000480)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',250,'Y',1000371,'N','LBR','Identifies the ICMS-ST Added Amount Margin in percentage','ICMS-ST Added Amount Margin (%)','3a0228f1-aeb2-4c38-aac3-85a8a1f41779','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000481)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',260,'Y',1000372,'N','LBR','Defines the ICMS-ST Tax Base Amount','ICMS-ST Tax Base Amount','9dae8c52-845a-46e4-9bf1-4183aa592cae','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000482)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',270,'Y',1000373,'N','LBR','Indicates the ICMS-ST Tax Rate','ICMS-ST Tax Rate','d935118b-d1d9-4673-906c-416e48131f22','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000483)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',280,'Y',1000374,'N','LBR','Defines the ICMS-ST Tax Amount','ICMS-ST Tax Amount','c37c7009-5a1d-433a-80c5-f4756f8542c5','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000484)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,22,'N','N',290,'Y',1000375,'N','LBR','Identifies the ICMS-ST UF Due','ICMS-ST UF Due','167250c0-2ea3-40c0-a74e-824b4e69b438','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000485)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',300,'Y',1000376,'N','LBR','Identifies the ICMS-ST Base Amount withheld in Sender UF','ICMS-ST Base Amount withheld in Sender UF','0a81ccf1-fd9b-4d50-9e5f-7c8f4926a804','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000486)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',310,'Y',1000377,'N','LBR','Identifies the ICMS-ST Amount withheld in Sender UF','ICMS-ST Amount withheld in Sender UF','6dcd767a-b735-41d1-89c7-6fae3640490b','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000487)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',320,'Y',1000378,'N','LBR','Identifies the ICMS-ST Base Amount in Receiver UF','ICMS-ST Base Amount in Receiver UF','13739e0d-c961-4a79-99cd-a1cfcd3be5a0','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000488)
;

-- Mar 27, 2014 12:03:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',330,'Y',1000379,'N','LBR','Identifies the ICMS-ST Amount in Receiver UF','ICMS-ST Amount in Receiver UF','57618115-d3c8-4b03-91ab-645b957129f2','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000489)
;

-- Mar 27, 2014 12:03:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',340,'Y',1000380,'N','LBR','Identifies the ICMS-ST Withheld Base Amount','ICMS-ST Withheld Base Amount','1f5b7e0b-cc4c-401d-88de-1b4ce4cbdffb','N','Y',0,0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000490)
;

-- Mar 27, 2014 12:03:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,10,'N','N',350,'Y',1000381,'N','LBR','Identifies the ICMS-ST Withheld Amount','ICMS-ST Withheld Amount','ec739b8f-bf92-4b92-8230-df9864460efc','N','Y',0,0,TO_DATE('2014-03-27 12:03:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:14','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000491)
;

-- Mar 27, 2014 12:03:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000027,1,'N','N',360,'Y',1000382,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','84778c0a-d7a5-4617-aad1-899c01cfe719','N','Y',0,0,TO_DATE('2014-03-27 12:03:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:03:14','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000453)
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000351
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000350
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000382
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000349
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000352
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000353
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000354
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000355
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000362
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000363
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000356
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000357
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000358
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000359
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000360
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000361
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000364
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000365
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000367
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000366
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000368
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000369
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000370
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000371
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000372
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000373
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000374
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000375
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000376
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000377
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000378
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000379
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000380
;

-- Mar 27, 2014 12:09:43 PM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000381
;

-- Mar 27, 2014 12:11:39 PM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','ICMS','ed102c95-79e4-459c-8ffb-c16d7e2a2bfd',1000003,TO_DATE('2014-03-27 12:11:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:11:38','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Mar 27, 2014 12:11:49 PM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','ICMS-ST','7aef2699-ace3-4e7d-ad9d-de0e6fe28ccb',1000004,TO_DATE('2014-03-27 12:11:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-27 12:11:49','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Mar 27, 2014 12:37:58 PM BRT
UPDATE AD_Field SET ColumnSpan=5,Updated=TO_DATE('2014-03-27 12:37:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000353
;

-- Mar 27, 2014 12:38:04 PM BRT
UPDATE AD_Field SET ColumnSpan=5,Updated=TO_DATE('2014-03-27 12:38:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000354
;

-- Mar 27, 2014 12:38:11 PM BRT
UPDATE AD_Field SET ColumnSpan=5,Updated=TO_DATE('2014-03-27 12:38:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000355
;

-- Mar 27, 2014 12:49:47 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000356
;

-- Mar 27, 2014 12:49:50 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:49:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000357
;

-- Mar 27, 2014 12:49:53 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:49:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000358
;

-- Mar 27, 2014 12:49:56 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:49:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000359
;

-- Mar 27, 2014 12:49:59 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000360
;

-- Mar 27, 2014 12:50:02 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:50:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000361
;

-- Mar 27, 2014 12:50:04 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:50:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000364
;

-- Mar 27, 2014 12:50:07 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:50:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000365
;

-- Mar 27, 2014 12:50:09 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000367
;

-- Mar 27, 2014 12:50:12 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000366
;

-- Mar 27, 2014 12:50:15 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000003,Updated=TO_DATE('2014-03-27 12:50:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000368
;

-- Mar 27, 2014 12:50:24 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000369
;

-- Mar 27, 2014 12:50:27 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000370
;

-- Mar 27, 2014 12:50:30 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000371
;

-- Mar 27, 2014 12:50:32 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000372
;

-- Mar 27, 2014 12:50:35 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000373
;

-- Mar 27, 2014 12:50:37 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000374
;

-- Mar 27, 2014 12:50:40 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000375
;

-- Mar 27, 2014 12:50:43 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000376
;

-- Mar 27, 2014 12:50:46 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000377
;

-- Mar 27, 2014 12:50:48 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000378
;

-- Mar 27, 2014 12:50:51 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000379
;

-- Mar 27, 2014 12:50:54 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000380
;

-- Mar 27, 2014 12:50:58 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000004,Updated=TO_DATE('2014-03-27 12:50:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000381
;

-- Mar 27, 2014 12:53:48 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-03-27 12:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000363
;

-- Mar 27, 2014 1:02:10 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-27 13:02:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000359
;

-- Mar 27, 2014 1:02:58 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-27 13:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000373
;

-- Mar 27, 2014 1:03:37 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-27 13:03:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000381
;

-- Mar 27, 2014 1:04:04 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-27 13:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000379
;

-- Mar 27, 2014 1:04:26 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-27 13:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000377
;

-- Mar 27, 2014 1:06:34 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-27 13:06:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000365
;

-- Mar 27, 2014 1:08:42 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-27 13:08:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000368
;

-- Mar 27, 2014 1:20:12 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMSRegime@=TN',Updated=TO_DATE('2014-03-27 13:20:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000353
;

-- Mar 27, 2014 1:20:23 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMSRegime@=SN',Updated=TO_DATE('2014-03-27 13:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000354
;

-- Mar 27, 2014 1:29:12 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:29:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000362
;

-- Mar 27, 2014 1:29:41 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000363
;

-- Mar 27, 2014 1:31:26 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 ',Updated=TO_DATE('2014-03-27 13:31:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000356
;

-- Mar 27, 2014 1:33:37 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2',Updated=TO_DATE('2014-03-27 13:33:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000357
;

-- Mar 27, 2014 1:34:31 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2',Updated=TO_DATE('2014-03-27 13:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000358
;

-- Mar 27, 2014 1:35:27 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2',Updated=TO_DATE('2014-03-27 13:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000359
;

-- Mar 27, 2014 1:35:55 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2',Updated=TO_DATE('2014-03-27 13:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000360
;

-- Mar 27, 2014 1:36:14 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1',Updated=TO_DATE('2014-03-27 13:36:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000361
;

-- Mar 27, 2014 1:37:36 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2',Updated=TO_DATE('2014-03-27 13:37:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000364
;

-- Mar 27, 2014 1:38:04 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2',Updated=TO_DATE('2014-03-27 13:38:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000365
;

-- Mar 27, 2014 1:38:35 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=51',Updated=TO_DATE('2014-03-27 13:38:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000367
;

-- Mar 27, 2014 1:38:51 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=51',Updated=TO_DATE('2014-03-27 13:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000366
;

-- Mar 27, 2014 1:39:08 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=51',Updated=TO_DATE('2014-03-27 13:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000368
;

-- Mar 27, 2014 1:52:24 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:52:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000369
;

-- Mar 27, 2014 1:55:41 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:55:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000370
;

-- Mar 27, 2014 1:56:10 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000371
;

-- Mar 27, 2014 1:56:35 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:56:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000372
;

-- Mar 27, 2014 1:56:54 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000373
;

-- Mar 27, 2014 1:57:09 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201',Updated=TO_DATE('2014-03-27 13:57:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000374
;

-- Mar 27, 2014 1:57:32 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1',Updated=TO_DATE('2014-03-27 13:57:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000375
;

-- Mar 27, 2014 1:57:54 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=41_2',Updated=TO_DATE('2014-03-27 13:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000376
;

-- Mar 27, 2014 1:58:07 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=41_2',Updated=TO_DATE('2014-03-27 13:58:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000377
;

-- Mar 27, 2014 1:58:16 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=41_2',Updated=TO_DATE('2014-03-27 13:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000378
;

-- Mar 27, 2014 1:58:20 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=41_2',Updated=TO_DATE('2014-03-27 13:58:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000379
;

-- Mar 27, 2014 1:58:29 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=60',Updated=TO_DATE('2014-03-27 13:58:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000380
;

-- Mar 27, 2014 1:58:35 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=60',Updated=TO_DATE('2014-03-27 13:58:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000381
;

-- Mar 27, 2014 3:07:12 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ',Updated=TO_DATE('2014-03-27 15:07:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000356
;

-- Mar 27, 2014 3:07:33 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ',Updated=TO_DATE('2014-03-27 15:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000357
;

-- Mar 27, 2014 3:08:39 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:08:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000358
;

-- Mar 27, 2014 3:08:58 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:08:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000359
;

-- Mar 27, 2014 3:09:07 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:09:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000360
;

-- Mar 27, 2014 3:09:30 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:09:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000362
;

-- Mar 27, 2014 3:09:35 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000363
;

-- Mar 27, 2014 3:10:31 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:10:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000369
;

-- Mar 27, 2014 3:10:45 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:10:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000370
;

-- Mar 27, 2014 3:10:53 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:10:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000371
;

-- Mar 27, 2014 3:11:05 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000372
;

-- Mar 27, 2014 3:11:14 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:11:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000373
;

-- Mar 27, 2014 3:11:24 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900',Updated=TO_DATE('2014-03-27 15:11:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000374
;

-- Mar 27, 2014 3:11:50 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500',Updated=TO_DATE('2014-03-27 15:11:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000380
;

-- Mar 27, 2014 3:11:56 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500',Updated=TO_DATE('2014-03-27 15:11:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000381
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000348
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000350
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000351
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000382
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000360
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000374
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000352
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000355
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000353
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000354
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000371
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000379
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000377
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000378
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000376
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000370
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000372
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000369
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000373
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000375
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000381
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000380
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000356
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000367
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000364
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000363
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000357
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000358
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000361
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000368
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000366
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000359
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000362
;

-- Mar 27, 2014 5:12:10 PM BRT
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000365
;

SELECT lbr_register_migration_script('201403261257.sql') FROM dual
;
