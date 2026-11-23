-- Calculadora RTC - tabelas oficiais de IBS/CBS (dicionario)
SELECT register_migration_script('202611230900_CalculadoraRTC.sql') FROM dual;

-- Nov 23, 2026, 9:01:00 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800129,'LBR_IBSCBSRateType','Tipo de alíquota do IBS/CBS da classificação tributária (IT 2025.002)','L',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:00:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:00:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','01a20847-e9ea-7c40-a77d-4190f00bf2a2','N')
;


-- Nov 23, 2026, 9:01:31 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800565,'Padrão',800129,'P',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-626f-751e-a7e2-88f06f1fa590')
;

-- Nov 23, 2026, 9:01:31 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800566,'Fixa',800129,'F',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-646c-7551-baa0-48a47987edfe')
;

-- Nov 23, 2026, 9:01:32 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800567,'Uniforme nacional (referência)',800129,'N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-661a-72a4-876d-b55d028ad61e')
;

-- Nov 23, 2026, 9:01:32 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800568,'Uniforme setorial',800129,'S',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-6806-7e76-b83f-7473342b52cb')
;

-- Nov 23, 2026, 9:01:33 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800569,'Sem alíquota',800129,'X',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-6a06-718b-bfab-048de8bb836b')
;

-- Nov 23, 2026, 9:01:33 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800130,'LBR_IBSCBSNomenclature','Nomenclatura exigida pela classificação tributária do IBS/CBS','L',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','01a20848-6bb0-73b6-8215-d7e71aabb700','N')
;

-- Nov 23, 2026, 9:01:34 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800570,'NCM',800130,'C',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-6d9f-7f76-9c5c-d75cab2dcf1d')
;

-- Nov 23, 2026, 9:01:34 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800571,'NBS',800130,'S',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-6f4b-7596-9fad-233a4e1a4f4c')
;

-- Nov 23, 2026, 9:01:35 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800572,'NBS ou NCM',800130,'A',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-7172-7e4c-927c-e325aebd239b')
;

-- Nov 23, 2026, 9:01:35 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800573,'Não possui',800130,'N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-7338-7f49-90b6-fa4838cb7ff0')
;

-- Nov 23, 2026, 9:01:35 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800131,'LBR_PriorOpCredit','Tratamento do crédito da operação antecedente (manutenção ou anulação)','L',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','01a20848-74e6-7d14-88dc-8ba6b98ef68c','N')
;

-- Nov 23, 2026, 9:01:36 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800574,'Manutenção',800131,'M',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-769f-77aa-a519-9ef9e1e2245e')
;

-- Nov 23, 2026, 9:01:37 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800575,'Anulação',800131,'A',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-793a-7420-81a6-a9c84bb7e2da')
;

-- Nov 23, 2026, 9:01:37 AM BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800025,'LBR_TaxGroup IBS/CBS','Somente os grupos de tributação do IBS (UF e município) e da CBS.','S','LBR_TaxGroup.Name IN (''IBSUF'',''IBSMun'',''CBS'')',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20848-7b0e-775c-b478-a16c2f687fff')
;

-- Nov 23, 2026, 9:01:38 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801087,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBSCBSRateType','Tipo de Alíquota do IBS/CBS','Tipo de alíquota da classificação tributária: padrão, fixa, uniforme nacional, uniforme setorial ou sem alíquota.','Tipo de Alíquota do IBS/CBS','LBR','01a20848-7e32-70c4-a237-914f21227353')
;

-- Nov 23, 2026, 9:01:38 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801088,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBSCBSTreatment','Tratamento Tributário','Tratamento tributário do IBS/CBS associado à classificação tributária, conforme a Calculadora de Tributos da Receita Federal.','Tratamento Tributário','LBR','01a20848-7ff0-7011-88af-1f167ba34949')
;

-- Nov 23, 2026, 9:01:39 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801089,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsZeroRate','Alíquota Zero','Indica que a alíquota do IBS/CBS aplicada nesta classificação é zero (suspensão, exclusão de base, documento específico e outros).','Alíquota Zero','LBR','01a20848-81a5-7cb7-8165-52f9c8b5ee7f')
;

-- Nov 23, 2026, 9:01:39 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801090,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBSCBSNomenclature','Nomenclatura Exigida','Nomenclatura exigida pela classificação tributária: NCM, NBS, qualquer das duas ou nenhuma.','Nomenclatura Exigida','LBR','01a20848-837b-7e05-a0a7-6a89bf8edff9')
;

-- Nov 23, 2026, 9:01:40 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801091,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsBuyerCBSCredit','Crédito de CBS do Adquirente','Indica que o adquirente pode apropriar crédito da CBS nesta classificação tributária.','Crédito de CBS do Adquirente','LBR','01a20848-8524-7998-b804-ac18243754f7')
;

-- Nov 23, 2026, 9:01:40 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801092,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsBuyerIBSCredit','Crédito de IBS do Adquirente','Indica que o adquirente pode apropriar crédito do IBS nesta classificação tributária.','Crédito de IBS do Adquirente','LBR','01a20848-86d3-78d5-9d84-f6037a0ba29c')
;

-- Nov 23, 2026, 9:01:41 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801093,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsSupplierPresCredit','Crédito Presumido do Fornecedor','Indica que a classificação tributária dá crédito presumido ao fornecedor.','Crédito Presumido do Fornecedor','LBR','01a20848-88d3-7222-8e73-cbcb2af94deb')
;

-- Nov 23, 2026, 9:01:41 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801094,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsBuyerPresCredit','Crédito Presumido do Adquirente','Indica que a classificação tributária dá crédito presumido ao adquirente.','Crédito Presumido do Adquirente','LBR','01a20848-8a8b-7845-92c2-b92dfa68a316')
;

-- Nov 23, 2026, 9:01:41 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801095,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PriorOpCredit','Crédito da Operação Antecedente','Tratamento do crédito da operação antecedente: manutenção ou anulação.','Crédito da Operação Antecedente','LBR','01a20848-8c49-7ae2-8321-bc545a326950')
;

-- Nov 23, 2026, 9:01:42 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801096,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgEstornoCred','Indicador de Grupo Estorno de Crédito','Indica se o grupo gEstornoCred é exigido ou vedado nesta classificação tributária.','Indicador de Grupo Estorno de Crédito','LBR','01a20848-8e00-7641-9ab3-4212044b763f')
;

-- Nov 23, 2026, 9:01:42 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801097,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgCredPresIBSZFM','Indicador de Grupo Crédito Presumido IBS ZFM','Indica se o grupo gCredPresIBSZFM é exigido ou vedado nesta CST.','Indicador de Grupo Crédito Presumido IBS ZFM','LBR','01a20848-8fc5-7c6d-853b-532a5757c60f')
;

-- Nov 23, 2026, 9:01:43 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801098,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgAjusteCompet','Indicador de Grupo Ajuste de Competência','Indica se o grupo gAjusteCompet é exigido ou vedado nesta CST.','Indicador de Grupo Ajuste de Competência','LBR','01a20848-9187-7444-b7f7-af471cd49bb8')
;

-- Nov 23, 2026, 9:01:43 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801099,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NCMCode','Código NCM','NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.','Código NCM','LBR','01a20848-936d-7e4d-aec2-fccdac322181')
;

