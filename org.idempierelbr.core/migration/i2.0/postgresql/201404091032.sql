-- Apr 9, 2014 10:23:23 AM BRT
-- System Configurator entries for Taxes
-- Additional columns for Doc Line Details child taxes
-- Details Tab (and children) from Invoice (customer)
INSERT INTO AD_SysConfig (AD_SysConfig_ID,ConfigurationLevel,Value,Description,AD_SysConfig_UU,Created,Updated,AD_Org_ID,CreatedBy,IsActive,UpdatedBy,Name,AD_Client_ID,EntityType) VALUES (1000003,'C','TN','Permite informar o regime de tributação do ICMS','a9841911-f63e-4361-aa0e-9809e40593b0',TO_TIMESTAMP('2014-04-09 10:23:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-09 10:23:23','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,'LBR_ICMS_REGIME',0,'LBR')
;

-- Apr 14, 2014 9:18:23 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000590,'Y','N','N',0,'N',1,'N','N','N','Y','76f814d0-b7a7-4116-a1a3-7bc2d2715c0a','Y','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_TIMESTAMP('2014-04-14 09:18:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-14 09:18:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000030,0,'LBR')
;

-- Apr 14, 2014 9:19:19 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD COLUMN IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Apr 14, 2014 9:40:05 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000591,'Y','N','N',0,'N',1,'N','N','N','Y','50881ab5-0ae6-4ab3-8d86-9aabaa69ea63','Y','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_TIMESTAMP('2014-04-14 09:40:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-14 09:40:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000027,0,'LBR')
;

-- Apr 14, 2014 9:40:09 AM BRT
ALTER TABLE LBR_DocLine_ICMS ADD COLUMN IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Apr 14, 2014 9:41:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000592,'Y','N','N',0,'N',1,'N','N','N','Y','a4121988-0adc-4019-addb-0573579ce9c3','Y','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_TIMESTAMP('2014-04-14 09:41:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-14 09:41:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000031,0,'LBR')
;

-- Apr 14, 2014 9:41:45 AM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD COLUMN IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Apr 14, 2014 9:42:27 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000593,'Y','N','N',0,'N',1,'N','N','N','Y','c31e30fb-6021-4ef5-94de-bca1c0d4ae42','Y','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_TIMESTAMP('2014-04-14 09:42:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-14 09:42:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000028,0,'LBR')
;

-- Apr 14, 2014 9:42:31 AM BRT
ALTER TABLE LBR_DocLine_IPI ADD COLUMN IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Apr 14, 2014 9:42:59 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000594,'Y','N','N',0,'N',1,'N','N','N','Y','6a55f115-ee0f-455c-902e-87a9fa4516a3','Y','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_TIMESTAMP('2014-04-14 09:42:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-14 09:42:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000032,0,'LBR')
;

-- Apr 14, 2014 9:43:02 AM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Apr 14, 2014 9:43:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000595,'Y','N','N',0,'N',1,'N','N','N','Y','75f17fd9-36c6-4370-889a-9d3c3c7ea86a','Y','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_TIMESTAMP('2014-04-14 09:43:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-14 09:43:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000029,0,'LBR')
;

-- Apr 14, 2014 9:43:36 AM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Apr 15, 2014 2:48:39 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSST_IsTaxIncluded',1000168,'The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Tax is included in the price ','Price includes Tax','76b341e4-3deb-4901-9a9f-b120eab276c6',TO_TIMESTAMP('2014-04-15 14:48:39','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-15 14:48:39','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 15, 2014 2:49:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000596,'Y','N','N',0,'N',1,'N','N','N','Y','8f79a7e2-5a52-40f4-886e-1a05cab341a2','Y','LBR_ICMSST_IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_TIMESTAMP('2014-04-15 14:49:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-15 14:49:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000168,20,1000027,0,'LBR')
;

