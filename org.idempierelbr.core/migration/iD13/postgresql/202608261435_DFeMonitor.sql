-- 
SELECT register_migration_script('202608261435_DFeMonitor.sql') FROM dual;

-- 26 de ago. de 2026 14:35:40 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800630,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:35:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:35:40','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DFeType','Tipo de DF-e','Tipo de DF-e','LBR','01a03f24-5581-751a-b49d-fa119b32641e')
;

-- 26 de ago. de 2026 14:36:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800631,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:36:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:36:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DFeStatus','Situação do DF-e','Situação do DF-e','LBR','01a03f24-ddf1-7e75-8082-d9d4fa706d04')
;

-- 26 de ago. de 2026 14:36:35 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800632,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:36:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:36:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IsXMLComplete','XML Completo','XML Completo','LBR','01a03f25-29e1-7231-a450-4cf323f252d6')
;

-- 26 de ago. de 2026 14:38:10 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800633,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:38:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:38:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EmitCNPJ','CNPJ do Emitente','CNPJ do Emitente','LBR','01a03f26-9f81-7562-92e3-480d97eda757')
;

-- 26 de ago. de 2026 14:38:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800634,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:38:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:38:30','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EmitName','Razão Social do Emitente','Razão Social do Emitente','LBR','01a03f26-ee4c-7e69-8fe2-c018c6a822f0')
;

-- 26 de ago. de 2026 14:40:21 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800075,'LBR_DFeType','L',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:40:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:40:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a03f28-9bb3-723f-a56f-1da8be03775f','N')
;

-- 26 de ago. de 2026 14:41:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800304,'NF-e',800075,'NFE',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:41:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:41:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f29-3840-750f-b31b-10eebee4cc01')
;

-- 26 de ago. de 2026 14:41:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800305,'Evento',800075,'EVT',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:41:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:41:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f29-7517-79a1-aa6d-b06281a99b00')
;

-- 26 de ago. de 2026 14:41:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800306,'Conhecimento de Transporte',800075,'CTE',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:41:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:41:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f29-b7e9-733e-aab3-a6a9252388ba')
;

-- 26 de ago. de 2026 14:41:57 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800076,'LBR_DFeStatus','L',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:41:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:41:57','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a03f2a-144a-75cc-ae9b-676c973d17c1','N')
;

-- 26 de ago. de 2026 14:42:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800307,'Novo',800076,'NEW',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:42:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:42:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f2a-524c-7c7d-9ce1-f020fe5d70b0')
;

-- 26 de ago. de 2026 14:42:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800308,'Aguardando XML completo',800076,'WAIT',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:42:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:42:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f2a-a17f-752c-8cc2-64b9667f4797')
;

-- 26 de ago. de 2026 14:42:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800309,'Pronto para importar',800076,'READY',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:42:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:42:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f2a-da4c-727c-ad64-e3ea89b297e0')
;

-- 26 de ago. de 2026 14:43:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800310,'Importado',800076,'IMPORTED',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:43:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:43:01','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f2b-1243-7b52-8a92-a2569ccb8c7c')
;

-- 26 de ago. de 2026 14:43:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800311,'Ignorado',800076,'IGNORED',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:43:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:43:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a03f2b-417b-7b8d-977f-25dc7184198e')
;

-- 26 de ago. de 2026 14:45:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802110,0,'Tipo de DF-e',800064,'LBR_DFeType',3,'N','N','N','N','N',0,'N',17,800075,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:45:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:45:26','YYYY-MM-DD HH24:MI:SS'),10,800630,'Y','N','LBR','N','N','N','Y','01a03f2d-484c-7daa-b4f8-f382762cdf4b','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:45:29 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_DFeType VARCHAR(3) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:46:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802111,0,'Situação do DF-e',800064,'LBR_DFeStatus',8,'N','N','N','N','N',0,'N',17,800076,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:46:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:46:24','YYYY-MM-DD HH24:MI:SS'),10,800631,'Y','N','LBR','N','N','N','Y','01a03f2e-286f-7ec6-8551-0ab2db85c7e6','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:46:26 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_DFeStatus VARCHAR(8) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:47:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802112,0,'XML Completo',800064,'LBR_IsXMLComplete','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:47:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:47:31','YYYY-MM-DD HH24:MI:SS'),10,800632,'Y','N','LBR','N','N','N','Y','01a03f2f-30b1-7c0e-b5d5-5c458f22c10a','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:47:33 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_IsXMLComplete CHAR(1) DEFAULT 'N' CHECK (LBR_IsXMLComplete IN ('Y','N')) NOT NULL
;

-- 26 de ago. de 2026 14:47:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802113,0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800064,'LBR_NotaFiscal_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:47:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:47:56','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '9dcbc482-1130-41e7-ad99-152bb67e2db4'),'Y','N','LBR','N','N','N','Y','01a03f2f-91e9-7a6d-8297-82c0e7c69188','Y',0,'N','N','C','N','N')
;

-- 26 de ago. de 2026 14:47:58 BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNFeXML', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-08-26 14:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802113
;

-- 26 de ago. de 2026 14:47:58 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:47:58 BRT
ALTER TABLE LBR_NFeXML ADD CONSTRAINT LBRNotaFiscal_LBRNFeXML FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 14:48:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802114,0,'Business Partner','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800064,'C_BPartner_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:48:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:48:20','YYYY-MM-DD HH24:MI:SS'),10,187,'Y','N','LBR','N','N','N','Y','01a03f2f-eeb4-76d9-be5d-36d11091387d','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:48:22 BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRNFeXML', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 14:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802114
;

-- 26 de ago. de 2026 14:48:22 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN C_BPartner_ID NUMERIC(10) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:48:22 BRT
ALTER TABLE LBR_NFeXML ADD CONSTRAINT CBPartner_LBRNFeXML FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 14:49:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802115,0,'CNPJ do Emitente',800064,'LBR_EmitCNPJ',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:49:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:49:35','YYYY-MM-DD HH24:MI:SS'),10,800633,'Y','N','LBR','N','N','N','Y','01a03f31-1154-719e-8529-9ca2ba71e841','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:49:36 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_EmitCNPJ VARCHAR(14) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:50:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802116,0,'Razão Social do Emitente',800064,'LBR_EmitName',120,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:50:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:50:09','YYYY-MM-DD HH24:MI:SS'),10,800634,'Y','Y','LBR','N','N','N','Y','01a03f31-965c-7565-84df-63bf97ed553b','Y',30,'N','N','N','N')
;

-- 26 de ago. de 2026 14:50:10 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_EmitName VARCHAR(120) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:50:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802117,0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800064,'DocumentNo',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:50:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:50:33','YYYY-MM-DD HH24:MI:SS'),10,290,'Y','Y','LBR','N','N','N','Y','01a03f31-f469-7c3b-a762-be86e66471dc','Y',40,'N','N','N','N')
;

-- 26 de ago. de 2026 14:50:34 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN DocumentNo VARCHAR(30) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:51:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802118,0,'NF Serie',800064,'LBR_NFeSerie',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:50:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:50:59','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = 'f03d55f0-69d2-490e-84b2-8eb94936d307'),'Y','N','LBR','N','N','N','Y','01a03f32-5d3a-7ad5-8114-2bfa6ed8bec7','Y',0,'N','N','N','N','N')
;

-- 26 de ago. de 2026 14:51:01 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_NFeSerie VARCHAR(3) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:51:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802119,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800064,'DateDoc','@#Date@',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:51:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:51:15','YYYY-MM-DD HH24:MI:SS'),10,265,'Y','N','LBR','N','N','N','Y','01a03f32-99a0-7392-a279-9495a71db7b1','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:51:17 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN DateDoc TIMESTAMP DEFAULT NULL 
;

-- 26 de ago. de 2026 14:51:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802120,0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',800064,'GrandTotal',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:51:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:51:34','YYYY-MM-DD HH24:MI:SS'),10,316,'Y','N','LBR','N','N','N','Y','01a03f32-e341-7198-bff2-380ba6c54323','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:51:35 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN GrandTotal NUMERIC DEFAULT NULL 
;

-- 26 de ago. de 2026 14:51:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802121,0,'NF Model',800064,'LBR_NFeModel',2,'N','N','N','N','N',0,'N',17,800019,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:51:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:51:52','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '0c00119b-ca69-4372-aa57-4a7bcd80a28f'),'Y','N','LBR','N','N','N','Y','01a03f33-2870-74e2-bee3-6e7f754b103c','Y',0,'N','N','N','N','N')
;

-- 26 de ago. de 2026 14:51:53 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_NFeModel VARCHAR(2) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:52:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802122,0,'NFe Status',800064,'LBR_NFeStatus',4,'N','N','N','N','N',0,'N',17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = 'a35d199b-75c4-48dc-bc74-bf442be1964b'),0,0,'Y',TO_TIMESTAMP('2026-08-26 14:52:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:52:08','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = 'fd3f61c6-8ed9-46ba-b2f1-6fa3cf465d4d'),'Y','N','LBR','N','N','N','Y','01a03f33-68cc-7da5-9dcf-19b3dfa8c5b0','Y',0,'N','N','N','N','N')
;

-- 26 de ago. de 2026 14:52:10 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN LBR_NFeStatus VARCHAR(4) DEFAULT NULL 
;

-- 26 de ago. de 2026 14:52:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802123,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800064,'Processed','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-08-26 14:52:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:52:31','YYYY-MM-DD HH24:MI:SS'),10,1047,'Y','N','LBR','N','N','N','Y','01a03f33-c3fe-7154-b6ca-cc7a6289b0c1','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 14:52:33 BRT
ALTER TABLE LBR_NFeXML ADD COLUMN Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 26 de ago. de 2026 14:53:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802232,'Tipo de DF-e',800061,802110,'Y',3,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-c26f-7e2f-b523-fd02f3842c2f','Y',90,2)
;

-- 26 de ago. de 2026 14:53:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802233,'Situação do DF-e',800061,802111,'Y',8,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-c404-73c7-973e-80338e050b25','Y',100,2)
;

-- 26 de ago. de 2026 14:53:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802234,'XML Completo',800061,802112,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-c59e-759a-bcaa-8a73da3dc413','Y',110,2,2)
;

-- 26 de ago. de 2026 14:53:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802235,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800061,802113,'Y',22,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-c73d-7d7b-bbd6-a66f531baac6','Y',120,2)
;

-- 26 de ago. de 2026 14:53:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802236,'Business Partner','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800061,802114,'Y',22,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-c8dd-7d72-a1dc-556f60767fa8','Y',130,2)
;