-- Nov 23, 2026, 9:01:44 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801100,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ClassTribRed_ID','Redução da Classificação Tributária','Percentual de redução da alíquota do IBS/CBS por tributo e vigência (dado oficial).','Redução da Classificação Tributária','LBR','01a20848-952e-7862-be30-33263b03c8d6')
;

-- Nov 23, 2026, 9:01:44 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801101,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ClassTribRed_UU','LBR_ClassTribRed_UU','LBR_ClassTribRed_UU','LBR','01a20848-9734-77fd-a22d-7b3fc2e915fa')
;

-- Nov 23, 2026, 9:01:45 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801102,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ClassTribNCM_ID','NCM Aplicável','NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).','NCM Aplicável','LBR','01a20848-993b-7aa0-890f-12c4d6d5b3a9')
;

-- Nov 23, 2026, 9:01:45 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801103,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ClassTribNCM_UU','LBR_ClassTribNCM_UU','LBR_ClassTribNCM_UU','LBR','01a20848-9b9f-773b-96f3-fd58a818f38c')
;

-- Nov 23, 2026, 9:01:46 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801104,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ClassTribNCMExcl_ID','Exceção de NCM','NCM excluído do NCM aplicável da classificação tributária.','Exceção de NCM','LBR','01a20848-9d5e-745e-822f-e785048e2797')
;

-- Nov 23, 2026, 9:01:46 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801105,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ClassTribNCMExcl_UU','LBR_ClassTribNCMExcl_UU','LBR_ClassTribNCMExcl_UU','LBR','01a20848-9f12-7ef9-86d6-ddb8567879fe')
;

-- Nov 23, 2026, 9:01:47 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801106,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBSCBSRate_ID','Alíquota de IBS/CBS','Alíquota do IBS/CBS por tributo, UF, município ou classificação tributária e vigência. Registros de System são oficiais; o da empresa sobrescreve.','Alíquota de IBS/CBS','LBR','01a20848-a0d1-7ceb-b8fd-71ad06868c38')
;

-- Nov 23, 2026, 9:01:47 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801107,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBSCBSRate_UU','LBR_IBSCBSRate_UU','LBR_IBSCBSRate_UU','LBR','01a20848-a2d4-79c9-ae51-8502222b3b93')
;

-- Nov 23, 2026, 9:01:56 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803004,0,'Tipo de Alíquota do IBS/CBS','Tipo de alíquota da classificação tributária: padrão, fixa, uniforme nacional, uniforme setorial ou sem alíquota.',800066,'LBR_IBSCBSRateType',1,'N','N','N','N','N',0,'N',17,800129,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:56','YYYY-MM-DD HH24:MI:SS'),100,801087,'Y','N','LBR','N','N','N','Y','01a20848-c6ea-7ea5-bace-138518809459','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:01:57 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IBSCBSRateType CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:01:57 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803005,0,'Tratamento Tributário','Tratamento tributário do IBS/CBS associado à classificação tributária, conforme a Calculadora de Tributos da Receita Federal.',800066,'LBR_IBSCBSTreatment',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:57','YYYY-MM-DD HH24:MI:SS'),100,801088,'Y','N','LBR','N','N','N','Y','01a20848-ca5f-7ecc-86cd-7d83d1b0e9b6','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:01:57 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IBSCBSTreatment VARCHAR(255) DEFAULT NULL 
;

-- Nov 23, 2026, 9:01:58 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803006,0,'Alíquota Zero','Indica que a alíquota do IBS/CBS aplicada nesta classificação é zero (suspensão, exclusão de base, documento específico e outros).',800066,'LBR_IsZeroRate','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:58','YYYY-MM-DD HH24:MI:SS'),100,801089,'Y','N','LBR','N','N','N','Y','01a20848-cd9e-72c7-8d9c-300c7955a726','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:01:58 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IsZeroRate CHAR(1) DEFAULT 'N' CHECK (LBR_IsZeroRate IN ('Y','N')) NOT NULL
;

-- Nov 23, 2026, 9:01:59 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803007,0,'Tax Base','Indicates the Tax Base',800066,'LBR_TaxBase',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:58','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = 'ab2ad4dd-64ce-4e48-a2d5-efbb0b22b215'),'Y','N','LBR','N','N','N','Y','01a20848-d062-76e7-b662-638b40b6b67c','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:01:59 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_TaxBase NUMERIC DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:00 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803008,0,'Tax Deferral Rate (%)','Identifies the Tax Deferral Rate (%)',800066,'LBR_TaxDeferralRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:01:59','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '56599cf2-6d2d-4b7a-aa5e-b9760e51db70'),'Y','N','LBR','N','N','N','Y','01a20848-d3a0-7515-ab94-2236a62f7ebe','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:00 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_TaxDeferralRate NUMERIC DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:00 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803009,0,'Nomenclatura Exigida','Nomenclatura exigida pela classificação tributária: NCM, NBS, qualquer das duas ou nenhuma.',800066,'LBR_IBSCBSNomenclature',1,'N','N','N','N','N',0,'N',17,800130,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:00','YYYY-MM-DD HH24:MI:SS'),100,801090,'Y','N','LBR','N','N','N','Y','01a20848-d661-7b6d-8f39-0772feda9865','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:01 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IBSCBSNomenclature CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:01 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803010,0,'IBS/CBS NFe Indicator',800066,'LBR_IBSCBSIndNFe',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:01','YYYY-MM-DD HH24:MI:SS'),100,800494,'Y','N','LBR','N','N','N','Y','01a20848-da6d-753c-b509-182110a72208','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:02 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IBSCBSIndNFe CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:02 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803011,0,'IBS/CBS NFCe Indicator',800066,'LBR_IBSCBSIndNFCe',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:02','YYYY-MM-DD HH24:MI:SS'),100,800495,'Y','N','LBR','N','N','N','Y','01a20848-dcdc-7888-aca9-b11ddbe625eb','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:02 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IBSCBSIndNFCe CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:03 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803012,0,'Crédito de CBS do Adquirente','Indica que o adquirente pode apropriar crédito da CBS nesta classificação tributária.',800066,'LBR_IsBuyerCBSCredit','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:02','YYYY-MM-DD HH24:MI:SS'),100,801091,'Y','N','LBR','N','N','N','Y','01a20848-df5f-7bf6-81c6-3243259ae0af','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:03 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IsBuyerCBSCredit CHAR(1) DEFAULT 'N' CHECK (LBR_IsBuyerCBSCredit IN ('Y','N')) NOT NULL
;

-- Nov 23, 2026, 9:02:03 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803013,0,'Crédito de IBS do Adquirente','Indica que o adquirente pode apropriar crédito do IBS nesta classificação tributária.',800066,'LBR_IsBuyerIBSCredit','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:03','YYYY-MM-DD HH24:MI:SS'),100,801092,'Y','N','LBR','N','N','N','Y','01a20848-e1e0-7577-90a1-76642d14287c','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:03 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IsBuyerIBSCredit CHAR(1) DEFAULT 'N' CHECK (LBR_IsBuyerIBSCredit IN ('Y','N')) NOT NULL
;

-- Nov 23, 2026, 9:02:04 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803014,0,'Crédito Presumido do Fornecedor','Indica que a classificação tributária dá crédito presumido ao fornecedor.',800066,'LBR_IsSupplierPresCredit','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:04','YYYY-MM-DD HH24:MI:SS'),100,801093,'Y','N','LBR','N','N','N','Y','01a20848-e4b4-78e8-a809-358d65d23134','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:04 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IsSupplierPresCredit CHAR(1) DEFAULT 'N' CHECK (LBR_IsSupplierPresCredit IN ('Y','N')) NOT NULL
;