-- Apr 15, 2014 2:49:18 PM BRT
ALTER TABLE LBR_DocLine_ICMS ADD COLUMN LBR_ICMSST_IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (LBR_ICMSST_IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Apr 16, 2014 12:44:45 PM BRT
UPDATE AD_Tab SET SeqNo=300,Updated=TO_TIMESTAMP('2014-04-16 12:44:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=271
;

-- Apr 16, 2014 12:44:53 PM BRT
UPDATE AD_Tab SET SeqNo=400,Updated=TO_TIMESTAMP('2014-04-16 12:44:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=460
;

-- Apr 16, 2014 12:44:59 PM BRT
UPDATE AD_Tab SET SeqNo=500,Updated=TO_TIMESTAMP('2014-04-16 12:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=684
;

-- Apr 16, 2014 12:47:59 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',167,30,'The Invoice Line Details Tab defines details for the individual line item.','N','N','N','N','N','N','N',2,'e3d30108-2052-4ab4-b2dd-c202f2414754','LBR','Invoice Line Details','Invoice Line Details',1000033,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-16 12:47:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:47:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000426,1000026,'B')
;

-- Apr 16, 2014 12:48:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,36,'N','N',0,'Y',1000461,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','bbf89f88-0db7-470d-b9ac-c640d6bb849a','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000424)
;

-- Apr 16, 2014 12:48:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,1,'N','N',0,'Y',1000462,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','e4dc67f5-0451-41ab-a7d7-f147686e8695','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000422)
;

-- Apr 16, 2014 12:48:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'N','N',0,'Y',1000463,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','1ec6e41d-33d1-4004-a26a-1d15b197b360','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000423)
;

-- Apr 16, 2014 12:48:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,10,'N','N',0,'Y',1000464,'N','The Sales Order Line is a unique identifier for a line in an order.','LBR','Sales Order Line','Sales Order Line','302a69a3-e513-4c9e-9f55-204adef07047','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000425)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'N','N',0,'Y',1000465,'N','The Invoice Line uniquely identifies a single line of an Invoice.','LBR','Invoice Detail Line','Invoice Line','f71a25a8-c164-4816-b56c-4b1c64b3c25a','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000426)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,10,'N','N',0,'Y',1000466,'N','Detail information about the returned goods','LBR','Return Material Authorization Line','RMA Line','77b1f85f-9827-4398-8f81-1e0941e00087','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000427)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'N','N',10,'Y',1000467,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','13e086a9-d90c-4f8e-95e8-e34b04f57080','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000416)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'Y','N',20,'Y',1000468,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','9012ba79-aea4-4bb3-a6bc-b64979785328','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000417)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,40,'N','N',30,'Y',1000469,'N','LBR','Key of the Product','Product Key','ce8ac561-fbfe-421d-af1f-5c296d939e55','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000428)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,255,'N','N',40,'Y',1000470,'N','LBR','Name of the Product','Product Name','3f5cb2e6-e479-4eda-9c8d-908d47868ede','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,1,'N',0,5,1,'N','N',1000429)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'N','N',50,'Y',1000471,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','23e81c60-2af3-47c6-8ea0-87ade2ae0c07','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000430)
;

-- Apr 16, 2014 12:48:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,6,'Y','N',60,'Y',1000472,'N','Identifies an exception to a NCM rule.','LBR','NCM Exception','EX TIPI','f51b870f-b4cf-4860-9ab9-44ec4468107b','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,4,'N',0,2,1,'N','N',1000431)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'N','N',70,'Y',1000473,'N','LBR','Indentifies the CFOP','CFOP','2e19dd1d-11ea-4d05-85c7-eb89e7e6964e','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000432)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,30,'Y','N',80,'Y',1000474,'N','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','LBR','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Taxable UPC/EAN','5fad0b7b-23b6-4a4a-94b3-402efd35abcc','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,4,'N',0,2,1,'N','N',1000439)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'N','N',90,'Y',1000475,'N','The Taxable Quantity indicates the number of a specific product or item for this document.','LBR','Taxable Quantity','Taxable Quantity','dcd2c1de-e469-46cf-9c7c-fbd1981ae7be','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000434)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000033,22,'Y','N',100,'Y',1000476,'N','The Taxable UOM defines a unique non monetary Unit of Measure','LBR','Taxable Unit of Measure','Taxable UOM','6fb25fbf-001e-46ff-8540-2e6bf80012e1','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,4,'N',0,2,1,'N','N',1000433)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,10,'N','N',110,'Y',1000477,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','d6c99bb6-64e9-4fac-82a4-397880280f27','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000447,1000002)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,2,'Y','N',120,'Y',1000478,'N','Indicates the taxation type used to calculate taxes','LBR','Taxation type used to calculate taxes','Taxation Type','5105706b-ce60-4388-aa4a-a19af2709e91','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000450,1000002)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,22,'N','N',130,'Y',1000479,'N','The Taxable Price indicates the Price for a product or service.','LBR','Taxable Price','Taxable Price','25239af8-c624-4591-868f-1c82aabe7396','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,1,'N',0,2,1,'N','N',1000435,103)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,14,'N','N',140,'Y',1000480,'N','LBR','Insured Amount','ddb7560d-fc16-4303-a9ad-be63a3eb6058','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000436,103)
;