-- 26 de ago. de 2026 14:53:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802237,'CNPJ do Emitente',800061,802115,'Y',14,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-ca69-781e-893d-036f3237720b','Y',140,2)
;

-- 26 de ago. de 2026 14:53:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802238,'Razão Social do Emitente',800061,802116,'Y',120,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-cc04-7db9-8cd6-13b985abc658','Y',150,5)
;

-- 26 de ago. de 2026 14:53:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802239,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800061,802117,'Y',30,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-ce04-7ea4-b0f0-2b7035ebeb87','Y',160,2)
;

-- 26 de ago. de 2026 14:53:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802240,'NF Serie',800061,802118,'Y',3,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-cfb6-79db-9097-f53896ff50e0','Y',170,2)
;

-- 26 de ago. de 2026 14:53:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802241,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800061,802119,'Y',7,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-d1fe-7fd9-9d99-03bc0b01edf8','Y',180,2)
;

-- 26 de ago. de 2026 14:53:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802242,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',800061,802120,'Y',22,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-d3a5-7df3-9d91-d59abe01999e','Y',190,2)
;

-- 26 de ago. de 2026 14:53:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802243,'NF Model',800061,802121,'Y',2,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-d540-77fd-a5bf-3d5d49d0af53','Y',200,2)
;

-- 26 de ago. de 2026 14:53:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802244,'NFe Status',800061,802122,'Y',4,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f34-d6cd-7502-8041-a03add5db8b9','Y',210,2)
;

-- 26 de ago. de 2026 14:53:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802245,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800061,802123,'Y',1,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 14:53:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 14:53:42','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','01a03f34-d86e-7c40-9b93-f93132101e4e','Y',220,2,2)
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Processed', Description='The document has been processed', Help='The Processed checkbox indicates that a document has been processed.', IsDisplayed='Y', SeqNo=50, XPosition=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802245
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='XML Completo', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=60, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802234
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Tipo de DF-e', Description=NULL, Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802232
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Situação do DF-e', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=80, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802233
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Business Partner', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802236
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Brazilian Fiscal Invoice (Nota Fiscal)', Description='Brazilian Fiscal Invoice (Nota Fiscal) Identifier', Help='The Brazilian Fiscal Invoice (Nota Fiscal) Document.', IsDisplayed='Y', SeqNo=100, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802235
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='CNPJ do Emitente', Description=NULL, Help=NULL, SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802237
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Razão Social do Emitente', Description=NULL, Help=NULL, SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802238
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Document No', Description='Document sequence number of the document', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', SeqNo=130, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802239
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='NF Serie', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=140, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802240
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='NFe ID', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=150, XPosition=1, ColumnSpan=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801522
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Document Date', Description='Date of the Document', Help='The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.', SeqNo=160, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802241
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Grand Total', Description='Total amount of document', Help='The Grand Total displays the total amount including Tax and Freight in document currency', IsDisplayed='Y', SeqNo=170, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802242
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='NF Model', Description=NULL, Help=NULL, SeqNo=180, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802243
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='NFe Status', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=190, XPosition=1, ColumnSpan=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802244
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Schema Name', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=200, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801523
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='NSU', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=210, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801521
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='Ultima Manifestacao', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=220, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801524
;

-- 26 de ago. de 2026 14:58:44 BRT
UPDATE AD_Field SET Name='NFe XML', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 14:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801520
;

-- 26 de ago. de 2026 15:21:27 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800087,'Controle de DF-e','LBR_DFeControl',0,'3',0,0,'Y',TO_TIMESTAMP('2026-08-26 15:21:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:21:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a03f4e-3cb2-7819-9a61-f4339d6299ba','N','N','N','N','N','N','N')
;

-- 26 de ago. de 2026 15:21:27 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_DFeControl',1000000,'N','N','Table LBR_DFeControl','Y','Y',0,0,TO_TIMESTAMP('2026-08-26 15:21:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:21:27','YYYY-MM-DD HH24:MI:SS'),10,800583,'Y',1000000,1,200000,'01a03f4e-3e61-76e3-af6f-73e143112fb2')
;

-- 26 de ago. de 2026 15:22:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802124,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800087,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:34','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a03f4f-463f-735e-8cb8-385a14070874','N')
;

-- 26 de ago. de 2026 15:22:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802125,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800087,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:35','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a03f4f-47d5-7404-8f4f-d5b18410e3e8','N')
;

-- 26 de ago. de 2026 15:22:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802126,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800087,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:35','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a03f4f-4971-7e59-9594-13252dcaf655','N')
;

-- 26 de ago. de 2026 15:22:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802127,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800087,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:35','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a03f4f-4b10-7704-b279-448bcb4d266c','N')
;

-- 26 de ago. de 2026 15:22:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802128,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800087,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:36','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a03f4f-4caa-7cf8-ae21-0805a489f140','N')
;

-- 26 de ago. de 2026 15:22:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802129,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800087,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:36','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a03f4f-4e42-7a33-a806-fec4823c2241','N')
;

-- 26 de ago. de 2026 15:22:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802130,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800087,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:37','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a03f4f-4fd5-7888-b950-7081feda0224','N')
;

-- 26 de ago. de 2026 15:22:37 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800635,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DFeControl_ID','Controle de DF-e','Controle de DF-e','LBR','01a03f4f-5175-73d8-90fd-1f0a0b85061a')
;

-- 26 de ago. de 2026 15:22:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802131,0.0,'Controle de DF-e',800087,'LBR_DFeControl_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:37','YYYY-MM-DD HH24:MI:SS'),10,800635,'N','N','LBR','N','01a03f4f-5310-762b-ab37-c2613ab6a422','N')
;

-- 26 de ago. de 2026 15:22:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800636,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DFeControl_UU','LBR_DFeControl_UU','LBR_DFeControl_UU','LBR','01a03f4f-54a7-72d2-adef-197d22ffae6c')
;

-- 26 de ago. de 2026 15:22:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802132,0.0,'LBR_DFeControl_UU',800087,'LBR_DFeControl_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:22:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:22:38','YYYY-MM-DD HH24:MI:SS'),10,800636,'Y','N','LBR','N','01a03f4f-56a1-7031-bbc7-31d04afdeac4','N')
;

-- 26 de ago. de 2026 15:22:39 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800173,'01a03f4f-5840-76e0-8949-0e5869084750',TO_TIMESTAMP('2026-08-26 15:22:39','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_DFeControl_UU_idx',TO_TIMESTAMP('2026-08-26 15:22:39','YYYY-MM-DD HH24:MI:SS'),10,800087,'Y','Y','N','N')
;

-- 26 de ago. de 2026 15:22:40 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800204,'01a03f4f-59e5-7dd0-b77e-35810860ee0e',TO_TIMESTAMP('2026-08-26 15:22:39','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-08-26 15:22:39','YYYY-MM-DD HH24:MI:SS'),10,802132,800173,10)
;

-- 26 de ago. de 2026 15:22:51 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRDFeControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 15:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802124
;

-- 26 de ago. de 2026 15:22:51 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADOrg_LBRDFeControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 15:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802125
;

-- 26 de ago. de 2026 15:22:51 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRDFeControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 15:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802127
;

-- 26 de ago. de 2026 15:22:51 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRDFeControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 15:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802129
;

-- 26 de ago. de 2026 15:22:51 BRT
CREATE TABLE LBR_DFeControl (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_DFeControl_ID NUMERIC(10) NOT NULL, LBR_DFeControl_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_DFeControl_Key PRIMARY KEY (LBR_DFeControl_ID), CONSTRAINT LBR_DFeControl_UU_idx UNIQUE (LBR_DFeControl_UU))
;