-- Nov 23, 2026, 9:02:05 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803015,0,'Crédito Presumido do Adquirente','Indica que a classificação tributária dá crédito presumido ao adquirente.',800066,'LBR_IsBuyerPresCredit','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:04','YYYY-MM-DD HH24:MI:SS'),100,801094,'Y','N','LBR','N','N','N','Y','01a20848-e75f-7023-b0f2-83be4b8a5a87','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:05 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IsBuyerPresCredit CHAR(1) DEFAULT 'N' CHECK (LBR_IsBuyerPresCredit IN ('Y','N')) NOT NULL
;

-- Nov 23, 2026, 9:02:05 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803016,0,'Crédito da Operação Antecedente','Tratamento do crédito da operação antecedente: manutenção ou anulação.',800066,'LBR_PriorOpCredit',1,'N','N','N','N','N',0,'N',17,800131,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:05','YYYY-MM-DD HH24:MI:SS'),100,801095,'Y','N','LBR','N','N','N','Y','01a20848-ea06-78b4-90d6-dfcf0f6884e2','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:06 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_PriorOpCredit CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:06 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803017,0,'Indicador de Grupo Estorno de Crédito','Indica se o grupo gEstornoCred é exigido ou vedado nesta classificação tributária.',800066,'LBR_IndgEstornoCred',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:06','YYYY-MM-DD HH24:MI:SS'),100,801096,'Y','N','LBR','N','N','N','Y','01a20848-ec78-72ec-8e9d-9303ef43c60f','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:06 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndgEstornoCred CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:07 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803018,0,'Indicador de Grupo Crédito Presumido IBS ZFM','Indica se o grupo gCredPresIBSZFM é exigido ou vedado nesta CST.',800067,'LBR_IndgCredPresIBSZFM',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:06','YYYY-MM-DD HH24:MI:SS'),100,801097,'Y','N','LBR','N','N','N','Y','01a20848-ef38-731d-94e2-d7c7e1ed13a4','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:07 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IndgCredPresIBSZFM CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:07 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803019,0,'Indicador de Grupo Ajuste de Competência','Indica se o grupo gAjusteCompet é exigido ou vedado nesta CST.',800067,'LBR_IndgAjusteCompet',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:07','YYYY-MM-DD HH24:MI:SS'),100,801098,'Y','N','LBR','N','N','N','Y','01a20848-f1ae-734b-9e8f-74759b05a78f','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:08 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IndgAjusteCompet CHAR(1) DEFAULT NULL 
;

-- Nov 23, 2026, 9:02:16 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800130,'Redução da Classificação Tributária','Percentual de redução da alíquota do IBS/CBS por tributo e vigência (dado oficial).','LBR_ClassTribRed',0,'6',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','N','Y','L','N','Y','01a20849-133b-7adf-bc5b-55d1f583d30d','N','N','N','N','N','N','N')
;

-- Nov 23, 2026, 9:02:16 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ClassTribRed',1000000,'N','N','Table LBR_ClassTribRed','Y','Y',0,0,TO_TIMESTAMP('2026-11-23 09:02:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:16','YYYY-MM-DD HH24:MI:SS'),100,800749,'Y',1000000,1,200000,'01a20849-14d2-724e-8308-a78443a896ac')
;

-- Nov 23, 2026, 9:02:17 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803020,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800130,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:17','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBR','N','N','N','Y','01a20849-16ec-77b9-bd3b-694e173c1c5e','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:18 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803021,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800130,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:17','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','N','N','Y','01a20849-1952-704f-afd0-4f0eab3c3a9e','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:18 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803022,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800130,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:18','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','N','N','Y','01a20849-1b9f-79e8-a2fb-70e42a4c7939','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:19 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803023,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800130,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:18','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','N','N','Y','01a20849-1e07-7175-b5ca-b31640ee995b','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:19 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803024,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800130,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:19','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','N','N','Y','01a20849-2012-7428-88f4-082ba78ed255','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:20 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803025,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800130,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:19','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','N','N','Y','01a20849-22ac-7c23-9e8a-4d87ed7cbc90','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:20 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803026,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800130,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:20','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','N','N','Y','01a20849-24c0-799c-9cf3-44fbfe898d07','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:21 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803027,0,'Redução da Classificação Tributária','Percentual de redução da alíquota do IBS/CBS por tributo e vigência (dado oficial).',800130,'LBR_ClassTribRed_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:21','YYYY-MM-DD HH24:MI:SS'),100,801100,'N','N','LBR','N','N','N','Y','01a20849-2736-77ff-bc88-487fb9c641e5','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:22 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803028,0,'LBR_ClassTribRed_UU',800130,'LBR_ClassTribRed_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:21','YYYY-MM-DD HH24:MI:SS'),100,801101,'Y','N','LBR','N','N','N','Y','01a20849-297c-7483-8960-acd6ae5bb777','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:22 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803029,0,'ClassTrib IBS / CBS',800130,'LBR_ClassTrib_IBSCBS_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:22','YYYY-MM-DD HH24:MI:SS'),100,800503,'N','N','LBR','N','N','N','Y','01a20849-2c11-712d-95f4-18b54c04fc77','Y',0,'N','N','C','N','N',10)
;

-- Nov 23, 2026, 9:02:23 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803030,0,'Tax Group','Identifies a NF Tax Group',800130,800025,'LBR_TaxGroup_ID',10,'N','N','Y','N','Y',1,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:23','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '8480261e-799b-423d-932b-b58a5ba36bce'),'Y','N','LBR','N','N','N','Y','01a20849-2e38-74fb-8887-6205efb2c6e2','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:24 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803031,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800130,'ValidFrom',7,'N','N','Y','N','Y',2,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:23','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBR','N','N','N','Y','01a20849-30d2-77ae-8be8-4eb27347d955','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:24 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803032,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800130,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:24','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBR','N','N','N','Y','01a20849-3325-7f16-a53e-92c7a126b5a9','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:25 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803033,0,'Tax Red. Rate','Indicates the Tax Red. Rate',800130,'LBR_TaxRedRate',10,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:24','YYYY-MM-DD HH24:MI:SS'),100,800545,'Y','N','LBR','N','N','N','Y','01a20849-3538-70f8-bf59-b7305d4b6eec','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:25 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRClassTribRed', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803020
;

-- Nov 23, 2026, 9:02:25 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRClassTribRed', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803021
;

-- Nov 23, 2026, 9:02:25 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRClassTribRed', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803023
;

-- Nov 23, 2026, 9:02:25 AM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRClassTribIBSCBS_LBRClassTribRed', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803029
;

-- Nov 23, 2026, 9:02:25 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRTaxGroup_LBRClassTribRed', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803030
;

-- Nov 23, 2026, 9:02:25 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRClassTribRed', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803025
;

-- Nov 23, 2026, 9:02:25 AM BRT
CREATE TABLE LBR_ClassTribRed (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ClassTrib_IBSCBS_ID NUMERIC(10) NOT NULL, LBR_ClassTribRed_ID NUMERIC(10) NOT NULL, LBR_ClassTribRed_UU UUID DEFAULT NULL , LBR_TaxGroup_ID NUMERIC(10) NOT NULL, LBR_TaxRedRate NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT LBR_ClassTribRed_Key PRIMARY KEY (LBR_ClassTribRed_ID), CONSTRAINT LBR_ClassTribRed_UU_idx UNIQUE (LBR_ClassTribRed_UU))
;