-- Apr 16, 2014 12:48:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,22,'Y','N',150,'Y',1000481,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','25290408-e7b8-4b4c-8ef0-c81b707a74f1','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000437,103)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,22,'N','N',160,'Y',1000482,'N','The Freight Amount indicates the amount charged for Freight in the document currency.','LBR','Freight Amount ','Freight Amount','0d1500c5-efc6-4f84-8995-babb00932a49','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000438,103)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,14,'Y','N',170,'Y',1000483,'N','LBR','Surcharges','33475e72-a08b-4ed5-a6dd-bfd217ea4a61','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,4,'N',0,2,1,'N','N',1000440,103)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,22,'N','N',180,'Y',1000484,'N','Indicates the gross amount for a product/service/tax/etc.','LBR','Gross Amount','Gross Amount','01c37583-faca-4780-a40c-4d1ee3856975','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000441,103)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,1,'Y','N',190,'Y',1000485,'N','The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.','LBR','This Gross Amount is in Grand Total','Gross Amount is in Grand Total','fedc2841-b99d-4457-a12d-bdaa566c7d60','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,5,'N',0,2,1,'N','N',1000442,103)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,22,'N','N',200,'N',1000486,'N','LBR','Tax Line Total Amount','Tax Line Total','b8393f4c-58be-4f30-9c15-a53f789759d0','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000449,103)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,20,'N','N',210,'Y',1000487,'N','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','LBR','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','Order Reference','c1ecc66f-9cee-48a0-8c60-561fe1f83e4c','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000443,104)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,22,'Y','N',220,'Y',1000488,'N','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.','LBR','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','Order Line Reference','5b257a89-7be7-4239-b68c-b64b3f46e903','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000444,104)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,3,'N','N',230,'Y',1000489,'N','LBR','Specific Product in a NF-e','NF-e Specific Product','bf5addca-c8db-47d0-b540-a819a52b3dd2','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000445,104)
;

-- Apr 16, 2014 12:48:30 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000033,36,'Y','N',240,'Y',1000490,'N','Identifies the FCI Control Number','LBR','Import Content Sheet (FCI) Control Number','FCI Control Number','ec0727ac-6368-4e16-ad73-c6784674ac9c','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000446,104)
;

-- Apr 16, 2014 12:48:31 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',1000033,0,'N','N',250,'N',1000491,'N','LBR','Memo','Memo','b19e2b09-bad7-48e3-9130-c6df262b25b4','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,5,4,'N','N',1000448,104)
;

-- Apr 16, 2014 12:52:50 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',167,40,'The ICMS Tab defines amounts for ICMS Tax','N','N','N','N','N','N','N',3,'f6271fb2-a832-42f7-a9e8-0378bac86a84','LBR','ICMS','ICMS',1000034,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-16 12:52:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:52:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000460,1000027,'B')
;

-- Apr 16, 2014 12:53:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,22,'N','N',0,'Y',1000492,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','db25fd67-6190-4d1d-bb56-7e82128d5908','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:53:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000460)
;

-- Apr 16, 2014 12:53:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,1,'N','N',0,'Y',1000493,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','7eebee92-8339-4a97-adf9-c503a54a36ed','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:53:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000453)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,22,'N','N',0,'Y',1000494,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','2a7d21f7-b286-433b-92ad-018c158e80c0','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:53:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000458)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,36,'N','N',0,'Y',1000495,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','288eb63b-9a35-408a-bfb9-45a6ef55cc64','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000459)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,22,'N','N',10,'Y',1000496,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','51b8bf31-ae5e-4e27-981a-4b4b1c5230e7','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000451)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,22,'N','N',20,'Y',1000497,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','79206897-2415-44f3-8644-6c666cad69f9','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000452)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,2,'N','N',30,'Y',1000498,'N','LBR','Identifies a ICMS Regime for taxes','ICMS Regime','dd2bec7f-05f8-45f5-a083-20090efc4742','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000461)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,5,'N','N',40,'Y',1000499,'N','@LBR_ICMSRegime@=TN','LBR','Identifies a ICMS Tax Status in a standard taxation','ICMS Tax Status (Standard Taxation)','cdcd1ec1-4ea6-461b-a292-51119e6fa19f','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,5,1,'N','N',1000462)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,5,'N','N',50,'Y',1000500,'N','@LBR_ICMSRegime@=SN','LBR','Identifies a ICMS Tax Status in a simple taxation','ICMS Tax Status (Simple)','5b3cd0c9-b6aa-427d-88ba-9f64bfc878e5','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,5,1,'N','N',1000463)
;

-- Apr 16, 2014 12:53:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,1,'N','N',60,'Y',1000501,'N','LBR','Identifies a Product Source','Product Source','71cddbc2-210c-41c9-be61-7ea0bd985c3e','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,5,1,'N','N',1000464)
;

-- Apr 16, 2014 12:53:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,10,'N','N',70,'Y',1000502,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Rate Credit in percentage','Tax Rate Credit (%)','f6de57fe-ec79-49d4-b16a-79954a2d22fc','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,1,'N',0,2,1,'N','N',1000471)
;

-- Apr 16, 2014 12:53:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000034,10,'N','N',80,'Y',1000503,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Amount Credit','Tax Amount Credit','1028e70a-a1a2-4e37-8605-bc741b4da06b','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,4,'N',0,2,1,'N','N',1000472)
;

-- Apr 16, 2014 12:53:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,1,'N','N',90,'Y',1000504,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Identifies a ICMS Tax Base Type','ICMS Tax Base Type','1f6ae121-76ab-4013-b764-91bc0c68e55e','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,1,'N',0,2,1,'N','N',1000465,1000003)
;

-- Apr 16, 2014 12:53:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',100,'Y',1000505,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Indicates the Tax Base','Tax Base','188f0058-48cf-4f24-bef8-2f7dd8d08f38','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,1,'N',0,2,1,'N','N',1000466,1000003)
;