-- 26 de ago. de 2026 15:22:51 BRT
ALTER TABLE LBR_DFeControl ADD CONSTRAINT ADClient_LBRDFeControl FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 15:22:51 BRT
ALTER TABLE LBR_DFeControl ADD CONSTRAINT ADOrg_LBRDFeControl FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 15:22:51 BRT
ALTER TABLE LBR_DFeControl ADD CONSTRAINT CreatedBy_LBRDFeControl FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 15:22:51 BRT
ALTER TABLE LBR_DFeControl ADD CONSTRAINT UpdatedBy_LBRDFeControl FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 15:23:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802133,0,'Sefaz NF-e Environment',800087,'LBR_NFeEnv',1,'N','N','Y','N','N',0,'N',17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '492806a9-e053-4007-a07e-c611ceeab964'),0,0,'Y',TO_TIMESTAMP('2026-08-26 15:23:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:23:52','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '66862c66-9bdb-497e-a406-14231e9a9145'),'Y','N','LBR','N','N','N','Y','01a03f50-75dc-75a4-a4e2-20de231b50e3','Y',0,'N','N','N','N','N')
;

-- 26 de ago. de 2026 15:23:54 BRT
ALTER TABLE LBR_DFeControl ADD COLUMN LBR_NFeEnv CHAR(1) NOT NULL
;

-- 26 de ago. de 2026 15:24:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802134,0,'Last NSU',800087,'LBR_LastNSU',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:24:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:24:29','YYYY-MM-DD HH24:MI:SS'),10,800454,'Y','N','LBR','N','N','N','Y','01a03f51-08a1-750c-bf7d-9db31b60fc0d','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 15:24:31 BRT
ALTER TABLE LBR_DFeControl ADD COLUMN LBR_LastNSU VARCHAR(15) DEFAULT NULL 
;

-- 26 de ago. de 2026 15:25:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800637,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:25:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:25:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MaxNSU','Último NSU Conhecido','Último NSU Conhecido','LBR','01a03f51-bbd9-75b8-93f6-2585baa345a5')
;

-- 26 de ago. de 2026 15:25:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802135,0,'Último NSU Conhecido',800087,'LBR_MaxNSU',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:25:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:25:39','YYYY-MM-DD HH24:MI:SS'),10,800637,'Y','N','LBR','N','N','N','Y','01a03f52-1a3c-7d92-b88c-f3c536b72a33','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 15:25:41 BRT
ALTER TABLE LBR_DFeControl ADD COLUMN LBR_MaxNSU VARCHAR(15) DEFAULT NULL 
;

-- 26 de ago. de 2026 15:26:21 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800638,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:26:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:26:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR_LastRequest','Último Request','Último Request','LBR','01a03f52-bb79-7d93-8f91-3f26431dda14')
;

-- 26 de ago. de 2026 15:26:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802136,0,'Último Request',800087,'LBR_LastRequest',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,800638,'Y','N','LBR','N','N','N','Y','01a03f53-04a8-794a-a0ff-3fa5dcd1e613','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 15:26:42 BRT
ALTER TABLE LBR_DFeControl ADD COLUMN LBR_LastRequest TIMESTAMP DEFAULT NULL 
;

-- 26 de ago. de 2026 15:27:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800639,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:27:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:27:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_LastcStat','Último Response','Último Response','LBR','01a03f53-91d9-7595-9866-d39d554ea789')
;

-- 26 de ago. de 2026 15:27:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802137,0,'Último Response',800087,'LBR_LastcStat',4,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:27:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:27:45','YYYY-MM-DD HH24:MI:SS'),10,800639,'Y','N','LBR','N','N','N','Y','01a03f54-0645-78c9-8d70-7660d1eeca40','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 15:27:47 BRT
ALTER TABLE LBR_DFeControl ADD COLUMN LBR_LastcStat VARCHAR(4) DEFAULT NULL 
;

-- 26 de ago. de 2026 15:28:58 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800640,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_BlockedUntil','Fim do Bloqueio','Fim do Bloqueio','LBR','01a03f55-20aa-7c04-8c1c-17f9021a1827')
;

-- 26 de ago. de 2026 15:29:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802138,0,'Fim do Bloqueio',800087,'LBR_BlockedUntil',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:29:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:29:17','YYYY-MM-DD HH24:MI:SS'),10,800640,'Y','N','LBR','N','N','N','Y','01a03f55-6d0c-773c-a961-9f96b60e80e3','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 15:29:19 BRT
ALTER TABLE LBR_DFeControl ADD COLUMN LBR_BlockedUntil TIMESTAMP DEFAULT NULL 
;

-- 26 de ago. de 2026 15:30:14 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800641,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:30:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:30:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR_QueryCount','Qtd. de Consultas (na Hora Corrente)','Qtd. de Consultas (na Hora Corrente)','LBR','01a03f56-48a7-768e-a5e6-2869d513710e')
;

-- 26 de ago. de 2026 15:30:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802139,0,'Qtd. de Consultas (na Hora Corrente)',800087,'LBR_QueryCount',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-08-26 15:30:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 15:30:37','YYYY-MM-DD HH24:MI:SS'),10,800641,'Y','N','LBR','N','N','N','Y','01a03f56-a5df-78f9-8404-80a3bbaeff9e','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 15:30:39 BRT
ALTER TABLE LBR_DFeControl ADD COLUMN LBR_QueryCount NUMERIC(10) DEFAULT NULL 
;

-- 26 de ago. de 2026 16:08:12 BRT
UPDATE AD_Ref_Table SET AD_Display=802117,Updated=TO_TIMESTAMP('2026-08-26 16:08:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Reference_ID=800057
;

-- 26 de ago. de 2026 16:10:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802140,0,'NFe XML',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = '4199f411-1ed8-4e67-9efc-1b1cd0af19c1'),'LBR_NFeXML_ID',22,'N','N','N','N','N',0,'N',30,800057,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:10:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:10:01','YYYY-MM-DD HH24:MI:SS'),10,800455,'Y','N','LBR','N','N','N','Y','01a03f7a-b5a6-7294-9f2c-c2f390e57bf2','Y',0,'N','N','N','N','N')
;

-- 26 de ago. de 2026 16:10:03 BRT
UPDATE AD_Column SET FKConstraintName='LBRNFeXML_LBRNotaFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 16:10:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802140
;

-- 26 de ago. de 2026 16:10:03 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_NFeXML_ID NUMERIC(10) DEFAULT NULL 
;

-- 26 de ago. de 2026 16:10:03 BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBRNFeXML_LBRNotaFiscal FOREIGN KEY (LBR_NFeXML_ID) REFERENCES lbr_nfexml(lbr_nfexml_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 16:10:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802246,'NFe XML',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = 'e6553657-d315-48db-b056-492ee6a484ef'),802140,'Y',22,550,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-26 16:10:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:10:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a03f7b-1009-7279-acfb-682be4ee82b6','Y',510,2)
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='NFe XML', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=460, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802246
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Fiscal Info', Description='Fiscal Information', Help=NULL, SeqNo=470, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='8b635c78-5bda-4ad6-8442-1ad18df6342d'
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Tax Payer Info', Description='Tax Payer Information', Help=NULL, SeqNo=480, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='b3348a73-924e-44c0-be81-85b1585a7f98'
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Total Lines', Description='Total of all document lines', Help='The Total amount displays the total of all lines in document currency', SeqNo=490, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='8eb83595-bb0b-4561-965c-d3b0ce04bb78'
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Grand Total', Description='Total amount of document', Help='The Grand Total displays the total amount including Tax and Freight in document currency', SeqNo=500, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='454e2a5a-53dd-44e0-8038-20bb66558feb'
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Document Status', Description='The current status of the document', Help='The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', SeqNo=510, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='2ca662e3-46a7-4155-8fdf-26b87b505350'
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Process NotaFiscal', Description=NULL, Help=NULL, SeqNo=520, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='63771cae-dcdc-44d8-a21d-bfd8f89afe91'
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Posted', Description='Posting status', Help='The Posted field indicates the status of the Generation of General Ledger Accounting Lines ', SeqNo=530, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='fa1f533d-a3d6-47db-9e57-aad118f20834'
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Distribute Amount to Doc Line Details', Description='Distribute a given amount to line details of a document', Help=NULL, SeqNo=540, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800059
;

-- 26 de ago. de 2026 16:11:11 BRT
UPDATE AD_Field SET Name='Create PO From Nota Fiscal', Description='Generate and Process PO from Nota Fiscal', Help='This process allows to generate purchase order to completed Nota Fiscal.', SeqNo=550, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-26 16:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800060
;

-- 26 de ago. de 2026 16:23:08 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800088,'Detalhes de Pagamento de Nota Fiscal',(SELECT AD_Window_ID FROM AD_Window WHERE AD_Window_UU = 'df8ad221-e4c0-4415-80cb-4be3f5af2af3'),'LBR_NotaFiscalDetPag',0,'3',0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','01a03f86-b601-7039-930e-7cc6c28c7207','N','N','N','N','N','N','N')
;

-- 26 de ago. de 2026 16:23:08 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NotaFiscalDetPag',1000000,'N','N','Table LBR_NotaFiscalDetPag','Y','Y',0,0,TO_TIMESTAMP('2026-08-26 16:23:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:08','YYYY-MM-DD HH24:MI:SS'),10,800584,'Y',1000000,1,200000,'01a03f86-b791-7256-9d33-cce1f58cfb61')
;

-- 26 de ago. de 2026 16:23:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802141,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800088,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:35','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a03f87-20bf-7a20-a903-c0b99187009f','N')
;

-- 26 de ago. de 2026 16:23:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802142,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800088,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:35','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a03f87-2250-7120-b70c-99a2b83dc1de','N')
;

-- 26 de ago. de 2026 16:23:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802143,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800088,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:35','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a03f87-23ff-7882-a5b1-5c58264992f9','N')
;

-- 26 de ago. de 2026 16:23:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802144,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800088,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:36','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a03f87-2599-7578-825c-e53ae754c3b9','N')
;

-- 26 de ago. de 2026 16:23:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802145,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800088,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:36','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a03f87-272f-7189-ba40-252fc888983b','N')
;

-- 26 de ago. de 2026 16:23:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802146,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800088,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:37','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a03f87-28c6-70d6-bc76-3dc246fc9571','N')
;

-- 26 de ago. de 2026 16:23:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802147,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800088,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:37','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a03f87-2a5d-7f9c-a746-b526579bfc6f','N')
;

-- 26 de ago. de 2026 16:23:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800642,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NotaFiscalDetPag_ID','Detalhes de Pagamento de Nota Fiscal','Detalhes de Pagamento de Nota Fiscal','LBR','01a03f87-2c00-7df2-84fa-ff512b01f506')
;

-- 26 de ago. de 2026 16:23:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802148,0.0,'Detalhes de Pagamento de Nota Fiscal',800088,'LBR_NotaFiscalDetPag_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:38','YYYY-MM-DD HH24:MI:SS'),10,800642,'N','N','LBR','N','01a03f87-2d90-76cd-b2f8-d58aa7c5c3ed','N')
;

-- 26 de ago. de 2026 16:23:39 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800643,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NotaFiscalDetPag_UU','LBR_NotaFiscalDetPag_UU','LBR_NotaFiscalDetPag_UU','LBR','01a03f87-2f2a-7735-80bd-696caa5bbba8')
;

-- 26 de ago. de 2026 16:23:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802149,0.0,'LBR_NotaFiscalDetPag_UU',800088,'LBR_NotaFiscalDetPag_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:23:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:23:39','YYYY-MM-DD HH24:MI:SS'),10,800643,'Y','N','LBR','N','01a03f87-30ce-7dd4-a6ed-6d0ea3d0d01e','N')
;

-- 26 de ago. de 2026 16:23:40 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800174,'01a03f87-3265-7b90-af92-a0c678f2c470',TO_TIMESTAMP('2026-08-26 16:23:39','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_NotaFiscalDetPag_UU_idx',TO_TIMESTAMP('2026-08-26 16:23:39','YYYY-MM-DD HH24:MI:SS'),10,800088,'Y','Y','N','N')
;

-- 26 de ago. de 2026 16:23:40 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800205,'01a03f87-3400-76de-84a0-2d55f53d7fa1',TO_TIMESTAMP('2026-08-26 16:23:40','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-08-26 16:23:40','YYYY-MM-DD HH24:MI:SS'),10,802149,800174,10)
;

-- 26 de ago. de 2026 16:23:50 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRNotaFiscalDetPag', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 16:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802141
;

-- 26 de ago. de 2026 16:23:50 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADOrg_LBRNotaFiscalDetPag', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 16:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802142
;

-- 26 de ago. de 2026 16:23:50 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRNotaFiscalDetPag', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 16:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802144
;

-- 26 de ago. de 2026 16:23:50 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRNotaFiscalDetPag', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-26 16:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802146
;

-- 26 de ago. de 2026 16:23:50 BRT
CREATE TABLE LBR_NotaFiscalDetPag (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_NotaFiscalDetPag_ID NUMERIC(10) NOT NULL, LBR_NotaFiscalDetPag_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalDetPag_Key PRIMARY KEY (LBR_NotaFiscalDetPag_ID), CONSTRAINT LBR_NotaFiscalDetPag_UU_idx UNIQUE (LBR_NotaFiscalDetPag_UU))
;