-- Nov 23, 2026, 9:02:25 AM BRT
ALTER TABLE LBR_ClassTribRed ADD CONSTRAINT ADClient_LBRClassTribRed FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:25 AM BRT
ALTER TABLE LBR_ClassTribRed ADD CONSTRAINT ADOrg_LBRClassTribRed FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:25 AM BRT
ALTER TABLE LBR_ClassTribRed ADD CONSTRAINT CreatedBy_LBRClassTribRed FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:25 AM BRT
ALTER TABLE LBR_ClassTribRed ADD CONSTRAINT LBRClassTribIBSCBS_LBRClassTribRed FOREIGN KEY (LBR_ClassTrib_IBSCBS_ID) REFERENCES lbr_classtrib_ibscbs(lbr_classtrib_ibscbs_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:25 AM BRT
ALTER TABLE LBR_ClassTribRed ADD CONSTRAINT LBRTaxGroup_LBRClassTribRed FOREIGN KEY (LBR_TaxGroup_ID) REFERENCES lbr_taxgroup(lbr_taxgroup_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:25 AM BRT
ALTER TABLE LBR_ClassTribRed ADD CONSTRAINT UpdatedBy_LBRClassTribRed FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:26 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800131,'NCM Aplicável','NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).','LBR_ClassTribNCM',0,'6',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','N','Y','L','N','Y','01a20849-39b8-7448-845b-853da3b8b2dc','N','N','N','N','N','N','N')
;

-- Nov 23, 2026, 9:02:26 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ClassTribNCM',1000000,'N','N','Table LBR_ClassTribNCM','Y','Y',0,0,TO_TIMESTAMP('2026-11-23 09:02:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:26','YYYY-MM-DD HH24:MI:SS'),100,800750,'Y',1000000,1,200000,'01a20849-3b3a-7b35-b52d-2b4c3440cf79')
;

-- Nov 23, 2026, 9:02:27 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803034,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800131,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:26','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBR','N','N','N','Y','01a20849-3d9f-7301-a298-c7c00977faea','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:27 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803035,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800131,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:27','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','N','N','Y','01a20849-3fa9-7d69-9e58-a1cf96f7795e','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:28 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803036,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800131,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:28','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','N','N','Y','01a20849-41ba-7aca-9f8f-275b548df859','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:29 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803037,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800131,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:28','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','N','N','Y','01a20849-44ce-7569-96e6-f7c118bb6358','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:29 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803038,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800131,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:29','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','N','N','Y','01a20849-46ef-744a-aef0-a3a037c4ee02','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:30 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803039,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800131,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:29','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','N','N','Y','01a20849-492a-7652-bc65-78cc9a8058ff','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:30 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803040,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800131,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:30','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','N','N','Y','01a20849-4b9d-7a4a-8c56-4d25443c4b3e','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:31 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803041,0,'NCM Aplicável','NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).',800131,'LBR_ClassTribNCM_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:31','YYYY-MM-DD HH24:MI:SS'),100,801102,'N','N','LBR','N','N','N','Y','01a20849-4dc2-7c1d-8f81-7c622f2295a0','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:32 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803042,0,'LBR_ClassTribNCM_UU',800131,'LBR_ClassTribNCM_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:31','YYYY-MM-DD HH24:MI:SS'),100,801103,'Y','N','LBR','N','N','N','Y','01a20849-506c-7e8e-b090-a03c4f09e527','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:32 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803043,0,'ClassTrib IBS / CBS',800131,'LBR_ClassTrib_IBSCBS_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:32','YYYY-MM-DD HH24:MI:SS'),100,800503,'N','N','LBR','N','N','N','Y','01a20849-52c1-733c-b71e-7297842395fc','Y',0,'N','N','C','N','N',10)
;

-- Nov 23, 2026, 9:02:33 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803044,0,'Código NCM','NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.',800131,'LBR_NCMCode',8,'N','N','Y','N','Y',1,'N',10,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:32','YYYY-MM-DD HH24:MI:SS'),100,801099,'Y','Y','LBR','N','N','N','Y','01a20849-559f-7cd3-8155-a1ad29b02222','Y',10,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:34 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803045,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800131,'ValidFrom',7,'N','N','Y','N','Y',2,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:33','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBR','N','N','N','Y','01a20849-5805-7f7a-af3e-22ff2a02b5f0','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:34 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803046,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800131,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:34','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBR','N','N','N','Y','01a20849-5a21-77f8-a5eb-e312dee568e7','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:34 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRClassTribNCM', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803034
;

-- Nov 23, 2026, 9:02:34 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRClassTribNCM', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803035
;

-- Nov 23, 2026, 9:02:34 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRClassTribNCM', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803037
;

-- Nov 23, 2026, 9:02:34 AM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRClassTribIBSCBS_LBRClassTribNCM', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-11-23 09:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803043
;

-- Nov 23, 2026, 9:02:34 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRClassTribNCM', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803039
;

-- Nov 23, 2026, 9:02:34 AM BRT
CREATE TABLE LBR_ClassTribNCM (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ClassTrib_IBSCBS_ID NUMERIC(10) NOT NULL, LBR_ClassTribNCM_ID NUMERIC(10) NOT NULL, LBR_ClassTribNCM_UU UUID DEFAULT NULL , LBR_NCMCode VARCHAR(8) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT LBR_ClassTribNCM_Key PRIMARY KEY (LBR_ClassTribNCM_ID), CONSTRAINT LBR_ClassTribNCM_UU_idx UNIQUE (LBR_ClassTribNCM_UU))
;