-- Apr 16, 2014 12:53:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',110,'Y',1000506,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Base Amount','Tax Base Amount','cb48687d-5f14-4216-a19a-5171d8f97d3e','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,1,'N',0,2,1,'N','N',1000467,1000003)
;

-- Apr 16, 2014 12:53:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'Y','N',120,'Y',1000507,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the Tax Rate','Tax Rate','009e8233-f14c-4d76-9ec8-6bbf8669492c','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,4,'N',0,2,1,'N','N',1000468,1000003)
;

-- Apr 16, 2014 12:53:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',130,'Y',1000508,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Amount','Tax Amount','1237156a-c073-47ca-941b-9772b2042abc','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000469,1000003)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',140,'Y',1000509,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the Tax Base Own Operation in percentage','Tax Base Own Operation (%)','d6668cb3-04c5-4375-993d-c9d8aa3af0fc','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,1,'N',0,2,1,'N','N',1000470,1000003)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,2,'N','N',150,'Y',1000510,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the ICMS Tax Relief Type','ICMS Tax Relief Type','2a6ec0ae-9e5b-4679-8083-38ae482670f9','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,2,1,'N','N',1000473,1000003)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'Y','N',160,'Y',1000511,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the Tax Relief Amount','Tax Relief Amount','2bb5863e-0625-4e4a-b086-f25ac9a1dd99','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',300,4,'N',0,2,1,'N','N',1000474,1000003)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',170,'Y',1000512,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the ICMS Tax Operation Amount','ICMS Tax Operation Amount','9fba7841-ff0d-4b70-bec7-29f1db3ea439','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,1,'N',0,2,1,'N','N',1000476,1000003)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',180,'Y',1000513,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Rate (%)','Tax Deferral Rate (%)','4fc7f1a2-f88a-4f3c-a592-49dcddc9e78c','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,1,'N',0,2,1,'N','N',1000475,1000003)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'Y','N',190,'Y',1000514,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Amount','Tax Deferral Amount','9af1e46f-fab7-4f3a-8a6f-6c09c3e56f70','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,4,'N',0,2,1,'N','N',1000477,1000003)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,1,'N','N',200,'Y',1000515,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies a ICMS-ST Tax Base Type','ICMS-ST Tax Base Type','0c91597e-77a8-4a80-862a-54d3513a1eaa','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000479,1000004)
;

-- Apr 16, 2014 12:53:15 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',210,'Y',1000516,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Base','ICMS-ST Tax Base','686770a5-3301-4176-8ef3-7de018f24309','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000480,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',220,'Y',1000517,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the ICMS-ST Added Amount Margin in percentage','ICMS-ST Added Amount Margin (%)','5820cca6-094a-44a1-bf9a-481c116040c8','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000481,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',230,'Y',1000518,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Base Amount','ICMS-ST Tax Base Amount','f88c231d-0ab7-4edc-9253-3a31da1048af','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000482,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'Y','N',240,'Y',1000519,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Rate','ICMS-ST Tax Rate','7cd1d01d-cb45-48a9-9aaf-1c2822806974','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,4,'N',0,2,1,'N','N',1000483,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',250,'Y',1000520,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Amount','ICMS-ST Tax Amount','2067ad23-f1f0-4c7a-aef1-71b31d88d919','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000484,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,22,'N','N',260,'Y',1000521,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the ICMS-ST UF Due','ICMS-ST UF Due','94e22d53-b545-4ef7-a5cf-25fd675d466f','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,1,'N',0,2,1,'N','N',1000485,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',270,'Y',1000522,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount withheld in Sender UF','ICMS-ST Base Amount withheld in Sender UF','2b7fc1db-55ab-4281-8be4-e778719ca715','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000486,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'Y','N',280,'Y',1000523,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount withheld in Sender UF','ICMS-ST Amount withheld in Sender UF','c8867fd2-a2a4-49d6-81e1-2fce5f024be7','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000487,1000004)
;

-- Apr 16, 2014 12:53:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',290,'Y',1000524,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount in Receiver UF','ICMS-ST Base Amount in Receiver UF','4e1707be-db99-4d2d-9c84-142901701504','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000488,1000004)
;

-- Apr 16, 2014 12:53:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'Y','N',300,'Y',1000525,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount in Receiver UF','ICMS-ST Amount in Receiver UF','777d929c-afe9-4f58-8aab-0426fd149458','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,4,'N',0,2,1,'N','N',1000489,1000004)
;

-- Apr 16, 2014 12:53:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'N','N',310,'Y',1000526,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Base Amount','ICMS-ST Withheld Base Amount','613c15b8-36ca-4b1a-8417-895f7d6851f8','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000490,1000004)
;

-- Apr 16, 2014 12:53:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000034,10,'Y','N',320,'Y',1000527,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Amount','ICMS-ST Withheld Amount','51737bde-af83-467a-b261-5906210cde0c','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:53:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:53:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,4,'N',0,2,1,'N','N',1000491,1000004)
;