-- 26 de ago. de 2026 16:23:50 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD CONSTRAINT ADClient_LBRNotaFiscalDetPag FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 16:23:50 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD CONSTRAINT ADOrg_LBRNotaFiscalDetPag FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 16:23:50 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD CONSTRAINT CreatedBy_LBRNotaFiscalDetPag FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 16:23:50 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD CONSTRAINT UpdatedBy_LBRNotaFiscalDetPag FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 16:25:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802150,0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800088,'LBR_NotaFiscal_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:25:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:25:23','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '9dcbc482-1130-41e7-ad99-152bb67e2db4'),'N','N','LBR','N','N','N','Y','01a03f88-c8d6-77d9-ac78-9b0259e3dd58','Y',0,'N','N','C','N','N')
;

-- 26 de ago. de 2026 16:25:25 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNotaFiscal_LBRNotaFiscalDetPag', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-08-26 16:25:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802150
;

-- 26 de ago. de 2026 16:25:25 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- 26 de ago. de 2026 16:25:25 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalDetPag FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 26 de ago. de 2026 16:30:03 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800644,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:30:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:30:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndPag','Forma de Pagamento','Forma de Pagamento','LBR','01a03f8d-0e00-7dd3-b8c5-c0390d52cfee')
;

-- 26 de ago. de 2026 16:31:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802151,0,'Forma de Pagamento',800088,'LBR_IndPag',1,'N','N','N','N','N',0,'N',17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = 'c41b7622-1b89-456f-a11c-48cc17589d2c'),0,0,'Y',TO_TIMESTAMP('2026-08-26 16:31:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:31:03','YYYY-MM-DD HH24:MI:SS'),10,800644,'Y','N','LBR','N','N','N','Y','01a03f8d-f6cb-7ce9-9fab-f6b0c4e36d7e','Y',0,'N','N','N','N')
;

-- 26 de ago. de 2026 16:31:05 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_IndPag CHAR(1) DEFAULT NULL 
;

-- 26 de ago. de 2026 16:31:55 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800645,0,0,'Y',TO_TIMESTAMP('2026-08-26 16:31:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-26 16:31:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TPag','Tipo de Pagamento','Tipo de Pagamento','LBR','01a03f8e-c2cd-738b-a6fc-a2c1cb38b1e2')
;

-- 27 de ago. de 2026 09:43:18 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800078,'LBR_NFE_TPag','L',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:43:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:43:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a0433f-03fb-7235-ab25-38baf3f5c92c','N')
;

-- 27 de ago. de 2026 09:44:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800312,'Dinheiro',800078,'01',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:44:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:44:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04340-3df7-7fd0-908d-14118419fd01')
;

-- 27 de ago. de 2026 09:44:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800313,'Cheque',800078,'02',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:44:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:44:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04340-70c2-7f97-b566-f15313005047')
;

-- 27 de ago. de 2026 09:45:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800314,'Cartão de Crédito',800078,'03',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:45:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:45:05','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04340-a658-7909-9761-c62a208d5bd2')
;

-- 27 de ago. de 2026 09:45:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800315,'Cartão de Débito',800078,'04',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:45:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:45:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04340-d51f-7a7a-9ed9-376ed9d7749c')
;

-- 27 de ago. de 2026 09:45:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800316,'Cartão da Loja (Private Label), Crediário Digital, Outros Crediários',800078,'05',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:45:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:45:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04341-06d3-7103-8198-a6125e93deac')
;

-- 27 de ago. de 2026 09:45:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800317,'Vale Alimentação',800078,'10',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:45:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:45:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04341-3656-75dd-b1c4-5bd76d065857')
;

-- 27 de ago. de 2026 09:45:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800318,'Vale Refeição',800078,'11',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:45:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:45:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04341-5cb9-7763-a61e-73e494269364')
;

-- 27 de ago. de 2026 09:46:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800319,'Vale Presente',800078,'12',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:46:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:46:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04341-88b5-7251-a244-17efdad2794f')
;

-- 27 de ago. de 2026 09:46:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800320,'Vale Combustível',800078,'13',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:46:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:46:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04341-db27-7c5b-9c17-317a3b2b65f4')
;

-- 27 de ago. de 2026 09:46:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800321,'Duplicata Mercantil',800078,'14',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:46:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:46:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04342-0783-7731-803f-78a8e211689b')
;

-- 27 de ago. de 2026 09:46:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800322,'Boleto Bancário',800078,'15',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:46:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:46:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04342-37ed-79a7-9154-b96ed6940b85')
;

-- 27 de ago. de 2026 09:46:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800323,'Depósito Bancário',800078,'16',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:46:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:46:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04342-64b3-7672-8c0d-2a07489eb35e')
;

-- 27 de ago. de 2026 09:47:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800324,'Pagamento Instantâneo (PIX) — Dinâmico',800078,'17',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:47:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:47:11','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04342-9385-7a2e-94d0-c0bb1da5ea35')
;

-- 27 de ago. de 2026 09:47:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800325,'Transferência bancária, Carteira Digital',800078,'18',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:47:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:47:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04342-da58-78c8-ba8f-04d5a3266290')
;

-- 27 de ago. de 2026 09:47:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800326,'Programa de fidelidade, Cashback, Crédito Virtual',800078,'19',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:47:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:47:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04343-07ec-7a10-afd9-3c73000eb2a2')
;

-- 27 de ago. de 2026 09:47:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800327,'Pagamento Instantâneo (PIX) — Estático',800078,'20',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:47:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:47:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04343-3082-7b53-9733-c9b8ed1bf93c')
;

-- 27 de ago. de 2026 09:48:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800328,'Crédito em Loja',800078,'21',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:48:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:48:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04343-5a4c-7597-b6c9-6e9b0cfea706')
;

-- 27 de ago. de 2026 09:48:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800329,'Pagamento Eletrônico não Informado. Falha de hardware do sistema emissor',800078,'22',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:48:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:48:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04343-b9e2-7acd-b305-debff57e8918')
;

-- 27 de ago. de 2026 09:48:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800330,'Pagamento Instantâneo (PIX) — Automático',800078,'23',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:48:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:48:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04343-e64e-7d17-8b1e-ec80a1861738')
;

-- 27 de ago. de 2026 09:48:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800331,'TEF — "Book Transfer"',800078,'24',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:48:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:48:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04344-13e5-78ec-8182-7e1eb01b3543')
;

-- 27 de ago. de 2026 09:49:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800332,'Sem Pagamento',800078,'90',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:48:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:48:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04344-3aac-797e-9d99-6cb7b06011d8')
;

-- 27 de ago. de 2026 09:49:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800333,'Pagamento Posterior',800078,'91',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:49:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:49:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04344-63e7-7626-a418-561c4126a753')
;

-- 27 de ago. de 2026 09:49:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800334,'Outros',800078,'99',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:49:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:49:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04344-8f82-7198-bf54-f1cb6b6c096d')
;

-- 27 de ago. de 2026 09:50:03 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800079,'LBR_NFE_TpIntegra','L',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:50:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:50:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a04345-30b2-7fe1-b9f5-3a37df101863','N')
;

-- 27 de ago. de 2026 09:50:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800335,'Pagamento integrado com o sistema de automação da empresa',800079,'1',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:50:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:50:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04345-6514-78fe-bad1-5cc243e25ffb')
;

-- 27 de ago. de 2026 09:50:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800336,'Pagamento não integrado com o sistema de automação da empresa (ex.: POS simples)',800079,'2',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:50:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:50:30','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04345-9c48-73ab-9f86-fae5563d72b2')
;

-- 27 de ago. de 2026 09:53:14 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800080,'LBR_NFE_TBand','L',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:53:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:53:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a04348-1dec-7147-bc6d-12d7fd73fa55','N')
;

-- 27 de ago. de 2026 09:53:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800337,'LBR_NFE_TBand',800080,'01',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:53:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:53:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04348-74a8-76c2-a25b-d8c1d3885864')
;

-- 27 de ago. de 2026 09:53:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800338,'Mastercard',800080,'02',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:53:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:53:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04348-a38c-7e70-a13e-3e29c0599a0f')
;

-- 27 de ago. de 2026 09:53:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800339,'American Express',800080,'03',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:53:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:53:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04348-cd26-7c8e-b6f5-2e078e725c0d')
;

-- 27 de ago. de 2026 09:54:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800340,'Sorocred',800080,'04',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:54:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:54:09','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04348-f4a6-72f2-9b61-ad88320559a5')
;

-- 27 de ago. de 2026 09:54:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800341,'Diners Club',800080,'05',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:54:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:54:19','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04349-1c43-7499-9f37-ce42ce362d12')
;

-- 27 de ago. de 2026 09:54:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800342,'Elo',800080,'06',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:54:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:54:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04349-4509-78e7-92cd-1b15e150d36a')
;

-- 27 de ago. de 2026 09:54:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800343,'Hipercard',800080,'07',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:54:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:54:39','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04349-6b10-7415-a9bb-361690c4b628')
;

-- 27 de ago. de 2026 09:54:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800344,'Aura',800080,'08',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:54:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:54:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04349-8f72-712c-89a9-b867b02b69f9')
;

-- 27 de ago. de 2026 09:55:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800345,'Cabal',800080,'09',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:55:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:55:04','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04349-cb03-76b0-8ec3-98968ec5e3c2')
;

-- 27 de ago. de 2026 09:55:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800346,'Alelo',800080,'10',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:55:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:55:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a04349-f0a6-7a6f-ae96-1d12f534adc5')
;

-- 27 de ago. de 2026 09:55:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800347,'Banes Card',800080,'11',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:55:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:55:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434a-17dc-7dca-9ec3-477ae29f9ff3')
;

-- 27 de ago. de 2026 09:55:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800348,'CalCard',800080,'12',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:55:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:55:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434a-4313-7388-8159-eb7465aeb14d')
;

-- 27 de ago. de 2026 09:55:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800349,'Credz',800080,'13',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:55:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:55:45','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434a-6c3b-77a6-b2a0-7acc17cc61dd')
;

-- 27 de ago. de 2026 09:55:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800350,'Discover',800080,'14',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:55:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:55:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434a-8f79-7a07-bc25-9ae829f8323b')
;

-- 27 de ago. de 2026 09:56:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800351,'GoodCard',800080,'15',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:56:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:56:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434a-b170-7e94-9d99-c0e2a7298d48')
;

