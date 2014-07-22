-- Jul 22, 2014 12:09:10 PM BRT
-- Separation of the tab 'Tax Definition' (Tax Configuration) to a new window
-- Correction of some wrong columns entity type
-- Zoom Across for NF-e Event Lot
-- Correction of CFOP field reference
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','M','Y','N','N',0,0,'LBR','Tax Definition (LBR)','Defines Additional Tax Configuration based on Relative Priority',1000019,'e0b2f319-cb52-4644-b3f5-e11ebd468660',TO_TIMESTAMP('2014-07-22 12:12:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:14:32 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000019,10,'N','N','N','N','N','Y','N',0,'b594a11e-1738-4901-9556-d47a6753d786','LBR','Tax Definition','Maintain Tax Definition',1000092,0,0,TO_TIMESTAMP('2014-07-22 12:14:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000017,'B',TO_TIMESTAMP('2014-07-22 12:14:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,22,'N','N',0,'Y',1001712,'N','LBR','Defines the Tax Definition','Tax Definition','46ca6ba2-5397-4efe-8f96-a2faacf1af33','N','N',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:16','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000360,TO_TIMESTAMP('2014-07-22 12:15:16','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,36,'N','N',0,'Y',1001713,'N','LBR','LBR_TaxDefinition_UU','d0107832-8cab-44ff-a225-ed5f48ed3557','N','N',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000361,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,22,'N','N',10,'Y',1001714,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','146072b8-a16a-4815-8810-1467cc0aa846','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000342,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,22,'Y','N',20,'Y',1001715,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','135f0677-5450-4c4b-88eb-351d3be893df','N','Y','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000343,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,7,'N','N',30,'Y',1001716,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','6e78d90b-bd85-4508-b817-853b8a2effef','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000369,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,10,'Y','N',40,'Y',1001717,'Y','The Relative Priority indicates the location to pick from first if an product is stored in more than one location.  (100 = highest priority, 0 = lowest).  For outgoing shipments, the location is picked with the highest priority where the entire quantity can be shipped from.  If there is no location, the location with the highest priority is used.
The Priority is ignored for products with Guarantee Date (always the oldest first) or if a specific instance is selected.
Incoming receipts are stored at the location with the highest priority, if not explicitly selected.','LBR','Where inventory should be picked from first','Relative Priority','5584954a-e3e6-425f-87ef-c78ef83c4bff','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000365,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,1,'N','N',50,'Y',1001718,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','721189dc-3f7f-48ca-92dd-01aec156f8bf','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',2,'N',0,2,1,'N','N',1000350,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,1,'Y','N',60,'Y',1001719,'N','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','LBR','This is a Sales Transaction','Sales Transaction','71e43b9c-11ef-4f40-89d7-1cbe39dfcfa5','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000351,TO_TIMESTAMP('2014-07-22 12:15:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000092,255,'N','N',70,'Y',1001720,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','a8ca9384-2c21-46c0-8214-d5643d9df767','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,5,3,'N','N',1000349,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'N','N',80,'Y',1001721,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner ','3046fd91-302c-4ba6-a1f0-0b97998438b4','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000344,107,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'Y','N',90,'Y',1001722,'N','LBR','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','a7415783-73fc-4055-aeaf-d6d5d4915c3b','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000352,107,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,10,'N','N',100,'Y',1001723,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','709f4b18-4158-4fc0-9ff3-141f6f83a212','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000346,107,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'Y','N',110,'Y',1001724,'N','The To Region indicates the receiving region on a document','LBR','Receiving Region','To','816aba53-0f4a-4807-8591-f1987fcc8fd3','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000366,107,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'N','N',120,'Y',1001725,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','841ae5cc-1bc0-4ff1-837f-89278f5660fa','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000364,106,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'Y','N',130,'Y',1001726,'N','LBR','Identifies a CFOP Product Category','CFOP Product Category','a67748b9-5dbf-4376-a97b-a4430e1e544b','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000358,106,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:19 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'N','N',140,'Y',1001727,'N','LBR','Identifies a Product Fiscal Group','Product Fiscal Group','8718fd40-d9ad-4150-9eaa-824ed919485f','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000354,106,TO_TIMESTAMP('2014-07-22 12:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:19 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'Y','N',150,'Y',1001728,'N','LBR','Identifies a Business Partner Fiscal Group','BP Fiscal Group','bfae92b8-7f06-4c1a-91e0-b20a115e0280','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000353,106,TO_TIMESTAMP('2014-07-22 12:15:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'N','N',160,'Y',1001729,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','3586e300-157b-4d70-8ec2-be05111ce908','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000357,106,TO_TIMESTAMP('2014-07-22 12:15:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,1,'Y','N',170,'Y',1001730,'N','LBR','Defines the Is Substituicao Tributaria Status','Is Substituicao Tributaria','b27cd9f7-6ee7-4a7b-b396-2fb513bad25f','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000355,106,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'N','N',180,'Y',1001731,'N','The Document Type determines document sequence and processing rules','LBR','Document type or rules','Document Type','23a64c22-929d-46bf-bf1b-69fdc01c281a','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000345,113,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,3,'Y','N',190,'Y',1001732,'N','LBR','Identifies a Transaction Type','Transaction Type','90bf8f4f-3242-4b0e-97b8-48388748564e','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000363,113,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,10,'N','N',200,'Y',1001733,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','509a9998-c02c-43f9-bf4a-9ece65145f9e','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000359,1000002,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'Y','N',210,'Y',1001734,'N','LBR','Identifies a Legal Message','Legal Message','848b84c2-d63f-48c1-8ec7-6b8aaaf676cf','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000356,1000002,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,2,'N','N',220,'Y',1001735,'N','LBR','Defines the Tax Status','Tax Status','5577469e-d40a-48a2-8c6d-df2718b06bc9','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000362,1000002,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:15:20 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000092,22,'Y','N',230,'Y',1001736,'N','LBR','Indentifies the CFOP','CFOP','eabcdc85-2285-4697-aada-5fe728041d8f','N','Y',0,0,0,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000381,1000002,TO_TIMESTAMP('2014-07-22 12:15:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:16:36 PM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000019,1000025,'N','Y','N','LBR','Y','Tax Definition','Defines Additional Tax Configuration based on Relative Priority','81ba1711-6a5a-48ed-ae70-28d1b3ba4abd','W','Y',0,TO_TIMESTAMP('2014-07-22 12:16:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-07-22 12:16:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 12:16:36 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000025, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000025)
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jul 22, 2014 12:17:18 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jul 22, 2014 12:17:25 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Jul 22, 2014 12:17:59 PM BRT
UPDATE AD_Tab SET IsActive='N',Updated=TO_TIMESTAMP('2014-07-22 12:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000015
;

-- Jul 22, 2014 12:47:36 PM BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 12:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000410
;

-- Jul 22, 2014 12:47:53 PM BRT
UPDATE AD_Field SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 12:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000309
;

-- Jul 22, 2014 12:49:03 PM BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 12:49:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000558
;

-- Jul 22, 2014 12:53:52 PM BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 12:53:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000170
;

-- Jul 22, 2014 12:56:21 PM BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 12:56:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000676
;

-- Jul 22, 2014 12:57:15 PM BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 12:57:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000217
;

-- Jul 22, 2014 12:58:59 PM BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 12:58:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000771
;

-- Jul 22, 2014 1:07:33 PM BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-07-22 13:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000275
;

-- Jul 22, 2014 1:45:21 PM BRT
UPDATE AD_Window SET Name='BP Fiscal Group (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000004
;

-- Jul 22, 2014 1:45:21 PM BRT
UPDATE AD_Menu SET Name='BP Fiscal Group (LBR)', Description='Maintain Business Partner Fiscal Groups', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000006
;

-- Jul 22, 2014 1:45:25 PM BRT
UPDATE AD_Window SET Name='Brazilian Fiscal Invoice (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000014
;

-- Jul 22, 2014 1:45:25 PM BRT
UPDATE AD_Menu SET Name='Brazilian Fiscal Invoice (LBR)', Description='Customer & Vendor Brazilian Fiscal Invoice Entry', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000017
;

-- Jul 22, 2014 1:45:28 PM BRT
UPDATE AD_Window SET Name='Brazilian Fiscal Invoice Event (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000018
;

-- Jul 22, 2014 1:45:28 PM BRT
UPDATE AD_Menu SET Name='Brazilian Fiscal Invoice Event (LBR)', Description='Customer & Vendor Brazilian Fiscal Invoice Event Entry', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000022
;

-- Jul 22, 2014 1:45:31 PM BRT
UPDATE AD_Window SET Name='Brazilian Fiscal Invoice Lot (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000017
;

-- Jul 22, 2014 1:45:31 PM BRT
UPDATE AD_Menu SET Name='Brazilian Fiscal Invoice Lot (LBR)', Description='Customer & Vendor Brazilian Fiscal Invoice Lot Entry', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000021
;

-- Jul 22, 2014 1:45:34 PM BRT
UPDATE AD_Window SET Name='CFOP (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000012
;

-- Jul 22, 2014 1:45:34 PM BRT
UPDATE AD_Menu SET Name='CFOP (LBR)', Description='Maintain CFOP', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000015
;

-- Jul 22, 2014 1:45:38 PM BRT
UPDATE AD_Window SET Name='CFOP BP Category (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000006
;

-- Jul 22, 2014 1:45:38 PM BRT
UPDATE AD_Menu SET Name='CFOP BP Category (LBR)', Description='Maintain CFOP Business Partner Categories', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000009
;

-- Jul 22, 2014 1:45:42 PM BRT
UPDATE AD_Window SET Name='CFOP Product Category (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000005
;

-- Jul 22, 2014 1:45:42 PM BRT
UPDATE AD_Menu SET Name='CFOP Product Category (LBR)', Description='Maintain CFOP Product Categories', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000008
;

-- Jul 22, 2014 1:45:46 PM BRT
UPDATE AD_Window SET Name='ICMS Matrix (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000009
;

-- Jul 22, 2014 1:45:46 PM BRT
UPDATE AD_Menu SET Name='ICMS Matrix (LBR)', Description='Maintain ICMS Matriz', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000012
;

-- Jul 22, 2014 1:45:49 PM BRT
UPDATE AD_Window SET Name='ISS Matrix (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000010
;

-- Jul 22, 2014 1:45:49 PM BRT
UPDATE AD_Menu SET Name='ISS Matrix (LBR)', Description='Maintain ISS (Services) Matrix', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000013
;

-- Jul 22, 2014 1:45:52 PM BRT
UPDATE AD_Window SET Name='Legal Message (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000001
;

-- Jul 22, 2014 1:45:52 PM BRT
UPDATE AD_Menu SET Name='Legal Message (LBR)', Description='Maintain Legal Messages', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000002
;

-- Jul 22, 2014 1:45:54 PM BRT
UPDATE AD_Window SET Name='NCM (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000000
;

-- Jul 22, 2014 1:45:54 PM BRT
UPDATE AD_Menu SET Name='NCM (LBR)', Description='NCM stands for Nomenclatura Comum do MERCOSUL', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000001
;

-- Jul 22, 2014 1:45:57 PM BRT
UPDATE AD_Window SET Name='NF-e Web Service (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000016
;

-- Jul 22, 2014 1:45:57 PM BRT
UPDATE AD_Menu SET Name='NF-e Web Service (LBR)', Description='Maintain NF-e Web Services', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000019
;

-- Jul 22, 2014 1:45:59 PM BRT
UPDATE AD_Window SET Name='Product Fiscal Group (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000003
;

-- Jul 22, 2014 1:45:59 PM BRT
UPDATE AD_Menu SET Name='Product Fiscal Group (LBR)', Description='Maintain Product Fiscal Groups', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000005
;

-- Jul 22, 2014 1:46:04 PM BRT
UPDATE AD_Window SET Name='Tax (Brazil) (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:46:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000007
;

-- Jul 22, 2014 1:46:04 PM BRT
UPDATE AD_Menu SET Name='Tax (Brazil) (LBR)', Description=NULL, IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:46:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000010
;

-- Jul 22, 2014 1:46:06 PM BRT
UPDATE AD_Window SET Name='Tax Configuration (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:46:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000011
;

-- Jul 22, 2014 1:46:06 PM BRT
UPDATE AD_Menu SET Name='Tax Configuration (LBR)', Description='Defines Tax Configuration', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:46:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000014
;

-- Jul 22, 2014 1:46:11 PM BRT
UPDATE AD_Window SET Name='Tax Formula (Brazil) (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000008
;

-- Jul 22, 2014 1:46:11 PM BRT
UPDATE AD_Menu SET Name='Tax Formula (Brazil) (LBR)', Description=NULL, IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000011
;

-- Jul 22, 2014 1:46:13 PM BRT
UPDATE AD_Window SET Name='Tax Group (NF) (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000002
;

-- Jul 22, 2014 1:46:13 PM BRT
UPDATE AD_Menu SET Name='Tax Group (NF) (LBR)', Description='Maintain NF Tax Groups', IsActive='Y',Updated=TO_TIMESTAMP('2014-07-22 13:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000003
;

-- Jul 22, 2014 1:46:16 PM BRT
UPDATE AD_Window SET Name='Transaction Tax (LBR)',Updated=TO_TIMESTAMP('2014-07-22 13:46:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000013
;

-- Jul 22, 2014 1:53:53 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000062,'RelType NF-e <= NF-e Event Lot','LBR','c78dc60d-462c-48f3-bc49-5489a0e050fd','N','T',0,0,TO_TIMESTAMP('2014-07-22 13:53:53','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-07-22 13:53:53','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jul 22, 2014 2:01:49 PM BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,WhereClause,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','LBR_NotaFiscal.LBR_NotaFiscal_ID IN (SELECT LBR_NotaFiscalEventLine.LBR_NotaFiscal_ID FROM LBR_NotaFiscalEventLine WHERE  LBR_NotaFiscalEventLine.LBR_NotaFiscalEvent_ID=@LBR_NotaFiscalEvent_ID@)','edfdc8b4-163e-46e5-b174-a5abfbf3cb60',0,TO_TIMESTAMP('2014-07-22 14:01:49','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-07-22 14:01:49','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000607,1000599,1000062,1000033,'LBR')
;

-- Jul 22, 2014 2:02:45 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000063,'RelType NF-e Event Lot <= NF-e','LBR','3f0a3a9e-6365-4d2f-89ba-3e856ac9b043','N','T',0,0,TO_TIMESTAMP('2014-07-22 14:02:45','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-07-22 14:02:45','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jul 22, 2014 2:08:48 PM BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,WhereClause,AD_Window_ID,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','LBR_NotaFiscalEvent.LBR_NotaFiscalEvent_ID IN (SELECT LBR_NotaFiscalEventLine.LBR_NotaFiscalEvent_ID FROM LBR_NotaFiscalEventLine WHERE  LBR_NotaFiscalEventLine.LBR_NotaFiscal_ID=@LBR_NotaFiscal_ID@)',1000018,'3f5142d5-ebe5-479c-b8ba-742596c10a62',0,TO_TIMESTAMP('2014-07-22 14:08:48','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-07-22 14:08:48','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000932,1000930,1000063,1000048,'LBR')
;

-- Jul 22, 2014 2:09:10 PM BRT
INSERT INTO AD_RelationType (Type,IsDirected,AD_Reference_Target_ID,AD_RelationType_ID,Name,AD_RelationType_UU,AD_Client_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Reference_Source_ID,Created) VALUES ('I','N',1000063,1000001,'NF-e<->NF-eEventLot','67ecae26-7c46-4dba-9b65-d88e5be5264d',0,0,0,TO_TIMESTAMP('2014-07-22 14:09:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000062,TO_TIMESTAMP('2014-07-22 14:09:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 22, 2014 2:14:02 PM BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1000018,Updated=TO_TIMESTAMP('2014-07-22 14:14:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000381
;

SELECT lbr_register_migration_script('201407221317.sql') FROM dual
;