-- Apr 16, 2014 12:54:20 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',167,50,'The IPI Tab defines amounts for IPI Tax','N','N','N','N','N','N','N',3,'65ca5b43-f308-4c26-a771-4343c7ef46a1','LBR','IPI','IPI',1000035,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-16 12:54:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000501,1000028,'B')
;

-- Apr 16, 2014 12:54:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,22,'N','N',0,'Y',1000528,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','2e0ea595-8596-4b99-95af-076918a58b43','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000501)
;

-- Apr 16, 2014 12:54:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,1,'N','N',0,'Y',1000529,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','24e964fb-0ad1-4f8b-b2ff-dbc7fa99f93b','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000498)
;

-- Apr 16, 2014 12:54:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,22,'N','N',0,'Y',1000530,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','f6f07639-17bc-40ff-ad63-ea81264071b6','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000499)
;

-- Apr 16, 2014 12:54:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,36,'N','N',0,'Y',1000531,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','acc5f2be-5c19-40b4-813e-afebc82079bd','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000500)
;

-- Apr 16, 2014 12:54:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,22,'N','N',10,'Y',1000532,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','64921837-2bc6-4fcd-8f0c-bd46d7cbca77','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000492)
;

-- Apr 16, 2014 12:54:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,22,'Y','N',20,'Y',1000533,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','a853334b-8a5d-49b9-b224-325f8bd1f615','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000493)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,2,'N','N',30,'Y',1000534,'N','LBR','Identifies a IPI Tax Status','IPI Tax Status','634b947f-b8c3-40bd-9bee-fa089474d260','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000502)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,5,'N','N',40,'Y',1000535,'N','LBR','Identifies the IPI Tax Regarding Class','IPI Tax Regarding Class','c774bb29-0f3b-45b4-a779-d3c59673988b','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000503)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,3,'Y','N',50,'Y',1000536,'N','LBR','Identifies the IPI Tax Regarding Code','IPI Tax Regarding Code','866bddc9-788f-4108-af48-84e73709bee8','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000504)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,14,'N','N',60,'Y',1000537,'N','Used to identify Legal Entities in Brazil','LBR','Used to identify Legal Entities in Brazil','CNPJ','ee48c05f-ea3d-474b-bce0-db1c28ec2184','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000505)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,60,'N','N',70,'Y',1000538,'N','LBR','Identifies the IPI Tax Seal Code','IPI Tax Seal Code','dd511301-1872-431e-9e54-367a72b0c546','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000506)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,12,'Y','N',80,'Y',1000539,'N','LBR','Identifies the IPI Tax Seal Qty','IPI Tax Seal Qty','8b351fc7-a2e3-4174-bfe8-f1df808aff27','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000507)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,3,'N','N',90,'Y',1000540,'N','LBR','Calculation','f7e2a03a-ecdf-4e48-88d2-220ea01f2777','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000508)
;

-- Apr 16, 2014 12:54:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,10,'N','N',100,'Y',1000541,'N','@CalculationType@=PER','LBR','Defines the Tax Base Amount','Tax Base Amount','6352b9e6-546a-4f38-a693-936a8f72fd54','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000509)
;

-- Apr 16, 2014 12:54:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,10,'Y','N',110,'Y',1000542,'N','@CalculationType@=PER','LBR','Indicates the Tax Rate','Tax Rate','cd500ea2-e621-4b6d-9d94-38b4d2ec49ac','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,4,'N',0,2,1,'N','N',1000510)
;

-- Apr 16, 2014 12:54:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,22,'N','N',120,'Y',1000543,'N','@CalculationType@=AMT','LBR','Total Quantity','Total Quantity','118a05e5-bd56-4908-8237-a27479d9d596','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000511)
;

-- Apr 16, 2014 12:54:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,22,'Y','N',130,'Y',1000544,'N','The Actual or Unit Price indicates the Price for a product in source currency.','@CalculationType@=AMT','LBR','Actual Price ','Unit Price','ebfdf4d5-d2de-4d39-afbb-d6641d01cb73','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000512)
;

-- Apr 16, 2014 12:54:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000035,10,'N','N',140,'Y',1000545,'N','@CalculationType@=PER | @CalculationType@=AMT','LBR','Defines the Tax Amount','Tax Amount','6093c44b-c74f-4355-a0fe-6fd0f720dc06','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:54:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:54:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000513)
;

-- Apr 16, 2014 12:55:23 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',167,60,'The PIS Tab defines amounts for PIS Tax','N','N','N','N','N','N','N',3,'aea11c05-74fb-4b2c-951a-6d758d8665d6','LBR','PIS','PIS',1000036,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-16 12:55:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000521,1000029,'B')
;

-- Apr 16, 2014 12:55:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000036,22,'N','N',0,'Y',1000546,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','c7c0188d-15ca-4e0d-a433-a5a62c7a3ca3','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000521)
;