-- 27 de ago. de 2026 09:56:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800352,'GreenCard',800080,'16',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:56:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:56:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434a-d5d4-7475-b724-35ce670d13b7')
;

-- 27 de ago. de 2026 09:56:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800353,'Hiper',800080,'17',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:56:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:56:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434a-f775-7234-95de-2ee87886d1b6')
;

-- 27 de ago. de 2026 09:56:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800354,'JCB',800080,'18',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:56:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:56:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434b-29db-772e-896d-6769e1aa5856')
;

-- 27 de ago. de 2026 09:56:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800355,'Mais',800080,'19',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:56:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:56:43','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434b-4f1a-766a-a978-483988dc3d62')
;

-- 27 de ago. de 2026 09:56:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800356,'MaxVan',800080,'20',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:56:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:56:53','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434b-763c-7540-8015-5976ea5efec8')
;

-- 27 de ago. de 2026 09:57:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800357,'Policard',800080,'21',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:57:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:57:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434b-9b6d-7655-8c19-26bf7265eec6')
;

-- 27 de ago. de 2026 09:57:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800358,'RedeCompras',800080,'22',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:57:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:57:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434b-c1da-7e20-b56f-7400a56bc59a')
;

-- 27 de ago. de 2026 09:57:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800359,'Sodexo',800080,'23',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:57:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:57:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434b-eb0c-797f-845a-5ffafa0ed246')
;

-- 27 de ago. de 2026 09:57:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800360,'ValeCard',800080,'24',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:57:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:57:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434c-21a5-7574-a25c-617b5d67feca')
;

-- 27 de ago. de 2026 09:57:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800361,'Verocheque',800080,'25',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:57:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:57:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434c-469e-7f1c-9f2b-6afe92776b11')
;

-- 27 de ago. de 2026 09:57:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800362,'VR',800080,'26',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:57:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:57:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434c-6aa0-7d5b-8293-71fe85938dee')
;

-- 27 de ago. de 2026 09:58:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800363,'Ticket',800080,'27',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:58:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:58:05','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434c-8f0f-715b-9724-69e13f64ae2e')
;

-- 27 de ago. de 2026 09:58:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800364,'Outros',800080,'99',0,0,'Y',TO_TIMESTAMP('2026-08-27 09:58:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:58:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0434c-b970-73eb-a42e-7d83c8c086ea')
;

-- 27 de ago. de 2026 09:59:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802152,0,'Tipo de Pagamento',800088,'LBR_TPag',2,'N','N','N','N','N',0,'N',17,0,0,'Y',TO_TIMESTAMP('2026-08-27 09:59:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 09:59:24','YYYY-MM-DD HH24:MI:SS'),10,800645,'Y','N','LBR','N','N','N','Y','01a0434d-c2a1-7bf5-a2ba-fac52ab50772','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 09:59:42 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2026-08-27 09:59:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802152
;

-- 27 de ago. de 2026 09:59:44 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_TPag VARCHAR(2) NOT NULL
;

-- 27 de ago. de 2026 10:00:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800646,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:00:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:00:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR_xPag','Descrição do Meio de Pagamento','Descrição do Meio de Pagamento','LBR','01a0434e-cb72-7222-af33-3cdc900c97d4')
;

-- 27 de ago. de 2026 10:00:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802153,0,'Descrição do Meio de Pagamento',800088,'LBR_xPag',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:00:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:00:48','YYYY-MM-DD HH24:MI:SS'),10,800646,'Y','N','LBR','N','N','N','Y','01a0434f-0b67-77b5-9540-96a31fdf33da','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:00:50 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_xPag VARCHAR(60) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:01:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802154,0,'Payment amount','Amount being paid','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',800088,'PayAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:01:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:01:11','YYYY-MM-DD HH24:MI:SS'),10,1477,'Y','N','LBR','N','N','N','Y','01a0434f-6439-7785-a66d-e65d9f835232','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:01:12 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN PayAmt NUMERIC DEFAULT NULL 
;

-- 27 de ago. de 2026 10:02:14 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800647,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:02:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:02:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DatePayment','Data do Pagamento','Data do Pagamento','LBR','01a04350-580c-7c2c-afa2-b66d60bd9563')
;

-- 27 de ago. de 2026 10:02:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802155,0,'Data do Pagamento',800088,'LBR_DatePayment',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:02:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:02:28','YYYY-MM-DD HH24:MI:SS'),10,800647,'Y','N','LBR','N','N','N','Y','01a04350-9102-7522-8128-2d460c262fdf','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:02:29 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_DatePayment TIMESTAMP DEFAULT NULL 
;

-- 27 de ago. de 2026 10:04:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800648,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:04:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:04:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CNPJPag','CNPJ do Estabelecimento','CNPJ do Estabelecimento','LBR','01a04352-830d-7164-9a03-6fe7f19569ba')
;

-- 27 de ago. de 2026 10:04:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802156,0,'CNPJ do Estabelecimento',800088,'LBR_CNPJPag',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:04:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:04:54','YYYY-MM-DD HH24:MI:SS'),10,800648,'Y','N','LBR','N','N','N','Y','01a04352-cd74-7d78-8f17-b61e4987e6b4','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:04:56 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_CNPJPag VARCHAR(14) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:05:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802157,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800088,(SELECT AD_Val_Rule_ID FROM AD_Val_Rule WHERE AD_Val_Rule_UU = 'a22f6a1d-701c-4f58-871a-047e5154f02c'),'C_Region_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:05:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:05:13','YYYY-MM-DD HH24:MI:SS'),10,209,'Y','N','LBR','N','N','N','Y','01a04353-176d-7ea1-b0df-1dc53716c1dd','Y',0,'N','N','N','N','N')
;

-- 27 de ago. de 2026 10:05:16 BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNotaFiscalDetPag', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-27 10:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802157
;

-- 27 de ago. de 2026 10:05:16 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:05:16 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD CONSTRAINT CRegion_LBRNotaFiscalDetPag FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de ago. de 2026 10:06:02 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800649,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:06:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:06:01','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TpIntegra','Tipo de Integração','Tipo de Integração','LBR','01a04353-d2b0-7068-9272-58a3de9ee7dc')
;

-- 27 de ago. de 2026 10:07:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802158,0,'Tipo de Integração',800088,'LBR_TpIntegra',1,'N','N','Y','N','N',0,'N',17,800079,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:06:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:06:59','YYYY-MM-DD HH24:MI:SS'),10,800649,'Y','N','LBR','N','N','N','Y','01a04354-b5ea-724c-878e-fe89ce87f983','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:07:01 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_TpIntegra CHAR(1) NOT NULL
;

-- 27 de ago. de 2026 10:09:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800650,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:09:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:09:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CardCNPJ','CNPJ da Credenciadora','CNPJ da Credenciadora','LBR','01a04357-688b-77b1-bfe9-9bd46ea30195')
;

-- 27 de ago. de 2026 10:10:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802159,0,'CNPJ da Credenciadora',800088,'LBR_CardCNPJ',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:10:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:10:19','YYYY-MM-DD HH24:MI:SS'),10,800650,'Y','N','LBR','N','N','N','Y','01a04357-c39c-74bb-8088-600bb7eca970','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:10:21 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_CardCNPJ VARCHAR(14) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:10:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800651,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:10:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:10:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CardBrand','Bandeira','Bandeira','LBR','01a04358-35a1-7f0e-a3b2-bba5913032cf')
;

-- 27 de ago. de 2026 10:11:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802160,0,'Bandeira',800088,'LBR_CardBrand',2,'N','N','N','N','N',0,'N',17,800080,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:11:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:11:23','YYYY-MM-DD HH24:MI:SS'),10,800651,'Y','N','LBR','N','N','N','Y','01a04358-bd31-7590-bfee-de73a3d540ab','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:11:25 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_CardBrand VARCHAR(2) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:11:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800652,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:11:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:11:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CardAuth','Código de Autorização','Código de Autorização','LBR','01a04359-466a-7689-8217-79c3890d0f36')
;

-- 27 de ago. de 2026 10:12:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802161,0,'Código de Autorização',800088,'LBR_CardAuth',128,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:12:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:12:21','YYYY-MM-DD HH24:MI:SS'),10,800652,'Y','N','LBR','N','N','N','Y','01a04359-9f36-7447-a337-e9fc0b36fc5c','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:12:23 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_CardAuth VARCHAR(128) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:13:23 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800653,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:13:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:13:22','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CNPJReceb','CNPJ do Recebedor','CNPJ do Recebedor','LBR','01a0435a-8d38-73db-9e6d-262a977325c2')
;

-- 27 de ago. de 2026 10:13:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802162,0,'CNPJ do Recebedor',800088,'LBR_CNPJReceb',14,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:13:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:13:56','YYYY-MM-DD HH24:MI:SS'),10,800653,'Y','N','U','N','N','N','Y','01a0435b-1405-7d37-acde-75f3a91acbbc','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:13:58 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_CNPJReceb VARCHAR(14) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:14:34 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800654,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:14:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:14:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IdTermPag','ID do Terminal de Pagamento','ID do Terminal de Pagamento','LBR','01a0435b-a410-732b-a3dc-c2d9091743fd')
;

-- 27 de ago. de 2026 10:14:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802163,0,'ID do Terminal de Pagamento',800088,'LBR_IdTermPag',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:14:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:14:51','YYYY-MM-DD HH24:MI:SS'),10,800654,'Y','N','U','N','N','N','Y','01a0435b-e6d9-761c-8954-37ac5d1f5668','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 10:14:52 BRT
ALTER TABLE LBR_NotaFiscalDetPag ADD COLUMN LBR_IdTermPag VARCHAR(40) DEFAULT NULL 
;

-- 27 de ago. de 2026 10:19:52 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800095,'Detalhes de Pagamento',(SELECT AD_Window_ID FROM AD_Window WHERE AD_Window_UU = 'df8ad221-e4c0-4415-80cb-4be3f5af2af3'),85,'Y',800088,0,0,'Y',TO_TIMESTAMP('2026-08-27 10:19:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:19:52','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N',802150,'N','N',1,'N','LBR','@Processed@=Y','Y','N','01a04360-7fa8-7d95-93de-84bad45dd11d','B','N','Y',0)
;

-- 27 de ago. de 2026 10:20:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802247,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800095,802141,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-b61a-76b2-84b8-8a03c980769c','N',2)
;

-- 27 de ago. de 2026 10:20:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802248,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800095,802142,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-b7ad-7c27-a38f-510e590cf179','Y','Y',10,4,2)
;

