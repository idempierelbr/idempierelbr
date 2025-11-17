-- 
SELECT register_migration_script('202511170745_ReformaTributaria.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 17 de nov. de 2025 07:45:41 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (800541,0,0,'Y',TO_TIMESTAMP('2025-11-17 07:45:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-17 07:45:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_IsTaxIncluded','Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','LBR','f9a64bef-aeea-47d5-9e56-c3f3d2ebf004')
;

-- 17 de nov. de 2025 07:46:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801850,0,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800065,'LBR_IBS_UF_IsTaxIncluded','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-11-17 07:46:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-17 07:46:24','YYYY-MM-DD HH24:MI:SS'),10,800541,'Y','N','LBR','N','N','N','Y','2fef2cfb-8754-4935-8b49-2590dafebbab','Y',0,'N','N','N','N')
;

-- 17 de nov. de 2025 07:46:26 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_IBS_UF_IsTaxIncluded CHAR(1) DEFAULT 'Y' CHECK (LBR_IBS_UF_IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- 17 de nov. de 2025 07:46:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (800542,0,0,'Y',TO_TIMESTAMP('2025-11-17 07:46:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-17 07:46:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_IsTaxIncluded','Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','LBR','9f6e1745-44a1-4825-9bd1-21e8b73d4d4c')
;

-- 17 de nov. de 2025 07:47:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801851,0,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800065,'LBR_IBS_Mun_IsTaxIncluded','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-11-17 07:47:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-17 07:47:17','YYYY-MM-DD HH24:MI:SS'),10,800542,'Y','N','LBR','N','N','N','Y','25f6884a-2f4d-4d97-bfd0-9118c47da76d','Y',0,'N','N','N','N')
;

-- 17 de nov. de 2025 07:47:18 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_IBS_Mun_IsTaxIncluded CHAR(1) DEFAULT 'Y' CHECK (LBR_IBS_Mun_IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- 17 de nov. de 2025 07:47:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (800543,0,0,'Y',TO_TIMESTAMP('2025-11-17 07:47:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-17 07:47:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_IsTaxIncluded','Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','LBR','dd8fc448-79b7-4f80-a62f-faaeb7edbab3')
;

-- 17 de nov. de 2025 07:48:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801852,0,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800065,'LBR_CBS_IsTaxIncluded','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-11-17 07:48:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-17 07:48:12','YYYY-MM-DD HH24:MI:SS'),10,800543,'Y','N','LBR','N','N','N','Y','a27b69d3-79c6-4c38-a32e-3475dd4f034b','Y',0,'N','N','N','N')
;

-- 17 de nov. de 2025 07:48:14 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_CBS_IsTaxIncluded CHAR(1) DEFAULT 'Y' CHECK (LBR_CBS_IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- 17 de nov. de 2025 07:49:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801853,0,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',800068,'IsTaxIncluded','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-11-17 07:49:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-17 07:49:06','YYYY-MM-DD HH24:MI:SS'),10,1065,'N','N','LBR','N','N','N','Y','d145c545-a462-41a0-b184-2d2abe6293ba','Y',0,'N','N','N','N')
;

-- 17 de nov. de 2025 07:49:07 BRT
ALTER TABLE LBR_DocLine_IS ADD IsTaxIncluded CHAR(1) DEFAULT 'Y' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