-- Apr 16, 2014 12:55:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000036,1,'N','N',0,'Y',1000547,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','8bdd38f3-e795-4ece-a672-45be08c1d257','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000520)
;

-- Apr 16, 2014 12:55:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000036,36,'N','N',0,'Y',1000548,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','c930b564-14b9-4c31-b61b-4d508a3616d0','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000523)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000036,22,'N','N',0,'Y',1000549,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','7b4dde52-b544-48d3-86cf-a83be1082ac5','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000522)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000036,22,'N','N',10,'Y',1000550,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','09b16061-44ef-4c45-b512-a8c81dfc9c60','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000514)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000036,22,'Y','N',20,'Y',1000551,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','b0ecd6b7-a3b5-47c8-9ad3-a54ac03cc1a4','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000515)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,2,'N','N',30,'Y',1000552,'N','LBR','Identifies a PIS Tax Status','PIS Tax Status','7e8a3fa7-2531-49de-be30-3eb61ebaa295','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000524,1000005)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,3,'N','N',40,'Y',1000553,'N','@LBR_PIS_TaxStatus@!'''' & @LBR_PIS_TaxStatus@!01 & @LBR_PIS_TaxStatus@!02 & @LBR_PIS_TaxStatus@!03 & @LBR_PIS_TaxStatus@!04 & @LBR_PIS_TaxStatus@!05 & @LBR_PIS_TaxStatus@!06 & @LBR_PIS_TaxStatus@!07 & @LBR_PIS_TaxStatus@!08 & @LBR_PIS_TaxStatus@!09','LBR','Calculation','4d0c7b47-bc75-4288-bf94-983e93d9571b','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000525,1000005)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',50,'Y',1000554,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','8db129a7-103a-46bd-a614-427a2fee49c0','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000526,1000005)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',60,'Y',1000555,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','565dcfaa-152a-4980-bfa1-a8ec4f6c7431','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000527,1000005)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',70,'Y',1000556,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','a75fe283-eb9f-4140-a348-38a2b8ceca5a','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000528,1000005)
;

-- Apr 16, 2014 12:55:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',80,'Y',1000557,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Total Quantity','Total Quantity','08c7e7fd-f4e4-47d2-abc1-6b9a9366531f','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000529,1000005)
;

-- Apr 16, 2014 12:55:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',90,'Y',1000558,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02 | @LBR_PIS_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','e957d104-1e6b-4d9c-ae7b-4aefb445379d','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000530,1000005)
;

-- Apr 16, 2014 12:55:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,3,'N','N',100,'Y',1000559,'N','@LBR_PIS_TaxStatus@!''''','LBR','Calculation','452e3d93-c8ca-4e50-9ce1-d57ba6b6f952','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000531,1000006)
;

-- Apr 16, 2014 12:55:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',110,'Y',1000560,'N','@LBR_PISST_CalcType@=PER','LBR','Defines the PIS-ST Tax Base Amount','PIS-ST Tax Base Amount','35751805-793e-4972-bc73-51a9cb2dae4a','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000532,1000006)
;

-- Apr 16, 2014 12:55:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',120,'Y',1000561,'N','@LBR_PISST_CalcType@=PER','LBR','Indicates the PIS-ST Tax Rate','PIS-ST Tax Rate','77ba659b-efee-4e0b-99ea-ae29d64de9e6','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000533,1000006)
;

-- Apr 16, 2014 12:55:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',130,'Y',1000562,'N','@LBR_PISST_CalcType@=AMT','LBR','Indicates the PIS-ST Tax Rate in Amount','PIS-ST Tax Rate in Amount','043cf1ac-31e1-4463-89f2-f35a0104a503','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000534,1000006)
;

-- Apr 16, 2014 12:55:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',140,'Y',1000563,'N','@LBR_PISST_CalcType@=AMT','LBR','PIS-ST Total Quantity','PIS-ST Total Quantity','b785eecd-197e-4ad7-9a2c-50f729ef10f8','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000535,1000006)
;

-- Apr 16, 2014 12:55:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000036,10,'N','N',150,'Y',1000564,'N','@LBR_PISST_CalcType@=PER | @LBR_PISST_CalcType@=AMT','LBR','Defines the PIS-ST Tax Amount','PIS-ST Tax Amount','9ac05383-fe98-42bb-a4c6-5c22e116b849','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:55:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000536,1000006)
;

-- Apr 16, 2014 12:56:33 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',167,70,'The COFINS Tab defines amounts for COFINS Tax','N','N','N','N','N','N','N',3,'5d460e56-255d-4176-844e-c18c7758c8ea','LBR','COFINS','COFINS',1000037,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-16 12:56:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000543,1000030,'B')
;

-- Apr 16, 2014 12:56:52 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000037,1,'N','N',0,'Y',1000565,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','1b7b7347-398a-4c5c-82b2-68970d33d1cb','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:56:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000542)
;

-- Apr 16, 2014 12:56:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000037,22,'N','N',0,'Y',1000566,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','1881d19d-0239-47d6-a031-e56b3c99d487','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000543)
;