-- Nov 23, 2026, 9:02:34 AM BRT
ALTER TABLE LBR_ClassTribNCM ADD CONSTRAINT ADClient_LBRClassTribNCM FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:34 AM BRT
ALTER TABLE LBR_ClassTribNCM ADD CONSTRAINT ADOrg_LBRClassTribNCM FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:34 AM BRT
ALTER TABLE LBR_ClassTribNCM ADD CONSTRAINT CreatedBy_LBRClassTribNCM FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:34 AM BRT
ALTER TABLE LBR_ClassTribNCM ADD CONSTRAINT LBRClassTribIBSCBS_LBRClassTribNCM FOREIGN KEY (LBR_ClassTrib_IBSCBS_ID) REFERENCES lbr_classtrib_ibscbs(lbr_classtrib_ibscbs_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:34 AM BRT
ALTER TABLE LBR_ClassTribNCM ADD CONSTRAINT UpdatedBy_LBRClassTribNCM FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:35 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800132,'Exceção de NCM','NCM excluído do NCM aplicável da classificação tributária.','LBR_ClassTribNCMExcl',0,'6',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','N','Y','L','N','Y','01a20849-5d38-74e8-89ef-ad24f91098c6','N','N','N','N','N','N','N')
;

-- Nov 23, 2026, 9:02:35 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ClassTribNCMExcl',1000000,'N','N','Table LBR_ClassTribNCMExcl','Y','Y',0,0,TO_TIMESTAMP('2026-11-23 09:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:35','YYYY-MM-DD HH24:MI:SS'),100,800751,'Y',1000000,1,200000,'01a20849-5eb4-77d8-8a00-0e2e7b23fb90')
;

-- Nov 23, 2026, 9:02:36 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803047,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800132,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:35','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBR','N','N','N','Y','01a20849-6138-775f-acdb-2d2b71aa6d88','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:37 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803048,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800132,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:36','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','N','N','Y','01a20849-6351-7e21-bba1-bd6602b61ec6','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:37 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803049,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800132,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:37','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','N','N','Y','01a20849-654b-769b-803e-9754c5a48c0d','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:38 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803050,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800132,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:37','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','N','N','Y','01a20849-6758-70de-b24c-ff61f877a435','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:38 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803051,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800132,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:38','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','N','N','Y','01a20849-6999-7ec5-8cac-65c550e0997d','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:39 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803052,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800132,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:38','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','N','N','Y','01a20849-6c05-7fac-82fb-ebf1ae7a5f73','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:39 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803053,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800132,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:39','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','N','N','Y','01a20849-6e62-732f-afab-fc95d246aec6','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:40 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803054,0,'Exceção de NCM','NCM excluído do NCM aplicável da classificação tributária.',800132,'LBR_ClassTribNCMExcl_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:40','YYYY-MM-DD HH24:MI:SS'),100,801104,'N','N','LBR','N','N','N','Y','01a20849-70d2-79f7-b9ac-d1077aee5ce9','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:41 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803055,0,'LBR_ClassTribNCMExcl_UU',800132,'LBR_ClassTribNCMExcl_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:40','YYYY-MM-DD HH24:MI:SS'),100,801105,'Y','N','LBR','N','N','N','Y','01a20849-72fc-7734-ba8d-7be221c2cebd','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:41 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803056,0,'NCM Aplicável','NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).',800132,'LBR_ClassTribNCM_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:41','YYYY-MM-DD HH24:MI:SS'),100,801102,'N','N','LBR','N','N','N','Y','01a20849-7601-78d5-80de-bce46237b374','Y',0,'N','N','C','N','N',10)
;

-- Nov 23, 2026, 9:02:42 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803057,0,'Código NCM','NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.',800132,'LBR_NCMCode',8,'N','N','Y','N','Y',1,'N',10,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:41','YYYY-MM-DD HH24:MI:SS'),100,801099,'Y','Y','LBR','N','N','N','Y','01a20849-78cd-78f2-914e-2b880d849b85','Y',10,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:43 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803058,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800132,'ValidFrom',7,'N','N','Y','N','Y',2,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:42','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBR','N','N','N','Y','01a20849-7aeb-76e2-adec-0d4ff040cd30','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:43 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803059,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800132,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:43','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBR','N','N','N','Y','01a20849-7dfa-7a26-ac90-3676681997a5','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:44 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRClassTribNCMExcl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803047
;

-- Nov 23, 2026, 9:02:44 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRClassTribNCMExcl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803048
;

-- Nov 23, 2026, 9:02:44 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRClassTribNCMExcl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803050
;

-- Nov 23, 2026, 9:02:44 AM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRClassTribNCM_LBRClassTribNCMExcl', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803056
;

-- Nov 23, 2026, 9:02:44 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRClassTribNCMExcl', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803052
;

-- Nov 23, 2026, 9:02:44 AM BRT
CREATE TABLE LBR_ClassTribNCMExcl (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ClassTribNCMExcl_ID NUMERIC(10) NOT NULL, LBR_ClassTribNCMExcl_UU UUID DEFAULT NULL , LBR_ClassTribNCM_ID NUMERIC(10) NOT NULL, LBR_NCMCode VARCHAR(8) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT LBR_ClassTribNCMExcl_Key PRIMARY KEY (LBR_ClassTribNCMExcl_ID), CONSTRAINT LBR_ClassTribNCMExcl_UU_idx UNIQUE (LBR_ClassTribNCMExcl_UU))
;

-- Nov 23, 2026, 9:02:44 AM BRT
ALTER TABLE LBR_ClassTribNCMExcl ADD CONSTRAINT ADClient_LBRClassTribNCMExcl FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:44 AM BRT
ALTER TABLE LBR_ClassTribNCMExcl ADD CONSTRAINT ADOrg_LBRClassTribNCMExcl FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:44 AM BRT
ALTER TABLE LBR_ClassTribNCMExcl ADD CONSTRAINT CreatedBy_LBRClassTribNCMExcl FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:44 AM BRT
ALTER TABLE LBR_ClassTribNCMExcl ADD CONSTRAINT LBRClassTribNCM_LBRClassTribNCMExcl FOREIGN KEY (LBR_ClassTribNCM_ID) REFERENCES lbr_classtribncm(lbr_classtribncm_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:44 AM BRT
ALTER TABLE LBR_ClassTribNCMExcl ADD CONSTRAINT UpdatedBy_LBRClassTribNCMExcl FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:44 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800133,'Alíquota de IBS/CBS','Alíquota do IBS/CBS por tributo, UF, município ou classificação tributária e vigência. Registros de System são oficiais; o da empresa sobrescreve.','LBR_IBSCBSRate',0,'6',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','N','Y','L','N','Y','01a20849-8135-758e-b42d-82b0c71605a5','N','N','N','N','N','N','N')
;

-- Nov 23, 2026, 9:02:45 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_IBSCBSRate',1000000,'N','N','Table LBR_IBSCBSRate','Y','Y',0,0,TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:44','YYYY-MM-DD HH24:MI:SS'),100,800752,'Y',1000000,1,200000,'01a20849-82b8-793b-8682-1074baa9c73b')
;

-- Nov 23, 2026, 9:02:45 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803060,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800133,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:45','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBR','N','N','N','Y','01a20849-8538-7f47-97dc-f7a40322828d','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:46 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803061,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800133,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:45','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','N','N','Y','01a20849-8743-7476-a32d-d5a5612e0520','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:46 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803062,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800133,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:46','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','N','N','Y','01a20849-89a2-7147-98bb-38a7011b67d9','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:47 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803063,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800133,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:47','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','N','N','Y','01a20849-8be3-768f-92a9-20819b2275d3','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:48 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803064,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800133,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:47','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','N','N','Y','01a20849-8e68-7d27-835b-ab60941b4788','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:48 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803065,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800133,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:48','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','N','N','Y','01a20849-90d3-74c2-91c7-3b17b598b050','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:49 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803066,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800133,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:48','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','N','N','Y','01a20849-92fc-7047-9a12-1daf9459a910','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:49 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803067,0,'Alíquota de IBS/CBS','Alíquota do IBS/CBS por tributo, UF, município ou classificação tributária e vigência. Registros de System são oficiais; o da empresa sobrescreve.',800133,'LBR_IBSCBSRate_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:49','YYYY-MM-DD HH24:MI:SS'),100,801106,'N','N','LBR','N','N','N','Y','01a20849-95a0-7262-8ec3-7147816a2791','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:50 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803068,0,'LBR_IBSCBSRate_UU',800133,'LBR_IBSCBSRate_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:50','YYYY-MM-DD HH24:MI:SS'),100,801107,'Y','N','LBR','N','N','N','Y','01a20849-97af-7561-8d6f-c370240605e0','N',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:51 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803069,0,'Tax Group','Identifies a NF Tax Group',800133,800025,'LBR_TaxGroup_ID',10,'N','N','Y','N','Y',1,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:50','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '8480261e-799b-423d-932b-b58a5ba36bce'),'Y','Y','LBR','N','N','N','Y','01a20849-9a05-7dc3-99bb-d2803eeb2a95','Y',10,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:51 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803070,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800133,(SELECT AD_Val_Rule_ID FROM AD_Val_Rule WHERE AD_Val_Rule_UU = 'a22f6a1d-701c-4f58-871a-047e5154f02c'),'C_Region_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:51','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','Y','LBR','N','N','N','Y','01a20849-9bfa-7bb7-ad45-bff9f8d3447f','Y',20,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:52 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803071,0,'City','City','City in a country',800133,52045,'C_City_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:51','YYYY-MM-DD HH24:MI:SS'),100,1830,'Y','Y','LBR','N','N','N','Y','01a20849-9ed3-7031-888b-7c41ccd47eb6','Y',30,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:52 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803072,0,'ClassTrib IBS / CBS',800133,'LBR_ClassTrib_IBSCBS_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:52','YYYY-MM-DD HH24:MI:SS'),100,800503,'Y','Y','LBR','N','N','N','Y','01a20849-a138-7510-a803-12a3c45d1e6c','Y',40,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:53 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803073,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800133,'ValidFrom',7,'N','N','Y','N','Y',2,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:53','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBR','N','N','N','Y','01a20849-a35c-7ba8-9d8e-daab5c257399','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:54 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803074,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800133,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:53','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBR','N','N','N','Y','01a20849-a66c-7887-880b-690ee864de8f','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:54 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803075,0,'Tax Rate','Indicates the Tax Rate',800133,'LBR_TaxRate',10,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:02:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:02:54','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = 'ab447a14-62a0-4946-8f68-5b8a73308ca5'),'Y','N','LBR','N','N','N','Y','01a20849-a8d2-78cf-9760-f8f1d77f5fee','Y',0,'N','N','N','N','N',10)
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803060
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803061
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='CCity_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803071
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803063
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803070
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRClassTribIBSCBS_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803072
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRTaxGroup_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803069
;

