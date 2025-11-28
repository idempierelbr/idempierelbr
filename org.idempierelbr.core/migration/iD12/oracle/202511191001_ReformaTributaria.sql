-- 
SELECT register_migration_script('202511191001_ReformaTributaria.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de nov. de 2025 10:01:44 BRT
UPDATE AD_Column SET FieldLength=4,Updated=TO_TIMESTAMP('2025-11-19 10:01:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=800898
;

-- 19 de nov. de 2025 10:02:11 BRT
UPDATE AD_Column SET FieldLength=4,Updated=TO_TIMESTAMP('2025-11-19 10:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_UU='346920c7-512d-4799-a9cc-dc8b91774dd4'
;

-- 19 de nov. de 2025 10:02:13 BRT
ALTER TABLE LBR_NotaFiscalLotLine MODIFY LBR_NFeStatus VARCHAR2(4 CHAR) DEFAULT NULL 
;

-- 19 de nov. de 2025 10:02:28 BRT
UPDATE AD_Column SET FieldLength=4,Updated=TO_TIMESTAMP('2025-11-19 10:02:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_UU='d6b2c8fc-3626-4ef2-9318-3994ef225e40'
;

-- 19 de nov. de 2025 10:02:29 BRT
ALTER TABLE LBR_NotaFiscalEventLine MODIFY LBR_NFeStatus VARCHAR2(4 CHAR) DEFAULT NULL 
;

-- 19 de nov. de 2025 10:06:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801854,0,'City','City','City in a country',toRecordId('AD_Table','87a17ac6-2a17-490b-89d7-9745d70f74ca'),52045,'C_City_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-11-19 10:06:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:06:49','YYYY-MM-DD HH24:MI:SS'),10,1830,'Y','N','LBR','N','N','Y','Y','88ece031-308b-41ac-ac1b-dc2e243ef9e0','Y',0,'N','N','N','N')
;

-- 19 de nov. de 2025 10:06:51 BRT
UPDATE AD_Column SET FKConstraintName='CCity_LBRTaxDefinition', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-11-19 10:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801854
;

-- 19 de nov. de 2025 10:06:51 BRT
ALTER TABLE LBR_TaxDefinition ADD C_City_ID NUMBER(10) DEFAULT NULL 
;

-- 19 de nov. de 2025 10:06:51 BRT
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT CCity_LBRTaxDefinition FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de nov. de 2025 10:09:18 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800017,'LBR C_City of To_Region','Cities of region if To_Region_ID is set, otherwise cities without region','S','((@To_Region_ID@>0 AND C_City.C_Region_ID=@To_Region_ID@) OR (@To_Region_ID@=0 AND C_City.C_Country_ID=@C_Country_ID@ AND C_City.C_Region_ID IS NULL))',0,0,'Y',TO_TIMESTAMP('2025-11-19 10:09:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:09:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','e5d7a80b-a6ad-419d-bbc1-a8b56a0f3f09')
;

-- 19 de nov. de 2025 10:10:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (800544,0,0,'Y',TO_TIMESTAMP('2025-11-19 10:10:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:10:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR_To_City_ID','City (To)','Receiving City','The To City indicates the receiving city on a document','City (To)','LBR','437d43fa-bd88-495e-8e4d-6aaf600d00c1')
;

-- 19 de nov. de 2025 10:12:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801855,0,'City (To)','Receiving City','The To City indicates the receiving city on a document',toRecordId('AD_Table','87a17ac6-2a17-490b-89d7-9745d70f74ca'),800017,'LBR_To_City_ID',10,'N','N','N','N','N',0,'N',18,toRecordId('AD_Reference','8ec2c866-a1d6-4139-94ff-98087a5331ab'),0,0,'Y',TO_TIMESTAMP('2025-11-19 10:12:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:12:37','YYYY-MM-DD HH24:MI:SS'),10,800544,'Y','N','LBR','N','N','N','Y','b97d17e7-07b3-4baa-8686-6d2f323f8267','Y',0,'N','N','N','N')
;

-- 19 de nov. de 2025 10:12:39 BRT
UPDATE AD_Column SET FKConstraintName='LBRToCity_LBRTaxDefinition', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-11-19 10:12:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801855
;

-- 19 de nov. de 2025 10:12:39 BRT
ALTER TABLE LBR_TaxDefinition ADD LBR_To_City_ID NUMBER(10) DEFAULT NULL 
;

-- 19 de nov. de 2025 10:12:39 BRT
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRToCity_LBRTaxDefinition FOREIGN KEY (LBR_To_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de nov. de 2025 10:12:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802057,'City','City','City in a country',toRecordId('AD_Tab','b594a11e-1738-4901-9556-d47a6753d786'),801854,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-11-19 10:12:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:12:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e6ef593c-44e8-49e3-bc6c-72e1a342d987','Y',10,2)
;

-- 19 de nov. de 2025 10:12:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802058,'City (To)','Receiving City','The To City indicates the receiving city on a document',toRecordId('AD_Tab','b594a11e-1738-4901-9556-d47a6753d786'),801855,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-11-19 10:12:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:12:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b731d435-bfb9-432c-abc8-fb1fe4fc9038','Y',20,2)
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='City', Description='City', Help='City in a country', IsDisplayed='Y', SeqNo=120, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802057
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='City (To)', Description='Receiving City', Help='The To City indicates the receiving city on a document', IsDisplayed='Y', SeqNo=130, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802058
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Product', Description='Product, Service, Item', Help='Identifies an item which is either purchased or sold in this organization.', SeqNo=140, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='841ae5cc-1bc0-4ff1-837f-89278f5660fa'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='CFOP Product Category', Description='Identifies a CFOP Product Category', Help=NULL, SeqNo=150, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='a67748b9-5dbf-4376-a97b-a4430e1e544b'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Product Fiscal Group', Description='Identifies a Product Fiscal Group', Help=NULL, SeqNo=160, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='8718fd40-d9ad-4150-9eaa-824ed919485f'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='BP Fiscal Group', Description='Identifies a Business Partner Fiscal Group', Help=NULL, SeqNo=170, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='bfae92b8-7f06-4c1a-91e0-b20a115e0280'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='NCM', Description='NCM stands for Nomenclatura Comum do MERCOSUL', Help=NULL, SeqNo=180, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='3586e300-157b-4d70-8ec2-be05111ce908'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Is Substituicao Tributaria', Description='Defines the Is Substituicao Tributaria Status', Help=NULL, SeqNo=190, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='b27cd9f7-6ee7-4a7b-b396-2fb513bad25f'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Document Type', Description='Document type or rules', Help='The Document Type determines document sequence and processing rules', SeqNo=200, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='23a64c22-929d-46bf-bf1b-69fdc01c281a'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Transaction Type', Description='Identifies a Transaction Type', Help=NULL, SeqNo=210, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='90bf8f4f-3242-4b0e-97b8-48388748564e'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Transaction Tax', Description='Identifies a transaction tax (document/line)', Help=NULL, SeqNo=220, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='509a9998-c02c-43f9-bf4a-9ece65145f9e'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Legal Message', Description='Identifies a Legal Message', Help=NULL, SeqNo=230, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='848b84c2-d63f-48c1-8ec7-6b8aaaf676cf'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='Tax Status', Description='Defines the Tax Status', Help=NULL, SeqNo=240, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='5577469e-d40a-48a2-8c6d-df2718b06bc9'
;

-- 19 de nov. de 2025 10:13:34 BRT
UPDATE AD_Field SET Name='CFOP', Description='Indentifies the CFOP', Help=NULL, SeqNo=250, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='eabcdc85-2285-4697-aada-5fe728041d8f'
;

-- 19 de nov. de 2025 10:13:43 BRT
UPDATE AD_Column SET IsAutocomplete='Y',Updated=TO_TIMESTAMP('2025-11-19 10:13:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801855
;

-- 19 de nov. de 2025 10:23:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801856,0,'City','City','City in a country',toRecordId('AD_Table','362abb79-de7b-4ec4-b7ed-72882dfece8d'),52045,'C_City_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-11-19 10:23:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:23:48','YYYY-MM-DD HH24:MI:SS'),10,1830,'Y','N','LBR','N','N','Y','Y','ab6b6b02-3253-43d3-8d55-c8b92b54b2ea','Y',0,'N','N','N','N')
;

-- 19 de nov. de 2025 10:23:54 BRT
UPDATE AD_Column SET FKConstraintName='CCity_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-11-19 10:23:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801856
;

-- 19 de nov. de 2025 10:23:54 BRT
ALTER TABLE LBR_TaxConfig_Region ADD C_City_ID NUMBER(10) DEFAULT NULL 
;

-- 19 de nov. de 2025 10:23:54 BRT
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT CCity_LBRTaxConfigRegion FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de nov. de 2025 10:24:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801857,0,'City (To)','Receiving City','The To City indicates the receiving city on a document',toRecordId('AD_Table','362abb79-de7b-4ec4-b7ed-72882dfece8d'),800017,'LBR_To_City_ID',10,'N','N','N','N','N',0,'N',18,toRecordId('AD_Reference','8ec2c866-a1d6-4139-94ff-98087a5331ab'),0,0,'Y',TO_TIMESTAMP('2025-11-19 10:24:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:24:53','YYYY-MM-DD HH24:MI:SS'),10,800544,'Y','N','LBR','N','N','Y','Y','d80f3116-0d66-4950-83ea-b8b3ac3124fa','Y',0,'N','N','N','N','N')
;

-- 19 de nov. de 2025 10:24:55 BRT
UPDATE AD_Column SET FKConstraintName='LBRToCity_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-11-19 10:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801857
;

-- 19 de nov. de 2025 10:24:55 BRT
ALTER TABLE LBR_TaxConfig_Region ADD LBR_To_City_ID NUMBER(10) DEFAULT NULL 
;

-- 19 de nov. de 2025 10:24:55 BRT
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT LBRToCity_LBRTaxConfigRegion FOREIGN KEY (LBR_To_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de nov. de 2025 10:25:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802059,'City','City','City in a country',toRecordId('AD_Tab','25ef0def-2633-41b3-83a7-0736a92ad0f3'),801856,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-11-19 10:25:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:25:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5b422805-f524-4995-bdea-8db9b9b85107','Y',10,2)
;

-- 19 de nov. de 2025 10:25:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802060,'City (To)','Receiving City','The To City indicates the receiving city on a document',toRecordId('AD_Tab','25ef0def-2633-41b3-83a7-0736a92ad0f3'),801857,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-11-19 10:25:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-11-19 10:25:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6a7b7a97-2316-4abf-a463-7eb8ff5b4999','Y',20,2)
;

-- 19 de nov. de 2025 10:25:28 BRT
UPDATE AD_Field SET Name='City', Description='City', Help='City in a country', IsDisplayed='Y', SeqNo=50, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802059
;

-- 19 de nov. de 2025 10:25:28 BRT
UPDATE AD_Field SET Name='City (To)', Description='Receiving City', Help='The To City indicates the receiving city on a document', IsDisplayed='Y', SeqNo=60, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802060
;

-- 19 de nov. de 2025 10:25:28 BRT
UPDATE AD_Field SET Name='Transaction Tax', Description='Identifies a transaction tax (document/line)', Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='4d5b61a7-846f-4d52-956e-4fc0327fc1e2'
;

-- 19 de nov. de 2025 10:25:28 BRT
UPDATE AD_Field SET Name='Tax Status', Description='Defines the Tax Status', Help=NULL, SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='6ce714b7-5c39-4050-9492-a1d0dd6f8529'
;

-- 19 de nov. de 2025 10:25:28 BRT
UPDATE AD_Field SET Name='Legal Message', Description='Identifies a Legal Message', Help=NULL, SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='6545d387-c357-458d-91d0-52a4b214e5b2'
;

-- 19 de nov. de 2025 10:25:28 BRT
UPDATE AD_Field SET Name='Valid from', Description='Valid from including this date (first day)', Help='The Valid From date indicates the first day of a date range', SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-11-19 10:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='14221148-550b-4dd4-b295-b3748c116a8b'
;