-- 27 de ago. de 2026 10:20:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802249,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800095,802150,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-b945-7208-84f1-d30db2fbbade','Y',20,2)
;

-- 27 de ago. de 2026 10:20:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802250,'Detalhes de Pagamento de Nota Fiscal',800095,802148,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-badf-7c93-9c90-689357e7a385','N',2)
;

-- 27 de ago. de 2026 10:20:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802251,'LBR_NotaFiscalDetPag_UU',800095,802149,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-bc77-7e17-b948-7c6c9afa51a9','N',2)
;

-- 27 de ago. de 2026 10:20:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802252,'Forma de Pagamento',800095,802151,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-be79-7053-9bf0-f17762a8f4f3','Y',30,2)
;

-- 27 de ago. de 2026 10:20:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802253,'Tipo de Pagamento',800095,802152,'Y',2,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-c00d-7f36-9670-72e64478a8ca','Y',40,2)
;

-- 27 de ago. de 2026 10:20:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802254,'Descrição do Meio de Pagamento',800095,802153,'Y',60,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-c1a6-798a-b6e3-8443d15eed0a','Y',50,5)
;

-- 27 de ago. de 2026 10:20:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802255,'Payment amount','Amount being paid','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',800095,802154,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-c346-7de8-9eaa-015bf41e6467','Y',60,2)
;

-- 27 de ago. de 2026 10:20:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802256,'Data do Pagamento',800095,802155,'Y',7,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-c4dc-78be-b499-14e375959b2d','Y',70,2)
;

-- 27 de ago. de 2026 10:20:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802257,'CNPJ do Estabelecimento',800095,802156,'Y',14,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-c67b-7f36-bd41-0435c9d8d932','Y',80,2)
;

-- 27 de ago. de 2026 10:20:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802258,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800095,802157,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-c806-77ef-bf21-7983bba0e904','Y',90,2)
;

-- 27 de ago. de 2026 10:20:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802259,'Tipo de Integração',800095,802158,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-c99c-7c53-a432-da63fff9747f','Y',100,2)
;

-- 27 de ago. de 2026 10:20:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802260,'CNPJ da Credenciadora',800095,802159,'Y',14,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-cb4c-75fb-a395-932be0df15dd','Y',110,2)
;

-- 27 de ago. de 2026 10:20:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802261,'Bandeira',800095,802160,'Y',2,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-ccdf-71d2-b842-f0ad3a41370d','Y',120,2)
;

-- 27 de ago. de 2026 10:20:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802262,'Código de Autorização',800095,802161,'Y',128,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-ce7a-7256-9cc1-300022794361','Y',130,5)
;

-- 27 de ago. de 2026 10:20:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (802263,'CNPJ do Recebedor',800095,802162,'Y',14,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','U','01a04360-d005-7ae1-a5ea-0b9d4104b193','Y',140,2,3)
;

-- 27 de ago. de 2026 10:20:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802264,'ID do Terminal de Pagamento',800095,802163,'Y',40,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','U','01a04360-d188-77db-8dd2-d851ea4d0378','Y',150,2)
;

-- 27 de ago. de 2026 10:20:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802265,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800095,802147,'Y',1,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 10:20:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 10:20:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04360-d347-7a7d-851a-4306c7c9fa8b','Y',160,2,2)
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=40, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802265
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Forma de Pagamento', Description=NULL, Help=NULL, SeqNo=50, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802252
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Tipo de Pagamento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=60, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802253
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Descrição do Meio de Pagamento', Description=NULL, Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802254
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Payment amount', Description='Amount being paid', Help='Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.', SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802255
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Data do Pagamento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=90, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802256
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='CNPJ do Estabelecimento', Description=NULL, Help=NULL, SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802257
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Region', Description='Identifies a geographical Region', Help='The Region identifies a unique Region for this Country.', IsDisplayed='Y', SeqNo=110, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802258
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Tipo de Integração', Description=NULL, Help=NULL, SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802259
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='CNPJ da Credenciadora', Description=NULL, Help=NULL, SeqNo=130, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802260
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Bandeira', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=140, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802261
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Código de Autorização', Description=NULL, Help=NULL, SeqNo=150, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802262
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='CNPJ do Recebedor', Description=NULL, Help=NULL, SeqNo=160, NumLines=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802263
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='ID do Terminal de Pagamento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=170, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802264
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='Detalhes de Pagamento de Nota Fiscal', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802250
;

-- 27 de ago. de 2026 10:22:07 BRT
UPDATE AD_Field SET Name='LBR_NotaFiscalDetPag_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802251
;

-- 27 de ago. de 2026 10:22:31 BRT
UPDATE AD_Column SET AD_Reference_ID=10, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2026-08-27 10:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802162
;

-- 27 de ago. de 2026 10:22:32 BRT
INSERT INTO t_alter_column values('lbr_notafiscaldetpag','LBR_CNPJReceb','VARCHAR(14)',null,'NULL')
;

-- 27 de ago. de 2026 10:22:43 BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2026-08-27 10:22:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802162
;

-- 27 de ago. de 2026 10:22:59 BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2026-08-27 10:22:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802163
;

-- 27 de ago. de 2026 11:14:46 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800655,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:14:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:14:45','YYYY-MM-DD HH24:MI:SS'),10,'LBR_vTroco','Valor do Troco','Valor do Troco','LBR','01a04392-c0a7-7bf9-9276-f73ef8feee40')
;

-- 27 de ago. de 2026 11:15:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802164,0,'Valor do Troco',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = '4199f411-1ed8-4e67-9efc-1b1cd0af19c1'),'LBR_vTroco',14,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:15:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:15:20','YYYY-MM-DD HH24:MI:SS'),10,800655,'Y','N','LBR','N','N','N','Y','01a04393-468e-7202-99fa-3c8553b91058','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 11:15:22 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_vTroco NUMERIC DEFAULT NULL 
;

-- 27 de ago. de 2026 11:15:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802266,'Valor do Troco',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = 'e6553657-d315-48db-b056-492ee6a484ef'),802164,'Y',14,560,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:15:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:15:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a04393-8158-7b84-b54b-6412402ff5c0','Y',520,2)
;

-- 27 de ago. de 2026 11:16:21 BRT
UPDATE AD_Field SET Name='Valor do Troco', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=510, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802266
;

-- 27 de ago. de 2026 11:16:21 BRT
UPDATE AD_Field SET Name='Document Status', Description='The current status of the document', Help='The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', SeqNo=520, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='2ca662e3-46a7-4155-8fdf-26b87b505350'
;

-- 27 de ago. de 2026 11:16:21 BRT
UPDATE AD_Field SET Name='Process NotaFiscal', Description=NULL, Help=NULL, SeqNo=530, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='63771cae-dcdc-44d8-a21d-bfd8f89afe91'
;

-- 27 de ago. de 2026 11:16:21 BRT
UPDATE AD_Field SET Name='Posted', Description='Posting status', Help='The Posted field indicates the status of the Generation of General Ledger Accounting Lines ', SeqNo=540, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='fa1f533d-a3d6-47db-9e57-aad118f20834'
;

-- 27 de ago. de 2026 11:16:21 BRT
UPDATE AD_Field SET Name='Distribute Amount to Doc Line Details', Description='Distribute a given amount to line details of a document', Help=NULL, SeqNo=550, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800059
;

-- 27 de ago. de 2026 11:16:21 BRT
UPDATE AD_Field SET Name='Create PO From Nota Fiscal', Description='Generate and Process PO from Nota Fiscal', Help='This process allows to generate purchase order to completed Nota Fiscal.', SeqNo=560, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800060
;

-- 27 de ago. de 2026 11:17:55 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800089,'Eventos de DF-e Recebidos','LBR_NotaFiscalEventRec',0,'3',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:17:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:17:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','01a04395-a364-76d2-8444-11bffc4926a6','N','N','N','N','N','N','N')
;

-- 27 de ago. de 2026 11:17:55 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NotaFiscalEventRec',1000000,'N','N','Table LBR_NotaFiscalEventRec','Y','Y',0,0,TO_TIMESTAMP('2026-08-27 11:17:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:17:55','YYYY-MM-DD HH24:MI:SS'),10,800585,'Y',1000000,1,200000,'01a04395-a4fc-746d-9c2f-d46be7c83f8a')
;

-- 27 de ago. de 2026 11:18:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802165,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800089,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:12','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a04395-e9b4-761b-b8ec-f32d6dd4aaa9','N')
;

-- 27 de ago. de 2026 11:18:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802166,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800089,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:13','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a04395-edad-77da-b4af-c9890aec647a','N')
;

-- 27 de ago. de 2026 11:18:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802167,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800089,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:14','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a04395-ef63-7169-8c3e-513bbdf13770','N')
;

-- 27 de ago. de 2026 11:18:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802168,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800089,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:14','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a04395-f0fc-79b2-ac6c-0aacfc42c971','N')
;

-- 27 de ago. de 2026 11:18:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802169,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800089,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:15','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a04395-f28c-75a5-af99-7b1075d6dae8','N')
;

-- 27 de ago. de 2026 11:18:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802170,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800089,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:15','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a04395-f427-7684-a876-a78cda82949c','N')
;

-- 27 de ago. de 2026 11:18:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802171,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800089,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:15','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a04395-f5c9-7748-8589-f1413267d64d','N')
;

-- 27 de ago. de 2026 11:18:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800656,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NotaFiscalEventRec_ID','Eventos de DF-e Recebidos','Eventos de DF-e Recebidos','LBR','01a04395-f75b-71ba-b4da-69dc30cc2e55')
;

-- 27 de ago. de 2026 11:18:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802172,0.0,'Eventos de DF-e Recebidos',800089,'LBR_NotaFiscalEventRec_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:16','YYYY-MM-DD HH24:MI:SS'),10,800656,'N','N','LBR','N','01a04395-f8f4-7c00-8ffa-74a90c173da3','N')
;

-- 27 de ago. de 2026 11:18:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800657,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NotaFiscalEventRec_UU','LBR_NotaFiscalEventRec_UU','LBR_NotaFiscalEventRec_UU','LBR','01a04395-fa8c-75ee-81a3-ff8b8456b6a0')
;

-- 27 de ago. de 2026 11:18:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802173,0.0,'LBR_NotaFiscalEventRec_UU',800089,'LBR_NotaFiscalEventRec_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:18:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:18:17','YYYY-MM-DD HH24:MI:SS'),10,800657,'Y','N','LBR','N','01a04395-fc31-7b12-9c7a-0119d0b0d752','N')
;

