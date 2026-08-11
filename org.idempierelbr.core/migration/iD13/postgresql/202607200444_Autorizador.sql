-- 
SELECT register_migration_script('202607200444_Autorizador.sql') FROM dual;

-- Jul 20, 2026, 4:44:15 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800626,0,0,'Y',TO_TIMESTAMP('2026-07-20 04:44:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-20 04:44:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Autorizador','Autorizador','Autorizador para contingência: AN=SVC-AN, RS=SVC-RS, null=autorizador primário do contrato','Autorizador','LBR','019f7e7b-9295-779e-891d-d63bebb67244')
;

-- Jul 20, 2026, 4:44:43 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800071,'LBR_Autorizador_NFe','L',0,0,'Y',TO_TIMESTAMP('2026-07-20 04:44:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-20 04:44:43','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','019f7e7c-019a-78ac-8584-4697cde03fa5','N')
;

-- Jul 20, 2026, 4:45:18 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800283,'SVC-AN (Ambiente Nacional)',800071,'AN',0,0,'Y',TO_TIMESTAMP('2026-07-20 04:45:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-20 04:45:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f7e7c-8803-7391-9154-fed5a3407384')
;

-- Jul 20, 2026, 4:45:35 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800284,'SVC-RS (SEFAZ-RS)',800071,'RS',0,0,'Y',TO_TIMESTAMP('2026-07-20 04:45:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-20 04:45:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f7e7c-c9f6-7ee6-b63d-a847d791e213')
;

-- Jul 20, 2026, 4:46:50 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802103,0,'Autorizador','Autorizador para contingência: AN=SVC-AN, RS=SVC-RS, null=autorizador primário do contrato',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = '465b9a73-c288-416a-b3ee-d537bfdfbf7f'),'LBR_Autorizador',2,'N','N','N','N','N',0,'N',17,800071,0,0,'Y',TO_TIMESTAMP('2026-07-20 04:46:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-20 04:46:49','YYYY-MM-DD HH24:MI:SS'),10,800626,'Y','N','LBR','N','N','N','Y','019f7e7d-ef39-7387-bd84-48d242bc0346','Y',0,'N','N','N','N')
;

-- Jul 20, 2026, 4:46:51 AM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN LBR_Autorizador VARCHAR(2) DEFAULT NULL 
;

-- Jul 20, 2026, 4:47:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802225,'Autorizador','Autorizador para contingência: AN=SVC-AN, RS=SVC-RS, null=autorizador primário do contrato',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = '36526fe6-20de-4913-83e4-a81a44d6eaf3'),802103,'Y',2,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-07-20 04:47:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-20 04:47:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','019f7e7e-45b0-79ff-bc39-0a8db6b8471f','Y',90,2)
;

