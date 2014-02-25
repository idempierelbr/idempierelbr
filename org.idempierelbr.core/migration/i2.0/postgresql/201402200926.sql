-- Feb 20, 2014 9:07:36 AM BRT
-- Transaction Tax Window
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','Q','Y','N','N',0,0,'LBR','Transaction Tax','View Transaction Tax',1000013,'06389dc4-c8ab-469f-8dbf-1d080984bd80',TO_TIMESTAMP('2014-02-20 09:07:36','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-02-20 09:07:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Feb 20, 2014 9:08:16 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000013,10,'N','N','N','N','N','Y','N',0,'eb2bd16e-b243-4944-a402-9c435f844d09','LBR','Transaction Tax',1000024,0,TO_TIMESTAMP('2014-02-20 09:08:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:08:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000012,'B')
;

-- Feb 20, 2014 9:08:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000024,22,'N','N',10,'Y',1000276,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','97a239fc-e673-42dd-8724-d084fbde4578','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000180)
;

-- Feb 20, 2014 9:08:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000024,22,'N','N',20,'Y',1000277,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','07fa7eb2-45ef-41fa-9016-dd1aef6ead4d','N','Y','Y',0,0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000181)
;

-- Feb 20, 2014 9:08:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000024,255,'N','N',30,'Y',1000278,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','909436da-378a-45a7-9b25-70f6a1ec35d8','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000186)
;

-- Feb 20, 2014 9:08:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000024,10,'N','N',40,'Y',1000279,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','d9b3afc8-b3b5-45b6-a66b-172a755c8fb8','N','N',0,0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000188)
;

-- Feb 20, 2014 9:08:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000024,36,'N','N',50,'Y',1000280,'N','LBR','LBR_Tax_UU','9792983c-55b7-4bb2-8853-302a3dbbf30b','N','N',0,0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000189)
;

-- Feb 20, 2014 9:08:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000024,1,'N','N',60,'Y',1000281,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','3ef60d7f-19ca-46a3-9064-d01944dee24c','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:08:22','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000187)
;

-- Feb 20, 2014 9:08:55 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-20 09:08:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000277
;

-- Feb 20, 2014 9:10:10 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000013,20,'N','N','N','N','N','Y','N',1,'ac17de59-790f-4e46-9df9-b84de9b6b3c9','LBR','Line',1000025,0,TO_TIMESTAMP('2014-02-20 09:10:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000013,'B')
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,22,'N','N',10,'Y',1000282,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','ba2b686e-8666-4066-9005-e371475afc3e','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000190)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,22,'N','N',20,'Y',1000283,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','b8361c12-67fd-4d04-9f4d-b3294d3894e8','N','Y','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000191)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,1,'N','N',30,'Y',1000284,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','8da7c77d-5802-4f6a-b538-a24ab0b2b202','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000195)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,22,'N','N',40,'Y',1000285,'N','LBR','Identifies a Legal Message','Legal Message','92f86a77-4665-4be7-a1eb-e5ec82fa17f4','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000196)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,1,'N','N',50,'Y',1000286,'N','LBR','Indicates if the Tax should be Posted (Account)','Post Tax','4f8577de-ee1d-4153-9d71-69c30ebfa664','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000197)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,10,'N','N',60,'Y',1000287,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','21189e15-d8ba-4f93-be34-525776c75bc2','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000198)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,10,'N','N',70,'Y',1000288,'N','LBR','Defines the Tax Amount','Tax Amount','f29d3828-da21-4401-9568-9bce5e45d1a3','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000199)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,10,'N','N',80,'Y',1000289,'N','LBR','Indicates the Tax Base','Tax Base','b459cb9b-199c-4671-8a3e-9711e751a22f','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000200)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,10,'N','N',90,'Y',1000290,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','7daa1ac4-9a10-4857-8d90-79d6196f8348','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000201)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,10,'N','N',100,'Y',1000291,'N','LBR','Tax Base Type','ec2b8b91-76a0-4de6-b7c4-1eb0fdd3a4fc','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000202)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,10,'N','N',110,'Y',1000292,'N','LBR','Tax Line for the Transaction Tax','Transaction Tax Line','ae23d5da-7121-4790-b05d-ce63d76eac7b','N','N',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000203)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,36,'N','N',120,'Y',1000293,'N','LBR','LBR_TaxLine_UU','cf0201fb-cbc6-4053-acdc-b6f4e4f788a1','N','N',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000204)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,13,'N','N',130,'Y',1000294,'N','LBR','Tax List Amount (Flat Rate) stated by law','Tax List Amount (Flat Rate)','9e492fba-ef14-4411-ad60-92176f8dd2b2','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000205)
;

-- Feb 20, 2014 9:10:17 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,22,'N','N',140,'Y',1000295,'N','Primary key table LBR_TaxName','LBR','Primary key table LBR_TaxName','Tax Name','1f90a7c5-624c-4d54-8307-0c799f2a78b0','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000206)
;

-- Feb 20, 2014 9:10:18 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,10,'N','N',150,'Y',1000296,'N','LBR','Indicates the Tax Rate','Tax Rate','cccf440a-395c-47db-a912-d7dbfa7888a0','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:17','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000207)
;

-- Feb 20, 2014 9:10:18 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,22,'N','N',160,'Y',1000297,'N','LBR','Brazilian Tax Status','Tax Status','0b901f0d-8936-49d7-b93d-10b20e7976cb','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:18','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000208)
;

-- Feb 20, 2014 9:10:18 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,22,'N','N',170,'Y',1000298,'N','The Quantity indicates the number of a specific product or item for this document.','LBR','Quantity','Quantity','6df4273c-122f-437d-843f-a70695e45afb','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:18','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000209)
;

-- Feb 20, 2014 9:10:18 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000025,1,'N','N',180,'Y',1000299,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','d57199d6-df3a-406e-9e94-ef454b2d7899','N','Y',0,0,TO_TIMESTAMP('2014-02-20 09:10:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-20 09:10:18','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000194)
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000287
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000293
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000292
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000299
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000295
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000297
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000296
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000289
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000290
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000285
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000288
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000286
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000284
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000294
;

-- Feb 20, 2014 9:13:53 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000298
;

-- Feb 20, 2014 9:14:22 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-20 09:14:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000283
;

-- Feb 20, 2014 9:15:02 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-02-20 09:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000297
;

-- Feb 20, 2014 9:15:20 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-02-20 09:15:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000289
;

-- Feb 20, 2014 9:15:39 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-02-20 09:15:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000285
;

-- Feb 20, 2014 9:15:57 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-02-20 09:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000288
;

-- Feb 20, 2014 9:16:23 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_TIMESTAMP('2014-02-20 09:16:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000284
;

-- Feb 20, 2014 9:16:37 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-02-20 09:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000298
;

-- Feb 20, 2014 9:16:37 AM BRT
UPDATE AD_Tab SET AD_Column_ID=1000198,Updated=TO_TIMESTAMP('2014-02-20 10:26:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000025
;

-- Feb 20, 2014 12:38:52 PM BRT
UPDATE AD_Tab SET Parent_Column_ID=1000188,Updated=TO_TIMESTAMP('2014-02-20 12:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000025
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000287
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000294
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000290
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000288
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000298
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000284
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000283
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000299
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000295
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000297
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000296
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000289
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000285
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000291
;

-- Feb 20, 2014 12:41:27 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000286
;

SELECT lbr_register_migration_script('201402200926.sql') FROM dual
;