-- 27 de ago. de 2026 11:18:18 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800175,'01a04395-fdc7-7035-aede-397165b68f5c',TO_TIMESTAMP('2026-08-27 11:18:18','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_NotaFiscalEventRec_UU_idx',TO_TIMESTAMP('2026-08-27 11:18:18','YYYY-MM-DD HH24:MI:SS'),10,800089,'Y','Y','N','N')
;

-- 27 de ago. de 2026 11:18:18 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800206,'01a04395-ff60-7ae7-968b-3a1ebf92cbb2',TO_TIMESTAMP('2026-08-27 11:18:18','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-08-27 11:18:18','YYYY-MM-DD HH24:MI:SS'),10,802173,800175,10)
;

-- 27 de ago. de 2026 11:18:28 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRNotaFiscalEventRec', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-27 11:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802165
;

-- 27 de ago. de 2026 11:18:28 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADOrg_LBRNotaFiscalEventRec', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-27 11:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802166
;

-- 27 de ago. de 2026 11:18:28 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRNotaFiscalEventRec', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-27 11:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802168
;

-- 27 de ago. de 2026 11:18:28 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRNotaFiscalEventRec', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-27 11:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802170
;

-- 27 de ago. de 2026 11:18:28 BRT
CREATE TABLE LBR_NotaFiscalEventRec (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_NotaFiscalEventRec_ID NUMERIC(10) NOT NULL, LBR_NotaFiscalEventRec_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalEventRec_Key PRIMARY KEY (LBR_NotaFiscalEventRec_ID), CONSTRAINT LBR_NotaFiscalEventRec_UU_idx UNIQUE (LBR_NotaFiscalEventRec_UU))
;

-- 27 de ago. de 2026 11:18:28 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD CONSTRAINT ADClient_LBRNotaFiscalEventRec FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de ago. de 2026 11:18:28 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD CONSTRAINT ADOrg_LBRNotaFiscalEventRec FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de ago. de 2026 11:18:28 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD CONSTRAINT CreatedBy_LBRNotaFiscalEventRec FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de ago. de 2026 11:18:28 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD CONSTRAINT UpdatedBy_LBRNotaFiscalEventRec FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de ago. de 2026 11:19:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802174,0,'NFe ID',800089,'LBR_NFeID',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:19:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:19:11','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = 'dee210b9-2dd8-4b97-87dd-909263fd7a9c'),'Y','N','LBR','N','N','N','Y','01a04396-cf5f-7144-9195-97ef2885a959','Y',0,'N','N','N','N','N')
;

-- 27 de ago. de 2026 11:19:13 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_NFeID VARCHAR(255) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:20:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802175,0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800089,'LBR_NotaFiscal_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:20:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:20:29','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '9dcbc482-1130-41e7-ad99-152bb67e2db4'),'Y','N','LBR','N','N','N','Y','01a04397-fefd-7cdc-a4f8-956ed81472c3','Y',0,'N','N','S','N','N')
;

-- 27 de ago. de 2026 11:20:31 BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalEventRec', FKConstraintType='S',Updated=TO_TIMESTAMP('2026-08-27 11:20:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802175
;

-- 27 de ago. de 2026 11:20:31 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:20:31 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalEventRec FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED
;

-- 27 de ago. de 2026 11:20:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802176,0,'NFe XML',800089,'LBR_NFeXML_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:20:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:20:51','YYYY-MM-DD HH24:MI:SS'),10,800455,'Y','N','LBR','N','N','N','Y','01a04398-5433-780e-9f89-c527bcb7f3e1','Y',0,'N','N','N','N','N')
;

-- 27 de ago. de 2026 11:20:53 BRT
UPDATE AD_Column SET FKConstraintName='LBRNFeXML_LBRNotaFiscalEventRec', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-08-27 11:20:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802176
;