-- Apr 16, 2014 12:56:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000037,22,'N','N',0,'Y',1000567,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','565353bc-5a59-4d55-9cf4-03fa19ceecb3','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000544)
;

-- Apr 16, 2014 12:56:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000037,36,'N','N',0,'Y',1000568,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','33d1a044-0913-4ed1-9ec7-0e0d8f777776','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000545)
;

-- Apr 16, 2014 12:56:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000037,22,'N','N',10,'Y',1000569,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','a316228f-c4bc-4c7c-bd23-5343a310dd6f','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000537)
;

-- Apr 16, 2014 12:56:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000037,22,'Y','N',20,'Y',1000570,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','436a1afa-6f16-45b4-a949-14a3a5aab40a','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000538)
;

-- Apr 16, 2014 12:56:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,2,'N','N',30,'Y',1000571,'N','LBR','Identifies a COFINS Tax Status','COFINS Tax Status','d01b342d-5b57-4d71-a935-e237c04d6870','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000552,1000007)
;

-- Apr 16, 2014 12:56:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,3,'N','N',40,'Y',1000572,'N','@LBR_COF_TaxStatus@!'''' & @LBR_COF_TaxStatus@!01 & @LBR_COF_TaxStatus@!02 & @LBR_COF_TaxStatus@!03 & @LBR_COF_TaxStatus@!04 & @LBR_COF_TaxStatus@!05 & @LBR_COF_TaxStatus@!06 & @LBR_COF_TaxStatus@!07 & @LBR_COF_TaxStatus@!08 & @LBR_COF_TaxStatus@!09','LBR','Calculation','f7911f28-4ca7-4458-bbcf-22efb204edf6','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000539,1000007)
;

-- Apr 16, 2014 12:56:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',50,'Y',1000573,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','56c0db97-7a56-4511-a1ee-f6bddf93249d','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000554,1000007)
;

-- Apr 16, 2014 12:56:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',60,'Y',1000574,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','7be21fdd-8ff0-4f0d-8a06-00fa4f566c3f','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000555,1000007)
;

-- Apr 16, 2014 12:56:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',70,'Y',1000575,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','549ff6a9-8dcb-4ab7-9a58-417573533906','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000556,1000007)
;

-- Apr 16, 2014 12:56:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',80,'Y',1000576,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Total Quantity','Total Quantity','eca04e9c-31d3-4b18-a8a9-0ced1e099953','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000557,1000007)
;

-- Apr 16, 2014 12:56:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',90,'Y',1000577,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02 | @LBR_COF_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','508a323a-f1ec-4a23-acf4-999478aa5816','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000553,1000007)
;

-- Apr 16, 2014 12:56:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,3,'N','N',100,'Y',1000578,'N','@LBR_COF_TaxStatus@!''''','LBR','Calculation','d121e191-38f5-43fd-984c-c9d0a9c0d590','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000546,1000008)
;

-- Apr 16, 2014 12:56:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',110,'Y',1000579,'N','@LBR_COFST_CalcType@=PER','LBR','Defines the COFINS-ST Tax Base Amount','COFINS-ST Tax Base Amount','f81fc3dd-7ca4-4a25-be38-67cf59ca1ca9','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000548,1000008)
;

-- Apr 16, 2014 12:56:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',120,'Y',1000580,'N','@LBR_COFST_CalcType@=PER','LBR','Indicates the COFINS-ST Tax Rate','COFINS-ST Tax Rate','54bdb902-154a-4f6a-85a7-96383a9fe7b3','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000549,1000008)
;

-- Apr 16, 2014 12:56:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',130,'Y',1000581,'N','@LBR_COFST_CalcType@=AMT','LBR','Indicates the COFINS-ST Tax Rate in Amount','COFINS-ST Tax Rate in Amount','03330c11-135e-402c-9d8a-0534372029df','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000550,1000008)
;

-- Apr 16, 2014 12:56:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',140,'Y',1000582,'N','@LBR_COFST_CalcType@=AMT','LBR','COFINS-ST Total Quantity','COFINS-ST Total Quantity','87ed172c-195b-470a-b67e-5d32507757a8','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000551,1000008)
;

-- Apr 16, 2014 12:56:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000037,10,'N','N',150,'Y',1000583,'N','@LBR_COFST_CalcType@=PER | @LBR_COFST_CalcType@=AMT','LBR','Defines the COFINS-ST Tax Amount','COFINS-ST Tax Amount','20afd337-91a3-4ceb-b2d5-a34994447edf','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:56:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:56:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000547,1000008)
;

-- Apr 16, 2014 12:57:42 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',167,80,'The Import Tax Tab defines amounts for Import Tax','N','N','N','N','N','N','N',3,'d8c1ea78-fd1d-4bc4-a9fb-ea8e60e43996','LBR','Import Tax','Import Tax',1000038,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-16 12:57:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000569,1000031,'B')
;