-- Nov 23, 2026, 9:02:55 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRIBSCBSRate', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-23 09:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803065
;

-- Nov 23, 2026, 9:02:55 AM BRT
CREATE TABLE LBR_IBSCBSRate (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_City_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_Region_ID NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ClassTrib_IBSCBS_ID NUMERIC(10) DEFAULT NULL , LBR_IBSCBSRate_ID NUMERIC(10) NOT NULL, LBR_IBSCBSRate_UU UUID DEFAULT NULL , LBR_TaxGroup_ID NUMERIC(10) NOT NULL, LBR_TaxRate NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT LBR_IBSCBSRate_Key PRIMARY KEY (LBR_IBSCBSRate_ID), CONSTRAINT LBR_IBSCBSRate_UU_idx UNIQUE (LBR_IBSCBSRate_UU))
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT ADClient_LBRIBSCBSRate FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT ADOrg_LBRIBSCBSRate FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT CCity_LBRIBSCBSRate FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT CreatedBy_LBRIBSCBSRate FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT CRegion_LBRIBSCBSRate FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT LBRClassTribIBSCBS_LBRIBSCBSRate FOREIGN KEY (LBR_ClassTrib_IBSCBS_ID) REFERENCES lbr_classtrib_ibscbs(lbr_classtrib_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT LBRTaxGroup_LBRIBSCBSRate FOREIGN KEY (LBR_TaxGroup_ID) REFERENCES lbr_taxgroup(lbr_taxgroup_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:02:55 AM BRT
ALTER TABLE LBR_IBSCBSRate ADD CONSTRAINT UpdatedBy_LBRIBSCBSRate FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 23, 2026, 9:03:02 AM BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800233,'01a20849-c59b-7473-8186-c407780db276',TO_TIMESTAMP('2026-11-23 09:03:01','YYYY-MM-DD HH24:MI:SS'),100,'Uma redução por classificação tributária, tributo e início de vigência','LBR','Y','lbr_classtribred_uq',TO_TIMESTAMP('2026-11-23 09:03:01','YYYY-MM-DD HH24:MI:SS'),100,800130,'N','Y','N','N','N')
;

-- Nov 23, 2026, 9:03:02 AM BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800293,'01a20849-c7d4-7c48-99fc-00a8e7eb1f15',TO_TIMESTAMP('2026-11-23 09:03:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y',TO_TIMESTAMP('2026-11-23 09:03:02','YYYY-MM-DD HH24:MI:SS'),100,803029,800233,10)
;

-- Nov 23, 2026, 9:03:03 AM BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800294,'01a20849-ca1e-77d0-862f-5f1d03b574f0',TO_TIMESTAMP('2026-11-23 09:03:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y',TO_TIMESTAMP('2026-11-23 09:03:02','YYYY-MM-DD HH24:MI:SS'),100,803030,800233,20)
;

-- Nov 23, 2026, 9:03:03 AM BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800295,'01a20849-cbed-76c1-bf2f-a45e0a574723',TO_TIMESTAMP('2026-11-23 09:03:03','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y',TO_TIMESTAMP('2026-11-23 09:03:03','YYYY-MM-DD HH24:MI:SS'),100,803031,800233,30)
;

-- Nov 23, 2026, 9:03:03 AM BRT
CREATE UNIQUE INDEX lbr_classtribred_uq ON LBR_ClassTribRed (LBR_ClassTrib_IBSCBS_ID,LBR_TaxGroup_ID,ValidFrom)
;

-- Nov 23, 2026, 9:03:09 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800139,'Redução','Percentual de redução da alíquota por tributo e vigência',800022,30,'N',800130,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:09','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',803029,'N','N',2,'N','LBR','Y','N',801755,'01a20849-e26b-75a2-ba88-2f09662e09fb','B','N','Y',0)
;

-- Nov 23, 2026, 9:03:10 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802995,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800139,803020,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-e4cd-7c4e-9881-c06748c4c6cf','Y',10,2)
;

-- Nov 23, 2026, 9:03:10 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (802996,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800139,803021,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-e6cc-7ea2-b99a-567c6c7a61d0','Y','N',4,2)
;

-- Nov 23, 2026, 9:03:11 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802997,'ClassTrib IBS / CBS',800139,803029,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-e832-7d4b-ad0a-c0248001556b','Y',20,2)
;

-- Nov 23, 2026, 9:03:11 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802998,'Redução da Classificação Tributária','Percentual de redução da alíquota do IBS/CBS por tributo e vigência (dado oficial).',800139,803027,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-ea01-77fe-b3e5-c5d783466084','N',2)
;

-- Nov 23, 2026, 9:03:11 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802999,'LBR_ClassTribRed_UU',800139,803028,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-eb91-7a57-a665-eca10c17faf1','N',2)
;

-- Nov 23, 2026, 9:03:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803000,'Tax Group','Identifies a NF Tax Group',800139,803030,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-ed34-76c0-ae98-bad3ea57e163','Y',30,2)
;

-- Nov 23, 2026, 9:03:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803001,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800139,803031,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-eed5-7b82-92d3-aa6d7d2e3e59','Y',40,2)
;

-- Nov 23, 2026, 9:03:13 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803002,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800139,803032,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-f044-7083-8b21-2d3b43feb02a','Y',50,2)
;

-- Nov 23, 2026, 9:03:13 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803003,'Tax Red. Rate','Indicates the Tax Red. Rate',800139,803033,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-f204-7243-8870-841649deac4c','Y',60,2)
;

-- Nov 23, 2026, 9:03:13 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803004,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800139,803026,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-f38b-76fb-a243-bfc31fb978f8','Y',70,2,2)
;

-- Nov 23, 2026, 9:03:14 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800140,'NCM Aplicável','NCM ou prefixo de NCM a que a classificação tributária se aplica',800022,40,'N',800131,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:14','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',803043,'N','N',2,'N','LBR','Y','N',801755,'01a20849-f600-7cd6-9c25-07eeb1413f4c','B','N','Y',0)
;

-- Nov 23, 2026, 9:03:15 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803005,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800140,803034,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-f7cc-7c32-afa9-d6480f4a8d15','Y',10,2)
;

-- Nov 23, 2026, 9:03:15 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (803006,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800140,803035,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-f99a-7b35-ad4a-a9e0f35b5e2b','Y','N',4,2)
;

-- Nov 23, 2026, 9:03:15 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803007,'ClassTrib IBS / CBS',800140,803043,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-fb2d-7b66-9ce1-c7288db68a2d','Y',20,2)
;

-- Nov 23, 2026, 9:03:16 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (803008,'NCM Aplicável','NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).',800140,803041,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-fcd3-711a-837f-d0c0e810b52d','N',2)
;

-- Nov 23, 2026, 9:03:16 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (803009,'LBR_ClassTribNCM_UU',800140,803042,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-fe5a-7879-9f67-58fe85294fa2','N',2)
;

-- Nov 23, 2026, 9:03:17 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803010,'Código NCM','NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.',800140,803044,'Y',8,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20849-ffc8-75c2-b39a-ab9f4814032f','Y',30,2)
;

-- Nov 23, 2026, 9:03:17 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803011,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800140,803045,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-013b-7eb9-b4b4-2fd4c532ef13','Y',40,2)
;

-- Nov 23, 2026, 9:03:17 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803012,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800140,803046,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-02d2-76ad-b88d-0f26434c5575','Y',50,2)
;

-- Nov 23, 2026, 9:03:18 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803013,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800140,803040,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-044d-71db-a23d-d2c45a5debc0','Y',60,2,2)
;

-- Nov 23, 2026, 9:03:18 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800141,'Exceção de NCM','NCM excluído do NCM aplicável',800022,50,'N',800132,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:18','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',803056,'N','N',3,'N','LBR','Y','N',803041,'01a2084a-0739-7caa-9f5c-0b358a910f35','B','N','Y',0)
;

-- Nov 23, 2026, 9:03:19 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803014,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800141,803047,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-0938-7a39-8c40-c7b398b65b22','Y',10,2)
;

-- Nov 23, 2026, 9:03:19 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (803015,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800141,803048,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-0ad3-7122-a43d-58b6d5df58d3','Y','N',4,2)
;

-- Nov 23, 2026, 9:03:20 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803016,'NCM Aplicável','NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).',800141,803056,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-0c45-7880-9838-72362beb3131','Y',20,2)
;

-- Nov 23, 2026, 9:03:20 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (803017,'Exceção de NCM','NCM excluído do NCM aplicável da classificação tributária.',800141,803054,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-0dbf-7c40-bb55-3a07ff72c4a5','N',2)
;

-- Nov 23, 2026, 9:03:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (803018,'LBR_ClassTribNCMExcl_UU',800141,803055,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-0f35-7faf-9ae6-98d53c1af810','N',2)
;

-- Nov 23, 2026, 9:03:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803019,'Código NCM','NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.',800141,803057,'Y',8,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-10a1-7f21-8fbf-4b30b212c6af','Y',30,2)
;

-- Nov 23, 2026, 9:03:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803020,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800141,803058,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-126e-7968-b8b7-2d4992bf5593','Y',40,2)
;

-- Nov 23, 2026, 9:03:22 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803021,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800141,803059,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-13f9-78b5-a439-8834a8ade50a','Y',50,2)
;

-- Nov 23, 2026, 9:03:22 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803022,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800141,803053,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-15a5-73a6-b7e6-70560eaa3188','Y',60,2,2)
;

-- Nov 23, 2026, 9:03:23 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803023,'Tipo de Alíquota do IBS/CBS','Tipo de alíquota da classificação tributária: padrão, fixa, uniforme nacional, uniforme setorial ou sem alíquota.',800063,803004,'Y',1,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-17f9-7a40-8407-e6dcf72d67df','Y',190,2)
;

-- Nov 23, 2026, 9:03:23 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803024,'Tratamento Tributário','Tratamento tributário do IBS/CBS associado à classificação tributária, conforme a Calculadora de Tributos da Receita Federal.',800063,803005,'Y',255,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-1a06-7f96-aaec-ff322f134078','Y',200,5)
;

-- Nov 23, 2026, 9:03:24 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803025,'Alíquota Zero','Indica que a alíquota do IBS/CBS aplicada nesta classificação é zero (suspensão, exclusão de base, documento específico e outros).',800063,803006,'Y',1,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-1b9a-7339-bf13-6cd2c27c6e06','Y',210,2,2)
;

-- Nov 23, 2026, 9:03:24 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803026,'Tax Base','Indicates the Tax Base',800063,803007,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-1d34-7f39-93d2-e4d57aee3bd9','Y',220,2)
;

-- Nov 23, 2026, 9:03:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803027,'Tax Deferral Rate (%)','Identifies the Tax Deferral Rate (%)',800063,803008,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-1ec7-76ee-b75e-d52fca45abf1','Y',230,2)
;

-- Nov 23, 2026, 9:03:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803028,'Nomenclatura Exigida','Nomenclatura exigida pela classificação tributária: NCM, NBS, qualquer das duas ou nenhuma.',800063,803009,'Y',1,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-2048-7ea9-b566-e4aee21a0f7f','Y',240,2)
;

-- Nov 23, 2026, 9:03:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803029,'IBS/CBS NFe Indicator',800063,803010,'Y',1,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-21af-743d-ac1a-01338ccead6e','Y',250,2)
;

-- Nov 23, 2026, 9:03:26 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803030,'IBS/CBS NFCe Indicator',800063,803011,'Y',1,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-239b-7833-bf96-6ad2a5d71e80','Y',260,2)
;

-- Nov 23, 2026, 9:03:26 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803031,'Crédito de CBS do Adquirente','Indica que o adquirente pode apropriar crédito da CBS nesta classificação tributária.',800063,803012,'Y',1,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-2535-7e0c-8523-7188d4fc9941','Y',270,2,2)
;

-- Nov 23, 2026, 9:03:27 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803032,'Crédito de IBS do Adquirente','Indica que o adquirente pode apropriar crédito do IBS nesta classificação tributária.',800063,803013,'Y',1,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-26d3-71b0-b09d-83fbef44b78a','Y',280,2,2)
;

-- Nov 23, 2026, 9:03:27 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803033,'Crédito Presumido do Fornecedor','Indica que a classificação tributária dá crédito presumido ao fornecedor.',800063,803014,'Y',1,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-287a-788d-b396-1ccc6ac201a7','Y',290,2,2)
;

-- Nov 23, 2026, 9:03:28 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803034,'Crédito Presumido do Adquirente','Indica que a classificação tributária dá crédito presumido ao adquirente.',800063,803015,'Y',1,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-2b34-7790-8a08-9005cccea495','Y',300,2,2)
;

-- Nov 23, 2026, 9:03:28 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803035,'Crédito da Operação Antecedente','Tratamento do crédito da operação antecedente: manutenção ou anulação.',800063,803016,'Y',1,310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-2caf-76b7-9f42-ba60f0240169','Y',310,2)
;

-- Nov 23, 2026, 9:03:29 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803036,'Indicador de Grupo Estorno de Crédito','Indica se o grupo gEstornoCred é exigido ou vedado nesta classificação tributária.',800063,803017,'Y',1,320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-2f36-7808-9c72-5af1446b3b64','Y',320,2)
;

-- Nov 23, 2026, 9:03:29 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803037,'Indicador de Grupo Crédito Presumido IBS ZFM','Indica se o grupo gCredPresIBSZFM é exigido ou vedado nesta CST.',800062,803018,'Y',1,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-3126-7ab3-950a-9f37044f5661','Y',210,2)
;

-- Nov 23, 2026, 9:03:30 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803038,'Indicador de Grupo Ajuste de Competência','Indica se o grupo gAjusteCompet é exigido ou vedado nesta CST.',800062,803019,'Y',1,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-32d3-7d83-a183-156036a26f14','Y',220,2)
;

-- Nov 23, 2026, 9:03:36 AM BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,Help,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800049,'Alíquota de IBS/CBS','Alíquotas do IBS e da CBS por tributo, UF, município ou classificação tributária e vigência','Os registros da empresa System são as alíquotas oficiais mantidas pelo LBR. Um registro da empresa com a mesma chave sobrescreve o oficial.',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:36','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBR','Y','N',0,0,'N','01a2084a-4c6a-79bb-b963-0c355b42271c')
;

-- Nov 23, 2026, 9:03:37 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800142,'Alíquota de IBS/CBS','Alíquota do IBS/CBS por tributo e vigência',800049,10,'N',800133,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:36','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBR','Y','N','01a2084a-4ed0-7774-9ef4-0f854ab6ef22','B','N','Y',0)
;

-- Nov 23, 2026, 9:03:37 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803039,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800142,803060,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-5078-7fb5-b661-a713bcc4b588','Y',10,2)
;

-- Nov 23, 2026, 9:03:38 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (803040,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800142,803061,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-5221-7051-9f47-0ece634fd729','Y','N',4,2)
;

-- Nov 23, 2026, 9:03:38 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (803041,'Alíquota de IBS/CBS','Alíquota do IBS/CBS por tributo, UF, município ou classificação tributária e vigência. Registros de System são oficiais; o da empresa sobrescreve.',800142,803067,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-539c-70e8-929e-1deb8a032c08','N',2)
;

-- Nov 23, 2026, 9:03:38 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (803042,'LBR_IBSCBSRate_UU',800142,803068,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-5517-75aa-b1b1-e34cd60652bc','N',2)
;

-- Nov 23, 2026, 9:03:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803043,'Tax Group','Identifies a NF Tax Group',800142,803069,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-56cf-76e0-9fb5-8e183565b451','Y',20,2)
;

-- Nov 23, 2026, 9:03:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803044,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800142,803070,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-586e-7f7d-8b18-fa82fb07b366','Y',30,2)
;

-- Nov 23, 2026, 9:03:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803045,'City','City','City in a country',800142,803071,'Y',10,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-5a08-7b91-9d88-5aa7dd68389c','Y',40,2)
;

-- Nov 23, 2026, 9:03:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803046,'ClassTrib IBS / CBS',800142,803072,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-5b7a-7607-aab4-7e648993a455','Y',50,2)
;

-- Nov 23, 2026, 9:03:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803047,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800142,803073,'Y',7,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-5d27-7cb8-8ddb-dc6ec8a8920f','Y',60,2)
;

-- Nov 23, 2026, 9:03:41 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803048,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800142,803074,'Y',7,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-5e8c-72f7-af40-8dc4489bbb4a','Y',70,2)
;

-- Nov 23, 2026, 9:03:41 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (803049,'Tax Rate','Indicates the Tax Rate',800142,803075,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-606e-7992-b9e4-7fe3eaa235dc','Y',80,2)
;

-- Nov 23, 2026, 9:03:42 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (803050,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800142,803066,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a2084a-6208-7a43-90fd-7bfdc1688a34','Y',90,2,2)
;

-- Nov 23, 2026, 9:03:42 AM BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800092,'Alíquota de IBS/CBS','Alíquotas do IBS e da CBS por tributo, UF, município ou classificação tributária e vigência','W',800049,0,0,'Y',TO_TIMESTAMP('2026-11-23 09:03:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-23 09:03:42','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','LBR','Y','01a2084a-646f-7174-a8ae-8a8507bb1b82')
;

-- Nov 23, 2026, 9:03:42 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 800092, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800092)
;

-- Nov 23, 2026, 9:04:25 AM BRT
UPDATE AD_Field SET SeqNo=200, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803025
;

-- Nov 23, 2026, 9:04:25 AM BRT
UPDATE AD_Field SET SeqNo=210, IsSameLine='N',Updated=TO_TIMESTAMP('2026-11-23 09:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803024
;

-- Nov 23, 2026, 9:04:25 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803027
;

-- Nov 23, 2026, 9:04:25 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803030
;

-- Nov 23, 2026, 9:04:26 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_TIMESTAMP('2026-11-23 09:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803032
;

-- Nov 23, 2026, 9:04:26 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_TIMESTAMP('2026-11-23 09:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803034
;

-- Nov 23, 2026, 9:04:26 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803036
;

-- Nov 23, 2026, 9:04:26 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803038
;

-- Nov 23, 2026, 9:04:26 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2026-11-23 09:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802996
;

-- Nov 23, 2026, 9:04:27 AM BRT
UPDATE AD_Field SET SeqNo=50, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803003
;

-- Nov 23, 2026, 9:04:27 AM BRT
UPDATE AD_Field SET SeqNo=60, IsSameLine='N',Updated=TO_TIMESTAMP('2026-11-23 09:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803001
;

-- Nov 23, 2026, 9:04:27 AM BRT
UPDATE AD_Field SET SeqNo=70, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803002
;

-- Nov 23, 2026, 9:04:27 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2026-11-23 09:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803006
;

-- Nov 23, 2026, 9:04:27 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803012
;

-- Nov 23, 2026, 9:04:27 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2026-11-23 09:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803015
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803021
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803040
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET SeqNo=40, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803049
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET SeqNo=50, IsSameLine='N',Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803044
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET SeqNo=60, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803045
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET SeqNo=70, IsSameLine='N', ColumnSpan=5,Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803046
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET SeqNo=80, IsSameLine='N',Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803047
;

-- Nov 23, 2026, 9:04:28 AM BRT
UPDATE AD_Field SET SeqNo=90, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=803048
;

-- Nov 23, 2026, 9:04:29 AM BRT
UPDATE AD_Table SET AD_Window_ID=800022,Updated=TO_TIMESTAMP('2026-11-23 09:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800130
;

-- Nov 23, 2026, 9:04:29 AM BRT
UPDATE AD_Table SET AD_Window_ID=800022,Updated=TO_TIMESTAMP('2026-11-23 09:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800131
;

-- Nov 23, 2026, 9:04:29 AM BRT
UPDATE AD_Table SET AD_Window_ID=800022,Updated=TO_TIMESTAMP('2026-11-23 09:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800132
;

-- Nov 23, 2026, 9:04:29 AM BRT
UPDATE AD_Table SET AD_Window_ID=800049,Updated=TO_TIMESTAMP('2026-11-23 09:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800133
;

-- Nov 23, 2026, 9:04:29 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=12,Updated=TO_TIMESTAMP('2026-11-23 09:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=800092
;