-- 27 de ago. de 2026 11:20:53 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_NFeXML_ID NUMERIC(10) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:20:53 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD CONSTRAINT LBRNFeXML_LBRNotaFiscalEventRec FOREIGN KEY (LBR_NFeXML_ID) REFERENCES lbr_nfexml(lbr_nfexml_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de ago. de 2026 11:21:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800658,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:21:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:21:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EventCode','Cód. do Evento','Cód. do Evento','LBR','01a04399-2cb6-7d9b-9389-337926dd31b0')
;

-- 27 de ago. de 2026 11:22:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802177,0,'Cód. do Evento',800089,'LBR_EventCode',6,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:22:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:22:10','YYYY-MM-DD HH24:MI:SS'),10,800658,'Y','N','LBR','N','N','N','Y','01a04399-8a30-7953-abc7-2b570e486d91','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 11:22:12 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_EventCode VARCHAR(6) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:22:45 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800659,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:22:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:22:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EventSeqNo','Seq. do Evento','Seq. do Evento','LBR','01a0439a-0f5f-7b85-b6e5-0d94de223beb')
;

-- 27 de ago. de 2026 11:23:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802178,0,'Seq. do Evento',800089,'LBR_EventSeqNo',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:23:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:23:08','YYYY-MM-DD HH24:MI:SS'),10,800659,'Y','N','LBR','N','N','N','Y','01a0439a-6cf8-7a54-ac10-ebb7a4b209de','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 11:23:10 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_EventSeqNo NUMERIC(10) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:23:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800660,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:23:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:23:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EventDate','Data do Evento','Data do Evento','LBR','01a0439a-edce-7cf7-ba13-e543913c4d4d')
;

-- 27 de ago. de 2026 11:24:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802179,0,'Data do Evento',800089,'LBR_EventDate',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:24:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:24:00','YYYY-MM-DD HH24:MI:SS'),10,800660,'Y','N','LBR','N','N','N','Y','01a0439b-3684-7bff-b19e-0961a6c03a0e','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 11:24:01 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_EventDate TIMESTAMP DEFAULT NULL 
;

-- 27 de ago. de 2026 11:24:33 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800661,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:24:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:24:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EventAuthor','CNPJ/CPF do Autor','CNPJ/CPF do Autor','LBR','01a0439b-b62d-7610-a76c-7bab95ac8558')
;

-- 27 de ago. de 2026 11:24:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802180,0,'CNPJ/CPF do Autor',800089,'LBR_EventAuthor',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:24:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:24:51','YYYY-MM-DD HH24:MI:SS'),10,800661,'Y','N','LBR','N','N','N','Y','01a0439c-01b3-7dbb-afa4-176cb5272c26','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 11:24:54 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_EventAuthor VARCHAR(14) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:25:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800662,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:25:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:25:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EventProt','Protocolo','Protocolo','LBR','01a0439c-9961-7db9-91d9-7e2cea6b78f2')
;

-- 27 de ago. de 2026 11:25:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802181,0,'Protocolo',800089,'LBR_EventProt',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:25:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:25:52','YYYY-MM-DD HH24:MI:SS'),10,800662,'Y','N','LBR','N','N','N','Y','01a0439c-ec9c-7e1e-a296-de0a1f1ba75e','Y',0,'N','N','N','N')
;

-- 27 de ago. de 2026 11:25:54 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN LBR_EventProt VARCHAR(15) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:28:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802182,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800089,'Description',2000,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:28:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:28:09','YYYY-MM-DD HH24:MI:SS'),10,275,'Y','Y','LBR','N','N','N','Y','01a0439f-0506-7c4c-a1ed-209dcda5ebb7','Y',10,'N','N','N','N')
;

-- 27 de ago. de 2026 11:28:11 BRT
ALTER TABLE LBR_NotaFiscalEventRec ADD COLUMN Description VARCHAR(2000) DEFAULT NULL 
;

-- 27 de ago. de 2026 11:30:26 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800096,'Eventos de DF-e Recebidos',(SELECT AD_Window_ID FROM AD_Window WHERE AD_Window_UU = 'df8ad221-e4c0-4415-80cb-4be3f5af2af3'),120,'Y',800089,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:26','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','Y',802175,'N','N',1,'N','LBR','N','N',(SELECT AD_Column_ID FROM AD_Column WHERE AD_Column_UU = '7ddf8b79-d8c4-4364-965f-3088073737eb'),'01a043a1-1a9a-78a1-86d8-57dc372e3a19','B','N','Y',0)
;

-- 27 de ago. de 2026 11:30:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802267,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800096,802165,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-35cf-7861-8eac-eb84bdac7280','N',2)
;

-- 27 de ago. de 2026 11:30:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802268,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800096,802166,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-3766-77e2-97fd-0412a7a5719d','Y','Y',10,4,2)
;

-- 27 de ago. de 2026 11:30:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (802269,'Description','Optional short description of the record','A description is limited to 255 characters.',800096,802182,'Y',2000,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-3906-7bad-b78f-acf3ba0531ad','Y',20,5,3)
;

-- 27 de ago. de 2026 11:30:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802270,'Eventos de DF-e Recebidos',800096,802172,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-3ab7-7a5d-a43a-63865d4ff8fa','N',2)
;

-- 27 de ago. de 2026 11:30:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802271,'LBR_NotaFiscalEventRec_UU',800096,802173,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-3c99-7e37-bd58-1ec05e629c4d','N',2)
;

-- 27 de ago. de 2026 11:30:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802272,'NFe ID',800096,802174,'Y',255,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-3e30-729b-9180-dbc24c6d6bf8','Y',30,5)
;

-- 27 de ago. de 2026 11:30:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802273,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800096,802175,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-3fcc-780d-9b91-5a36b18f8517','Y',40,2)
;

-- 27 de ago. de 2026 11:30:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802274,'NFe XML',800096,802176,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-416d-74cd-a3b2-7110a6b6dca0','Y',50,2)
;

-- 27 de ago. de 2026 11:30:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802275,'Cód. do Evento',800096,802177,'Y',6,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-436d-7ce9-a855-3b32b5fd80dd','Y',60,2)
;

-- 27 de ago. de 2026 11:30:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802276,'Seq. do Evento',800096,802178,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-44f7-771f-bc32-31a4a5776013','Y',70,2)
;

-- 27 de ago. de 2026 11:30:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802277,'Data do Evento',800096,802179,'Y',7,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-469b-7210-a2f9-56e01cde33a4','Y',80,2)
;

-- 27 de ago. de 2026 11:30:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802278,'CNPJ/CPF do Autor',800096,802180,'Y',14,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-4895-7b46-8e0a-574b349b581f','Y',90,2)
;

-- 27 de ago. de 2026 11:30:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802279,'Protocolo',800096,802181,'Y',15,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-4a31-72ac-9f76-79a8d30d3612','Y',100,2)
;

-- 27 de ago. de 2026 11:30:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802280,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800096,802171,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:30:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:30:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a1-4bcf-763f-b58a-adefbea8a2aa','Y',110,2,2)
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Brazilian Fiscal Invoice (Nota Fiscal)', Description='Brazilian Fiscal Invoice (Nota Fiscal) Identifier', Help='The Brazilian Fiscal Invoice (Nota Fiscal) Document.', IsDisplayed='Y', SeqNo=30, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802273
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=40, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802280
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Data do Evento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=50, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802277
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='NFe ID', Description=NULL, Help=NULL, SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802272
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='NFe XML', Description=NULL, Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802274
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Cód. do Evento', Description=NULL, Help=NULL, SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802275
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Seq. do Evento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=90, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802276
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.', IsDisplayed='Y', SeqNo=100, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802269
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='CNPJ/CPF do Autor', Description=NULL, Help=NULL, SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802278
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Protocolo', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=120, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802279
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='Eventos de DF-e Recebidos', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802270
;

-- 27 de ago. de 2026 11:31:49 BRT
UPDATE AD_Field SET Name='LBR_NotaFiscalEventRec_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802271
;

-- 27 de ago. de 2026 11:32:43 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (800034,'Eventos de DF-e Recebidos',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:42','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','Y','N','N','01a043a3-2fc5-729e-a8e6-ee16978ccae6')
;

-- 27 de ago. de 2026 11:32:43 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800097,'Eventos de DF-e Recebidos',800034,10,'Y',800089,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:43','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR_NotaFiscalEventRec.Created DESC','N',0,'N','LBR','Y','N','01a043a3-31aa-7b27-a100-073e440d1698')
;

-- 27 de ago. de 2026 11:32:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802281,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800097,802165,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-335f-76f9-ba22-54e720032a3f','N',2)
;

-- 27 de ago. de 2026 11:32:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802282,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800097,802166,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-34eb-75f6-af88-29d2df0d6ba7','Y','Y',10,4,2)
;

-- 27 de ago. de 2026 11:32:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (802283,'Description','Optional short description of the record','A description is limited to 255 characters.',800097,802182,'Y',2000,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-369a-7808-a753-77b3de6e9f5d','Y',20,5,3)
;

-- 27 de ago. de 2026 11:32:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802284,'Eventos de DF-e Recebidos',800097,802172,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-3832-7294-8645-9e6d0fb272bd','N',2)
;

-- 27 de ago. de 2026 11:32:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802285,'LBR_NotaFiscalEventRec_UU',800097,802173,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-39c7-70ef-b907-1a7cc5dd7948','N',2)
;

-- 27 de ago. de 2026 11:32:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802286,'NFe ID',800097,802174,'Y',255,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-3b69-75a9-b349-f098db716d39','Y',30,5)
;

-- 27 de ago. de 2026 11:32:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802287,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800097,802175,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-3cf9-7969-bc2d-df7245c2509e','Y',40,2)
;

-- 27 de ago. de 2026 11:32:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802288,'NFe XML',800097,802176,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-3e99-701d-bc0d-2f1ce64f3bbb','Y',50,2)
;

-- 27 de ago. de 2026 11:32:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802289,'Cód. do Evento',800097,802177,'Y',6,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-409a-741a-950a-956e4842baae','Y',60,2)
;

-- 27 de ago. de 2026 11:32:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802290,'Seq. do Evento',800097,802178,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-4235-7598-a5af-83c4119aa91f','Y',70,2)
;

-- 27 de ago. de 2026 11:32:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802291,'Data do Evento',800097,802179,'Y',7,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-43c7-7a2a-b619-c6251f54f7e2','Y',80,2)
;

-- 27 de ago. de 2026 11:32:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802292,'CNPJ/CPF do Autor',800097,802180,'Y',14,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-4567-72fc-b5b2-067316e15e55','Y',90,2)
;

-- 27 de ago. de 2026 11:32:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802293,'Protocolo',800097,802181,'Y',15,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-4712-75ca-86c6-21d6731922b8','Y',100,2)
;

-- 27 de ago. de 2026 11:32:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802294,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800097,802171,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:49','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a043a3-48a2-7843-adb8-1ad02a86ab92','Y',110,2,2)
;

-- 27 de ago. de 2026 11:32:49 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,AD_Menu_UU) VALUES (800070,'Eventos de DF-e Recebidos','W',800034,0,0,'Y',TO_TIMESTAMP('2026-08-27 11:32:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 11:32:49','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','LBR','01a043a3-4a34-75ad-85ee-ecdd0ed28bf2')
;

-- 27 de ago. de 2026 11:32:50 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800070, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800070)
;

-- 27 de ago. de 2026 11:32:50 BRT
UPDATE AD_Table SET AD_Window_ID=800034,Updated=TO_TIMESTAMP('2026-08-27 11:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800089
;

-- 27 de ago. de 2026 11:33:07 BRT
UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2026-08-27 11:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800097
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=30, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802294
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Data do Evento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=40, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802291
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='NFe ID', Description=NULL, Help=NULL, SeqNo=50, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802286
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Brazilian Fiscal Invoice (Nota Fiscal)', Description='Brazilian Fiscal Invoice (Nota Fiscal) Identifier', Help='The Brazilian Fiscal Invoice (Nota Fiscal) Document.', IsDisplayed='Y', SeqNo=70, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802287
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Cód. do Evento', Description=NULL, Help=NULL, SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802289
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Seq. do Evento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=90, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802290
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.', IsDisplayed='Y', SeqNo=100, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802283
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='CNPJ/CPF do Autor', Description=NULL, Help=NULL, SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802292
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Protocolo', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=120, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802293
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='Eventos de DF-e Recebidos', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802284
;

-- 27 de ago. de 2026 11:34:12 BRT
UPDATE AD_Field SET Name='LBR_NotaFiscalEventRec_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-27 11:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802285
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=200233
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=200232
;

-- 27 de ago. de 2026 11:34:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=20,Updated=TO_TIMESTAMP('2026-08-27 11:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800070
;

-- 27 de ago. de 2026 13:55:48 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800153,0,0,'Y',TO_TIMESTAMP('2026-08-27 13:55:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 13:55:48','YYYY-MM-DD HH24:MI:SS'),10,'Sefaz NF-e Environment',800100,50,17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '492806a9-e053-4007-a07e-c611ceeab964'),'N',1,'Y','-1','LBR_NFeEnv','Y','LBR',(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '66862c66-9bdb-497e-a406-14231e9a9145'),'01a04426-30a1-7a53-9acd-1427c730b2cd','N','N','D','N')
;

-- 27 de ago. de 2026 13:57:01 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 13:57:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800143
;

-- 27 de ago. de 2026 13:57:04 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 13:57:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800142
;

-- 27 de ago. de 2026 13:57:06 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 13:57:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800141
;

-- 27 de ago. de 2026 13:57:09 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 13:57:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800140
;

-- 27 de ago. de 2026 13:59:21 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-08-27 13:59:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ManifestNFeXML','Y',800007,'LBR_ManifestNFeXML',TO_TIMESTAMP('2026-08-27 13:59:21','YYYY-MM-DD HH24:MI:SS'),10,'N','01a04429-7069-7396-a5a8-c5a446dfd458','W',800061,800101,10,'LBR')
;

-- 27 de ago. de 2026 14:39:05 BRT
UPDATE AD_Column SET AD_Reference_Value_ID=800078,Updated=TO_TIMESTAMP('2026-08-27 14:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802152
;

-- 27 de ago. de 2026 14:40:11 BRT
UPDATE AD_Form SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 14:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Form_UU='bfe627a3-79f9-4274-9609-32b800a8623c'
;

-- 27 de ago. de 2026 14:40:11 BRT
UPDATE AD_Menu SET Name='Generate NF From XML (manual)', Description='Select NF-e XML and generate Brazilian Fiscal Invoice', IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 14:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Menu_UU='db843d11-38af-4372-b022-4b22b6525153'
;

-- 27 de ago. de 2026 14:58:41 BRT
INSERT INTO AD_Form (AD_Form_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,Classname,AccessLevel,EntityType,IsBetaFunctionality,AD_Form_UU) VALUES (800003,0,0,'Y',TO_TIMESTAMP('2026-08-27 14:58:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 14:58:41','YYYY-MM-DD HH24:MI:SS'),10,'Conciliar e Importar DF-e',NULL,NULL,'org.idempierelbr.nfe.apps.form.WNFeImportDFe','1','LBR','N','01a0445f-c44b-7f0c-a502-48eb66956913')
;

-- 27 de ago. de 2026 15:00:00 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,AD_Form_ID,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800071,'Conciliar e Importar DF-e','X',0,0,'Y',TO_TIMESTAMP('2026-08-27 15:00:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-27 15:00:00','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800003,'N','LBR','Y','01a04460-f847-774c-8123-6bdceaaae9ef')
;

-- 27 de ago. de 2026 15:00:00 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800071, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800071)
;

-- 27 de ago. de 2026 15:00:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=21,Updated=TO_TIMESTAMP('2026-08-27 15:00:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800071
;

-- 27 de ago. de 2026 15:00:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=20,Updated=TO_TIMESTAMP('2026-08-27 15:00:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800071
;

-- 27 de ago. de 2026 15:00:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=21,Updated=TO_TIMESTAMP('2026-08-27 15:00:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800070
;

-- 27 de ago. de 2026 15:01:46 BRT
UPDATE AD_Menu SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 15:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Menu_ID=800051
;

-- 27 de ago. de 2026 15:02:07 BRT
UPDATE AD_Menu SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-27 15:02:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Menu_ID=800053
;

-- 27 de ago. de 2026 15:03:18 BRT
UPDATE AD_Window SET Name='Monitor de DF-e',Updated=TO_TIMESTAMP('2026-08-27 15:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Window_ID=800021
;

-- 27 de ago. de 2026 15:03:18 BRT
UPDATE AD_Menu SET Name='Monitor de DF-e', Description=NULL, IsActive='Y',Updated=TO_TIMESTAMP('2026-08-27 15:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Menu_ID=800052
;

-- 27 de ago. de 2026 15:03:24 BRT
UPDATE AD_Tab SET Name='Monitor de DF-e',Updated=TO_TIMESTAMP('2026-08-27 15:03:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800061
;