-- Apr 16, 2014 12:57:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,22,'N','N',0,'Y',1000584,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','75580346-e7cb-4786-a5c4-a15ded7ffff3','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000569)
;

-- Apr 16, 2014 12:57:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,1,'N','N',0,'Y',1000585,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','f637a20b-41b4-4c08-8555-f554a8044a9d','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000566)
;

-- Apr 16, 2014 12:57:53 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,22,'N','N',0,'Y',1000586,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','171fb944-dd4b-482d-b95d-ac2563d94173','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000567)
;

-- Apr 16, 2014 12:57:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,36,'N','N',0,'Y',1000587,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','4d5b7460-20ea-4e4d-ac92-f2e26127a42a','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000568)
;

-- Apr 16, 2014 12:57:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,22,'N','N',10,'Y',1000588,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','cb0056db-666f-401e-a307-4806bf8ca488','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000560)
;

-- Apr 16, 2014 12:57:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,22,'N','N',20,'Y',1000589,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','dcd75db0-2895-4907-b313-0b5d815f2dd0','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000561)
;

-- Apr 16, 2014 12:57:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,10,'N','N',30,'Y',1000590,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','70b80e29-04fd-4777-9a34-18da762d3c02','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000570)
;

-- Apr 16, 2014 12:57:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,10,'N','N',40,'Y',1000591,'N','LBR','Customs Value','f4f34979-fbca-4fb1-ba20-cb2274986bec','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000571)
;

-- Apr 16, 2014 12:57:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,10,'N','N',50,'Y',1000592,'N','LBR','Defines the IOF Amount','IOF Amount','58e7d3b6-4f2f-4f04-8851-125218a840a6','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000572)
;

-- Apr 16, 2014 12:57:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000038,10,'N','N',60,'Y',1000593,'N','LBR','Defines the Tax Amount','Tax Amount','a86a29ee-2610-46a9-9eb6-dbe8bc6c7305','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:57:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000573)
;

-- Apr 16, 2014 12:58:45 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',167,90,'The ISSQN Tab defines amounts for ISSQN Tax','N','N','N','N','N','N','N',3,'b77bee94-c1b0-476b-b5d4-9f97f3301b48','LBR','ISSQN','ISSQN',1000039,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-16 12:58:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000581,1000032,'B')
;

-- Apr 16, 2014 12:58:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,36,'N','N',0,'Y',1000594,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','b16afa6c-806f-4c0b-859c-8035d55ce986','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000583)
;

-- Apr 16, 2014 12:58:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,1,'N','N',0,'Y',1000595,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','8c5b66b0-a604-47d1-ba93-6f92d4abcd3f','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000580)
;

-- Apr 16, 2014 12:58:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,22,'N','N',0,'Y',1000596,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','1d037200-555f-4df5-959a-472941d0d99e','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000581)
;

-- Apr 16, 2014 12:58:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,22,'N','N',0,'Y',1000597,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','9bbfbf39-ceee-4f6d-8ddf-35937ab61ce7','N','N',0,0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000582)
;

-- Apr 16, 2014 12:58:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,22,'N','N',10,'Y',1000598,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','6efa7385-7761-4efe-80c0-82bb44d09048','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000574)
;

-- Apr 16, 2014 12:58:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,22,'Y','N',20,'Y',1000599,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','6ea9e1d0-31d8-4521-b228-46e6a8c5cae6','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000575)
;

-- Apr 16, 2014 12:58:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,10,'N','N',30,'Y',1000600,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','3c51281c-21ea-48d1-b1ce-e9cf8f815563','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000584)
;

-- Apr 16, 2014 12:58:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,10,'Y','N',40,'Y',1000601,'N','LBR','Indicates the Tax Rate','Tax Rate','cb10509b-4b72-44f4-b267-18a1956c2b40','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,4,'N',0,2,1,'N','N',1000585)
;

-- Apr 16, 2014 12:58:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,5,'N','N',50,'Y',1000602,'N','LBR','Service Type','cb39fd5a-cc5d-4c6a-859a-5501f122e844','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000586)
;

-- Apr 16, 2014 12:58:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,10,'N','N',60,'Y',1000603,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','e8a9288a-53fe-490e-a12f-e8c313148520','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000587)
;

-- Apr 16, 2014 12:58:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,10,'Y','N',70,'Y',1000604,'N','City in a country','LBR','City','City','20d0d6f6-e5f5-4e9b-9fcd-d4ca750ff5a6','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000589)
;

-- Apr 16, 2014 12:58:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000039,10,'N','N',80,'Y',1000605,'N','LBR','Defines the Tax Amount','Tax Amount','38cd6499-c81f-4a2d-bb9b-56538303b0e0','N','Y',0,0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-16 12:58:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000588)
;

-- Apr 16, 2014 1:08:13 PM BRT
UPDATE AD_Field SET IsDisplayed='N', IsDisplayedGrid='N',Updated=TO_TIMESTAMP('2014-04-16 13:08:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000303
;

SELECT lbr_register_migration_script('201404091032.sql') FROM dual
;
