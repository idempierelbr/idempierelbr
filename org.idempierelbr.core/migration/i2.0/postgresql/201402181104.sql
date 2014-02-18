-- Feb 18, 2014 9:45:26 AM BRT
-- Data for Tax (Brazil)
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:45:26','YYYY-MM-DD HH24:MI:SS'),0,'Contribuição para o Financiamento da Seguridade Social (COFINS) é uma contribuição federal, de natureza tributária, incidente sobre a receita bruta das empresas em geral, destinada a financiar a seguridade social.','N','Y',1000000,'abde3635-2bf1-4a0a-b4d9-e911bcaac299','COFINSPROD','P','M',TO_TIMESTAMP('2014-02-18 09:45:26','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 9:46:42 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:46:42','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000014,1000000,1000000,'4a160daa-7d75-413c-b2bb-c0a4d5334ed1',1000000,'END',TO_TIMESTAMP('2014-02-18 09:46:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:47:09 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:47:09','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000014,1000002,1000001,'8f598e1c-5fae-4dc6-a86c-6de0927b4b12',1000000,'MAN',TO_TIMESTAMP('2014-02-18 09:47:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:47:31 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:47:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000008,1000014,1000008,1000002,'5b7e13c6-f779-4cc3-8ce5-fbf8bbfd38e0',1000000,'IMP',TO_TIMESTAMP('2014-02-18 09:47:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:48:01 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:48:01','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000014,1000002,1000003,'a86405a1-c96d-4d84-9580-5b0f89d64940',1000000,'RES',TO_TIMESTAMP('2014-02-18 09:48:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:49:32 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:49:32','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável com Alíquota Básica','01','Y',1000000,1000000,'ab2e1aef-b935-4eb5-a89b-4e0df3a12561',TO_TIMESTAMP('2014-02-18 09:49:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:49:51 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável com Alíquota Diferenciada','02','Y',1000000,1000001,'67ca807f-10ea-475d-8540-da5b35eb8444',TO_TIMESTAMP('2014-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:50:10 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:50:10','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável com Alíquota por Unidade de Medida de Produto','03','Y',1000000,1000002,'8a603a21-2a0e-4c92-a26e-21b06334ac3d',TO_TIMESTAMP('2014-02-18 09:50:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:50:25 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:50:25','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável Monofásica - Revenda a Alíquota Zero','04','Y',1000000,1000003,'ff8c93f0-fe69-400e-8308-937c53e905da',TO_TIMESTAMP('2014-02-18 09:50:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:50:37 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:50:37','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável por Substituição Tributária','05','Y',1000000,1000004,'e4bc4bd6-7147-4d7f-b677-73556ef1123b',TO_TIMESTAMP('2014-02-18 09:50:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:50:50 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:50:50','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável a Alíquota Zero','06','Y',1000000,1000005,'efa6a9d7-18b9-41fb-879e-3e0a88f8c6d1',TO_TIMESTAMP('2014-02-18 09:50:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:52:11 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:52:11','YYYY-MM-DD HH24:MI:SS'),0,'Operação Isenta da Contribuição','07','Y',1000000,1000006,'97e466db-5344-485d-b3bb-4e7a88d45fd0',TO_TIMESTAMP('2014-02-18 09:52:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:52:25 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:52:25','YYYY-MM-DD HH24:MI:SS'),0,'Operação sem Incidência da Contribuição','08','Y',1000000,1000007,'20ffa6c9-d87d-4485-9dd6-4128c1e86054',TO_TIMESTAMP('2014-02-18 09:52:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:52:47 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:52:47','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Suspensão da Contribuição','09','Y',1000000,1000008,'2e51be13-4475-418d-8116-ec7bcc3eaabf',TO_TIMESTAMP('2014-02-18 09:52:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:53:11 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:53:11','YYYY-MM-DD HH24:MI:SS'),0,'Outras Operações de Saída','49','Y',1000000,1000009,'60b44e1e-5da5-44fd-bd8d-c13ae8e54096',TO_TIMESTAMP('2014-02-18 09:53:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:53:31 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:53:31','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno','50','Y',1000000,1000010,'a8b2ab07-db0a-4ae9-920d-e160a7d1370f',TO_TIMESTAMP('2014-02-18 09:53:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:54:07 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:54:07','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno','51','Y',1000000,1000011,'c75aa88e-688a-4ae2-be5e-ef3eb1b8522f',TO_TIMESTAMP('2014-02-18 09:54:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:55:10 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:55:10','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação','52','Y',1000000,1000012,'20d132d2-9708-4575-89f5-d65b1ffc923b',TO_TIMESTAMP('2014-02-18 09:55:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:55:24 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:55:24','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno','53','Y',1000000,1000013,'06d4b129-817d-4c52-a7c6-5ab8330bfbd5',TO_TIMESTAMP('2014-02-18 09:55:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:55:36 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:55:36','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação','54','Y',1000000,1000014,'95db65a8-5b8d-4f53-a41f-3e70c7d2b61d',TO_TIMESTAMP('2014-02-18 09:55:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:55:46 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:55:46','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação','55','Y',1000000,1000015,'007a079e-148d-4024-8a40-2e87e9cd0f4b',TO_TIMESTAMP('2014-02-18 09:55:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:56:00 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:56:00','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação','56','Y',1000000,1000016,'95e2079b-6899-413a-853e-fdf9758cfc19',TO_TIMESTAMP('2014-02-18 09:56:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:56:10 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:56:10','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno','60','Y',1000000,1000017,'66266065-b5f1-4b03-a88a-34bbc3333eaa',TO_TIMESTAMP('2014-02-18 09:56:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:56:31 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:56:31','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno','61','Y',1000000,1000018,'1a19a92f-5002-450d-bd4e-8e18551152a2',TO_TIMESTAMP('2014-02-18 09:56:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:56:41 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:56:41','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação','62','Y',1000000,1000019,'f6464ef4-dd39-4ad7-b2d7-bedada301a92',TO_TIMESTAMP('2014-02-18 09:56:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:56:50 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:56:50','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno','63','Y',1000000,1000020,'03d0786f-f1f4-4f3d-9113-becc29b456de',TO_TIMESTAMP('2014-02-18 09:56:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:57:02 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:57:02','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação','64','Y',1000000,1000021,'f2bd0672-3078-416d-ae5a-9f860c97d3a4',TO_TIMESTAMP('2014-02-18 09:57:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:57:11 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:57:11','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação','65','Y',1000000,1000022,'f36ff136-faee-4798-b8fa-f319fc94c177',TO_TIMESTAMP('2014-02-18 09:57:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:57:21 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:57:21','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação','66','Y',1000000,1000023,'26c33711-fe0f-424c-a88a-cec3b7b6694d',TO_TIMESTAMP('2014-02-18 09:57:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:57:31 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:57:31','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Outras Operações','67','Y',1000000,1000024,'a04cc88f-fd75-45bf-b54a-1462d6317def',TO_TIMESTAMP('2014-02-18 09:57:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:57:46 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:57:46','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição sem Direito a Crédito','70','Y',1000000,1000025,'33080a6c-ff24-4d13-bc71-c720a1ccb5df',TO_TIMESTAMP('2014-02-18 09:57:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:57:56 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:57:56','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição com Isenção','71','Y',1000000,1000026,'6b2b206b-c385-4342-b96a-1ef5d703cf0a',TO_TIMESTAMP('2014-02-18 09:57:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:58:04 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:58:04','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição com Suspensão','72','Y',1000000,1000027,'9556320a-3405-4f0b-bfdf-a11c50d904f0',TO_TIMESTAMP('2014-02-18 09:58:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:58:13 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:58:13','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição a Alíquota Zero','73','Y',1000000,1000028,'fd5764f4-63e4-4934-8a0b-2da88de9f453',TO_TIMESTAMP('2014-02-18 09:58:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:58:23 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:58:23','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição sem Incidência da Contribuição','74','Y',1000000,1000029,'bc3b58fc-a55b-4e4b-95e8-485d073f6105',TO_TIMESTAMP('2014-02-18 09:58:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:58:33 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:58:33','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição por Substituição Tributária','75','Y',1000000,1000030,'43bfe307-6b3f-405b-b3f2-50af42264ae7',TO_TIMESTAMP('2014-02-18 09:58:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:58:42 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:58:42','YYYY-MM-DD HH24:MI:SS'),0,'Outras Operações de Entrada','98','Y',1000000,1000031,'7e91f4a9-af23-4869-9c31-71e4c472f2bf',TO_TIMESTAMP('2014-02-18 09:58:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 9:58:52 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 09:58:52','YYYY-MM-DD HH24:MI:SS'),0,'Outras Operações','99','Y',1000000,1000032,'f9a7000e-0560-43ca-8f39-20b5c95600a9',TO_TIMESTAMP('2014-02-18 09:58:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:02:07 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:02:07','YYYY-MM-DD HH24:MI:SS'),0,'Contribuição para o Financiamento da Seguridade Social (COFINS) é uma contribuição federal, de natureza tributária, incidente sobre a receita bruta das empresas em geral, destinada a financiar a seguridade social.','Y','Y',1000001,'224db43c-221d-48ac-bb4e-11b5f5db5a60','COFINSSERV','S','M',TO_TIMESTAMP('2014-02-18 10:02:07','YYYY-MM-DD HH24:MI:SS'),0,5000)
;

-- Feb 18, 2014 10:02:45 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000004,'267c272d-8229-4d88-adef-e857efc63a71',1000001,'END',TO_TIMESTAMP('2014-02-18 10:02:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:03:06 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:03:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000005,'b6139c37-245a-4d1e-94d0-cc6fe3d6fae3',1000001,'IMP',TO_TIMESTAMP('2014-02-18 10:03:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:03:21 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:03:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000006,'56a70467-1fcb-4484-96ad-a2cdf05decc7',1000001,'MAN',TO_TIMESTAMP('2014-02-18 10:03:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:03:32 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:03:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000007,'0ef137b1-7c64-4bcb-af59-60794cdc2fdc',1000001,'RES',TO_TIMESTAMP('2014-02-18 10:03:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:05:48 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:05:48','YYYY-MM-DD HH24:MI:SS'),0,'Contribuição Social sobre o Lucro Líquido','Y','Y',1000002,'ae57c56f-f55d-483b-bd98-a3cf9eeda76b','CSLL','S','M',TO_TIMESTAMP('2014-02-18 10:05:48','YYYY-MM-DD HH24:MI:SS'),0,5000)
;

-- Feb 18, 2014 10:06:20 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:06:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000008,'3f681814-5bdf-438f-a388-8ec59dfddf8f',1000002,'END',TO_TIMESTAMP('2014-02-18 10:06:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:06:29 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:06:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000009,'418efbf7-3fcd-4bdc-9be6-fbccda1a5051',1000002,'IMP',TO_TIMESTAMP('2014-02-18 10:06:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:06:40 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:06:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000010,'37ca34fe-bc40-4615-82e2-09f06e0ca73f',1000002,'MAN',TO_TIMESTAMP('2014-02-18 10:06:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:06:50 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:06:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000011,'900d3553-118e-4015-8dd4-1508fd38c713',1000002,'RES',TO_TIMESTAMP('2014-02-18 10:06:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:07:20 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:07:20','YYYY-MM-DD HH24:MI:SS'),0,'O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual.','N','Y',1000003,'41bea43a-b0f6-4f0e-ac95-3e184eb17798','ICMSPROD','P','M',TO_TIMESTAMP('2014-02-18 10:07:20','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:08:04 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:08:04','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000014,1000002,1000012,'5168392c-9648-4728-8c02-910aaf76abb3',1000003,'MAN',TO_TIMESTAMP('2014-02-18 10:08:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:08:25 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:08:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000016,1000014,1000001,1000013,'abcc00b7-be94-42d4-8463-14e9c4659c0c',1000003,'END',TO_TIMESTAMP('2014-02-18 10:08:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:12:18 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaAdd_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:12:18','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000009,1000011,1000014,1000009,1000014,'e53cd86d-7cbc-4511-9756-ea6a1c655870',1000003,'IMP',TO_TIMESTAMP('2014-02-18 10:12:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:12:43 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:12:43','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000014,1000002,1000015,'f52df656-c47e-41bf-8ea5-7519991ddc50',1000003,'RES',TO_TIMESTAMP('2014-02-18 10:12:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:18:54 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:18:54','YYYY-MM-DD HH24:MI:SS'),0,'Tributada integralmente','00','Y',1000003,1000033,'9f29936f-7a44-40a6-b28d-9d590124a79c',TO_TIMESTAMP('2014-02-18 10:18:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:19:14 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:19:14','YYYY-MM-DD HH24:MI:SS'),0,'Tributada e com cobrança do ICMS por substituição tributária','10','Y',1000003,1000034,'71dd7a63-8337-4ef9-b62a-c3aa65f4d9e9',TO_TIMESTAMP('2014-02-18 10:19:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:19:25 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:19:25','YYYY-MM-DD HH24:MI:SS'),0,'Com redução de base de cálculo','20','Y',1000003,1000035,'e1ee1d71-d2d0-4945-a658-922bb7bc92dd',TO_TIMESTAMP('2014-02-18 10:19:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:19:36 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:19:36','YYYY-MM-DD HH24:MI:SS'),0,'Isenta ou não tributada e com cobrança do ICMS por substituição tributária','30','Y',1000003,1000036,'28552065-c7f8-4e65-b5bd-dd21eaabcc24',TO_TIMESTAMP('2014-02-18 10:19:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:19:45 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:19:45','YYYY-MM-DD HH24:MI:SS'),0,'Isenta','40','Y',1000003,1000037,'c00ed941-1427-43e8-8dbf-1bf940c7c69f',TO_TIMESTAMP('2014-02-18 10:19:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:19:52 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:19:52','YYYY-MM-DD HH24:MI:SS'),0,'Não tributada','41','Y',1000003,1000038,'010594dc-2006-41e9-a4d8-1bd71e35a4ba',TO_TIMESTAMP('2014-02-18 10:19:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:20:05 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:20:05','YYYY-MM-DD HH24:MI:SS'),0,'Suspensão','50','Y',1000003,1000039,'9387c49a-392b-46bd-8067-85b4ceeb7632',TO_TIMESTAMP('2014-02-18 10:20:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:20:14 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:20:14','YYYY-MM-DD HH24:MI:SS'),0,'Diferimento','51','Y',1000003,1000040,'b3555bf6-c229-4b10-b5c2-1f48b89d950e',TO_TIMESTAMP('2014-02-18 10:20:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:20:28 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:20:28','YYYY-MM-DD HH24:MI:SS'),0,'ICMS cobrado anteriormente por substituição tributária','60','Y',1000003,1000041,'4419f5a7-a913-4acf-b895-e00edc49f360',TO_TIMESTAMP('2014-02-18 10:20:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:20:39 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:20:39','YYYY-MM-DD HH24:MI:SS'),0,'Com redução de base de cálculo e cobrança do ICMS por substituição tributária','70','Y',1000003,1000042,'5674c785-11a8-4761-87e3-a203db144852',TO_TIMESTAMP('2014-02-18 10:20:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:20:53 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:20:53','YYYY-MM-DD HH24:MI:SS'),0,'Outras','90','Y',1000003,1000043,'9dd1c2b3-404b-4be6-83b5-963fad28bafb',TO_TIMESTAMP('2014-02-18 10:20:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:21:07 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:21:07','YYYY-MM-DD HH24:MI:SS'),0,'Tributada pelo Simples Nacional com permissão de crédito','101','Y',1000003,1000044,'3c13931a-29bb-46b2-b380-b6e132f1098c',TO_TIMESTAMP('2014-02-18 10:21:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:21:18 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:21:18','YYYY-MM-DD HH24:MI:SS'),0,'Tributada pelo Simples Nacional sem permissão de crédito','102','Y',1000003,1000045,'194e5ef3-c4dd-4363-ab8f-dd10684ffa78',TO_TIMESTAMP('2014-02-18 10:21:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:21:30 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:21:30','YYYY-MM-DD HH24:MI:SS'),0,'Isenção do ICMS no Simples Nacional para faixa de receita bruta','103','Y',1000003,1000046,'eda5b94d-1e13-4145-b095-f35ecec9988c',TO_TIMESTAMP('2014-02-18 10:21:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:21:40 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:21:40','YYYY-MM-DD HH24:MI:SS'),0,'Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária','201','Y',1000003,1000047,'1fa2b926-f456-4b09-aaaf-e6ae8c40da4d',TO_TIMESTAMP('2014-02-18 10:21:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:21:51 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:21:51','YYYY-MM-DD HH24:MI:SS'),0,' Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária','202','Y',1000003,1000048,'fc955a53-019a-43ea-966c-461f98c5b6c2',TO_TIMESTAMP('2014-02-18 10:21:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:22:04 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:22:04','YYYY-MM-DD HH24:MI:SS'),0,' Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária','203','Y',1000003,1000049,'ffc52ea6-b16f-4fa1-97c5-d7515a598b46',TO_TIMESTAMP('2014-02-18 10:22:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:22:13 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:22:13','YYYY-MM-DD HH24:MI:SS'),0,'Imune','300','Y',1000003,1000050,'03709f97-3ecd-416c-9429-2a8392ab01f1',TO_TIMESTAMP('2014-02-18 10:22:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:22:23 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:22:23','YYYY-MM-DD HH24:MI:SS'),0,'Não tributada pelo Simples Nacional','400','Y',1000003,1000051,'ac625f95-df3f-4db9-8ab7-0ccbcca0f0b2',TO_TIMESTAMP('2014-02-18 10:22:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:22:36 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:22:36','YYYY-MM-DD HH24:MI:SS'),0,'ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação','500','Y',1000003,1000052,'219d9a6c-4220-4de9-af9c-63196c949cfa',TO_TIMESTAMP('2014-02-18 10:22:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:22:45 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:22:45','YYYY-MM-DD HH24:MI:SS'),0,'Outros','900','Y',1000003,1000053,'1641e53c-8728-414f-bb59-c7243e370b67',TO_TIMESTAMP('2014-02-18 10:22:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:25:48 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:25:48','YYYY-MM-DD HH24:MI:SS'),0,'O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual.','N','Y',1000004,'8c4265c0-c896-401b-a0bd-dcd66d9bc21e','ICMSSERV','S','M',TO_TIMESTAMP('2014-02-18 10:25:48','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:26:20 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:26:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000016,'9d0f6059-f953-4457-80c4-d678374c4a00',1000004,'END',TO_TIMESTAMP('2014-02-18 10:26:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:26:34 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:26:34','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000017,'8b7b6897-6209-4c9b-a8b1-d1d2bf337f78',1000004,'MAN',TO_TIMESTAMP('2014-02-18 10:26:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:26:42 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:26:42','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000018,'f72e2b15-f6e6-4532-91c7-d5fa93cecca3',1000004,'RES',TO_TIMESTAMP('2014-02-18 10:26:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:26:58 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:26:58','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000019,'52c48e5e-9e23-4e03-970f-3eb06d31b8e2',1000004,'IMP',TO_TIMESTAMP('2014-02-18 10:26:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:28:11 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,LBR_TaxSubstitution_ID,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:28:11','YYYY-MM-DD HH24:MI:SS'),0,'O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual. Para operações de Substituição Tributária','N','Y',1000005,'972c3e92-7612-4635-97a2-1aebb944bfd8',1000003,'ICMSST','T','M',TO_TIMESTAMP('2014-02-18 10:28:11','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:28:47 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:28:46','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000016,1000014,1000003,1000020,'7c1fed5f-9a93-481b-a6de-de76942a3eb4',1000005,'END',TO_TIMESTAMP('2014-02-18 10:28:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:29:03 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:29:03','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000015,1000014,1000005,1000021,'012c3641-889b-4249-bb9f-39a0a0cb3e69',1000005,'RES',TO_TIMESTAMP('2014-02-18 10:29:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:29:18 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:29:18','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000015,1000014,1000005,1000022,'a794f1ad-3ad2-4ab3-9270-f5b7b03f5456',1000005,'MAN',TO_TIMESTAMP('2014-02-18 10:29:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:29:42 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:29:42','YYYY-MM-DD HH24:MI:SS'),0,'Tributada integralmente','00','Y',1000005,1000054,'2844720a-4b8b-44de-982f-f03fcb9af946',TO_TIMESTAMP('2014-02-18 10:29:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:29:55 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:29:55','YYYY-MM-DD HH24:MI:SS'),0,'Tributada e com cobrança do ICMS por substituição tributária','10','Y',1000005,1000055,'d60577f1-029c-4e65-87c0-23323c7e2b72',TO_TIMESTAMP('2014-02-18 10:29:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:30:03 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:30:03','YYYY-MM-DD HH24:MI:SS'),0,'Com redução de base de cálculo','20','Y',1000005,1000056,'b450b989-dad8-4785-a2c6-19f642aeb4ba',TO_TIMESTAMP('2014-02-18 10:30:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:30:15 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:30:15','YYYY-MM-DD HH24:MI:SS'),0,'Isenta ou não tributada e com cobrança do ICMS por substituição tributária','30','Y',1000005,1000057,'7bbc8303-ff47-4f40-84d4-cb1b3acc8ee2',TO_TIMESTAMP('2014-02-18 10:30:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:30:24 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:30:24','YYYY-MM-DD HH24:MI:SS'),0,'Isenta','40','Y',1000005,1000058,'f5cbc112-7bd4-449e-94ea-24b73c06b8d4',TO_TIMESTAMP('2014-02-18 10:30:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:30:42 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:30:41','YYYY-MM-DD HH24:MI:SS'),0,'Não tributada','41','Y',1000005,1000059,'9e5d75d0-1e4b-4dd4-8acb-747d8df36bc6',TO_TIMESTAMP('2014-02-18 10:30:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:30:53 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:30:53','YYYY-MM-DD HH24:MI:SS'),0,'Suspensão','50','Y',1000005,1000060,'1078e04c-2256-48ce-878c-c85048d5a0f8',TO_TIMESTAMP('2014-02-18 10:30:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:31:02 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:31:02','YYYY-MM-DD HH24:MI:SS'),0,'Diferimento','51','Y',1000005,1000061,'720d798c-4a16-4856-825c-943f92e72150',TO_TIMESTAMP('2014-02-18 10:31:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:31:10 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:31:10','YYYY-MM-DD HH24:MI:SS'),0,'ICMS cobrado anteriormente por substituição tributária','60','Y',1000005,1000062,'bb3ffd21-f49d-49ae-b536-0f8aa570eeab',TO_TIMESTAMP('2014-02-18 10:31:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:31:32 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:31:32','YYYY-MM-DD HH24:MI:SS'),0,'Com redução de base de cálculo e cobrança do ICMS por substituição tributária','70','Y',1000005,1000063,'22f315d0-6037-4d83-bc04-c6f88fbdf9ec',TO_TIMESTAMP('2014-02-18 10:31:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:32:07 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:32:07','YYYY-MM-DD HH24:MI:SS'),0,'Outras','90','Y',1000005,1000064,'75574b0e-2126-4c30-89df-40fba1b701dd',TO_TIMESTAMP('2014-02-18 10:32:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:33:07 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:33:07','YYYY-MM-DD HH24:MI:SS'),0,'Imposto de Importação','N','Y',1000006,'72a94068-9c6a-4067-a7f2-347f53293422','II','P','M',TO_TIMESTAMP('2014-02-18 10:33:07','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:33:39 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:33:39','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000007,1000014,1000010,1000023,'72936b17-84a6-4a57-ba14-3be48042ad6c',1000006,'IMP',TO_TIMESTAMP('2014-02-18 10:33:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:34:05 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:34:05','YYYY-MM-DD HH24:MI:SS'),0,'Instituto Nacional de Seguro Social','Y','Y',1000007,'943458f0-3f29-47e8-ac24-dacf1df02711','INSS','S','M',TO_TIMESTAMP('2014-02-18 10:34:05','YYYY-MM-DD HH24:MI:SS'),0,26363)
;

-- Feb 18, 2014 10:34:26 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:34:26','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000024,'5e952b56-94ce-44c4-9c5d-a42d5e9eae37',1000007,'END',TO_TIMESTAMP('2014-02-18 10:34:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:34:36 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:34:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000025,'4b8f33a1-c7ff-4ee5-b86c-c42d77f12af3',1000007,'IMP',TO_TIMESTAMP('2014-02-18 10:34:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:34:45 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:34:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000026,'288c1958-cb46-435c-ad65-ec9d3ddd7cdb',1000007,'MAN',TO_TIMESTAMP('2014-02-18 10:34:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:34:53 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:34:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000027,'7899535c-90ca-4ba5-99d3-a973f6da9df8',1000007,'RES',TO_TIMESTAMP('2014-02-18 10:34:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:35:21 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:35:21','YYYY-MM-DD HH24:MI:SS'),0,'Imposto sobre produtos industrializados','N','Y',1000008,'23038221-3289-4b88-bd73-96fea5717f44','IPI','P','M',TO_TIMESTAMP('2014-02-18 10:35:21','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:36:10 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000014,1000000,1000028,'cb5a6aaf-67e2-430c-9a51-c84f008e4c2d',1000008,'END',TO_TIMESTAMP('2014-02-18 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:36:22 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:36:22','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000014,1000002,1000029,'2f18fcb8-c0ff-4a27-af51-61298627d25d',1000008,'MAN',TO_TIMESTAMP('2014-02-18 10:36:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:36:37 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:36:37','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000007,1000014,1000007,1000030,'0b5146b4-55c3-4791-8a42-6ff66ca22d51',1000008,'IMP',TO_TIMESTAMP('2014-02-18 10:36:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:36:51 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:36:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000014,1000002,1000031,'4b267f97-28ce-419a-ae65-489440c13514',1000008,'RES',TO_TIMESTAMP('2014-02-18 10:36:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:37:32 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,PO_Description,Name,PO_Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:37:32','YYYY-MM-DD HH24:MI:SS'),0,'Saída Tributada','Entrada com Recuperação de Crédito','50','00','Y',1000008,1000065,'0f6f81c2-bf6f-409f-913c-8649459e93e6',TO_TIMESTAMP('2014-02-18 10:37:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:37:52 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,PO_Description,Name,PO_Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:37:52','YYYY-MM-DD HH24:MI:SS'),0,'Saída Tributável com Alíquota Zero','Entrada Tributável com Alíquota Zero','51','01','Y',1000008,1000066,'3a906c21-3446-40df-a1a0-2875ef86a0ce',TO_TIMESTAMP('2014-02-18 10:37:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:38:08 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,PO_Description,Name,PO_Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:38:08','YYYY-MM-DD HH24:MI:SS'),0,'Saída Isenta','Entrada Isenta','52','02','Y',1000008,1000067,'4499a3d0-1b4f-4a2d-b47c-3975652b509e',TO_TIMESTAMP('2014-02-18 10:38:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:38:21 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,PO_Description,Name,PO_Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:38:21','YYYY-MM-DD HH24:MI:SS'),0,'Saída Não-Tributada','Entrada Não-Tributada','53','03','Y',1000008,1000068,'ded240fa-4d0d-44a3-824a-e4bcf7be3df9',TO_TIMESTAMP('2014-02-18 10:38:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:38:36 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,PO_Description,Name,PO_Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:38:36','YYYY-MM-DD HH24:MI:SS'),0,'Saída Imune','Entrada Imune','54','04','Y',1000008,1000069,'4cb9308a-1cb7-4375-98c7-ae117831c1a3',TO_TIMESTAMP('2014-02-18 10:38:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:40:20 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,PO_Description,Name,PO_Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:40:20','YYYY-MM-DD HH24:MI:SS'),0,'Saída com Suspensão','Entrada com Suspensão','55','05','Y',1000008,1000070,'7931c641-2c94-4f44-82ca-c9c72adbcfb9',TO_TIMESTAMP('2014-02-18 10:40:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:40:37 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,PO_Description,Name,PO_Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:40:37','YYYY-MM-DD HH24:MI:SS'),0,'Outras Saídas','Outras Entradas','99','49','Y',1000008,1000071,'d47b1f11-61a3-47a7-87a7-e646eeb97b60',TO_TIMESTAMP('2014-02-18 10:40:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:42:29 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:42:29','YYYY-MM-DD HH24:MI:SS'),0,'Imposto de Renda','Y','Y',1000009,'f5cf00ac-0427-4e25-bd09-c0127f0933a5','IR','S','M',TO_TIMESTAMP('2014-02-18 10:42:29','YYYY-MM-DD HH24:MI:SS'),0,666.67)
;

-- Feb 18, 2014 10:42:53 AM BRT
UPDATE LBR_TaxName SET WithHoldThreshold=263.63,Updated=TO_TIMESTAMP('2014-02-18 10:42:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxName_ID=1000007
;

-- Feb 18, 2014 10:43:52 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:43:52','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000032,'92e00a01-8f30-4eba-ac8d-a1cd671412ab',1000009,'END',TO_TIMESTAMP('2014-02-18 10:43:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:44:01 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:44:01','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000033,'973037d8-920a-42ae-9dcb-273642255513',1000009,'IMP',TO_TIMESTAMP('2014-02-18 10:44:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:44:14 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:44:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000034,'0df7f3b1-6afd-4514-ab9d-27cdad74baeb',1000009,'MAN',TO_TIMESTAMP('2014-02-18 10:44:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:44:24 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:44:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000035,'e4ae5120-2bc5-40d7-bcbc-0b60eec22e02',1000009,'RES',TO_TIMESTAMP('2014-02-18 10:44:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:44:51 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:44:51','YYYY-MM-DD HH24:MI:SS'),0,'Imposto Sobre Serviços','N','Y',1000010,'ef59f4c0-2875-4a53-83a6-f618ddd21a96','ISS','S','M',TO_TIMESTAMP('2014-02-18 10:44:51','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:45:10 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:45:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000036,'e3a89e14-63f4-4348-9f03-5470e3a911b8',1000010,'END',TO_TIMESTAMP('2014-02-18 10:45:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:45:16 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:45:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000037,'24a7e71e-cce9-4be0-a122-11a8690d1e9f',1000010,'IMP',TO_TIMESTAMP('2014-02-18 10:45:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:45:24 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:45:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000038,'3ac9f702-698a-49a6-8f2b-b571de492a4b',1000010,'MAN',TO_TIMESTAMP('2014-02-18 10:45:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:45:31 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:45:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000039,'702e7588-4c21-4c6c-b1d2-1e214e0d1b77',1000010,'RES',TO_TIMESTAMP('2014-02-18 10:45:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:46:15 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:46:15','YYYY-MM-DD HH24:MI:SS'),0,'Imposto Sobre Serviços (Retenção)','Y','Y',1000011,'3e090610-f9d6-4c2d-9035-707d51f05606','ISSRT','S','M',TO_TIMESTAMP('2014-02-18 10:46:15','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:46:37 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:46:37','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000040,'91130323-cb35-4c8d-96fa-7b7a7fd14148',1000011,'END',TO_TIMESTAMP('2014-02-18 10:46:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:46:44 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:46:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000041,'2f75cb90-2f99-4ffb-af78-6990f7988425',1000011,'IMP',TO_TIMESTAMP('2014-02-18 10:46:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:46:53 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:46:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000042,'c7b0a367-3419-49b0-943e-e6a348c30520',1000011,'MAN',TO_TIMESTAMP('2014-02-18 10:46:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:47:00 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:47:00','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000013,1000043,'d2d20f0c-a5e7-4f2f-88e3-ce905451dd7e',1000011,'RES',TO_TIMESTAMP('2014-02-18 10:47:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:47:42 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:47:42','YYYY-MM-DD HH24:MI:SS'),0,'Índice de Valor Agregado. *** Especial *** Não Alterar ***','N','Y',1000012,'c8dd0530-627f-4b57-ba69-d9d6abb23d41','IVA','P','M',TO_TIMESTAMP('2014-02-18 10:47:42','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:48:06 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:48:06','YYYY-MM-DD HH24:MI:SS'),0,'Programa de Integração Social, mais conhecido como PIS/PASEP ou PIS, é uma contribuição social de natureza tributária, devida pelas pessoas jurídicas, com objetivo de financiar o pagamento do seguro-desemprego e do abono.','N','Y',1000013,'8966774c-d10b-4e90-ab16-7ad4418cbc61','PISPROD','P','M',TO_TIMESTAMP('2014-02-18 10:48:06','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 18, 2014 10:48:38 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:48:38','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000014,1000000,1000044,'405fb0f1-72c8-44e9-9041-68c7c0df3355',1000013,'END',TO_TIMESTAMP('2014-02-18 10:48:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:48:50 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:48:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000014,1000002,1000045,'ffaa93b1-b2d2-4a6e-bec0-10b296563b31',1000013,'MAN',TO_TIMESTAMP('2014-02-18 10:48:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:49:08 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:49:08','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000008,1000014,1000008,1000046,'f296cece-fb42-43e6-8ff6-7dd376ed4871',1000013,'IMP',TO_TIMESTAMP('2014-02-18 10:49:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:49:27 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:49:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',1000014,1000002,1000047,'7bb51f8f-3162-4657-b6ed-d6e6655bdc63',1000013,'RES',TO_TIMESTAMP('2014-02-18 10:49:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:50:16 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:50:16','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável com Alíquota Básica','01','Y',1000013,1000072,'4a29fe99-d4cc-4646-b439-b3e12aeb5727',TO_TIMESTAMP('2014-02-18 10:50:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:50:50 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:50:50','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável com Alíquota Diferenciada','02','Y',1000013,1000073,'a4658aaf-ab69-4900-98c5-8bce9258aa94',TO_TIMESTAMP('2014-02-18 10:50:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:51:00 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:51:00','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável com Alíquota por Unidade de Medida de Produto','03','Y',1000013,1000074,'795b1acb-eb39-4ec1-a9f5-074d1c1a7f92',TO_TIMESTAMP('2014-02-18 10:51:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:51:09 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:51:09','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável Monofásica - Revenda a Alíquota Zero','04','Y',1000013,1000075,'d0043b24-d1c9-421d-874c-f353911261d0',TO_TIMESTAMP('2014-02-18 10:51:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:51:18 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:51:18','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável por Substituição Tributária','05','Y',1000013,1000076,'72dcaa99-b9a3-4613-bd3d-aabe1c36f9df',TO_TIMESTAMP('2014-02-18 10:51:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:51:27 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:51:26','YYYY-MM-DD HH24:MI:SS'),0,'Operação Tributável a Alíquota Zero','06','Y',1000013,1000077,'ca6140ff-ed61-4a28-8f9a-9ddc344c4429',TO_TIMESTAMP('2014-02-18 10:51:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:51:38 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:51:38','YYYY-MM-DD HH24:MI:SS'),0,'Operação Isenta da Contribuição','07','Y',1000013,1000078,'023a2066-aed1-43b5-ac2d-97cbccdc53b4',TO_TIMESTAMP('2014-02-18 10:51:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:51:46 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:51:46','YYYY-MM-DD HH24:MI:SS'),0,'Operação sem Incidência da Contribuição','08','Y',1000013,1000079,'a1d9d016-11c9-4b75-a07c-a10f8ace5161',TO_TIMESTAMP('2014-02-18 10:51:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:51:54 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:51:54','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Suspensão da Contribuição','09','Y',1000013,1000080,'ec4bc410-df09-461e-92f3-338987f33107',TO_TIMESTAMP('2014-02-18 10:51:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:52:05 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:52:05','YYYY-MM-DD HH24:MI:SS'),0,'Outras Operações de Saída','49','Y',1000013,1000081,'54dc2366-d973-4000-b0e0-b3f4ee0f401f',TO_TIMESTAMP('2014-02-18 10:52:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:52:14 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:52:14','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno','50','Y',1000013,1000082,'626db3f3-4d1e-42ad-a0b0-c77e90ead380',TO_TIMESTAMP('2014-02-18 10:52:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:52:25 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:52:25','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno','51','Y',1000013,1000083,'bc564f88-aaa0-42e6-8a69-6d8202aa208b',TO_TIMESTAMP('2014-02-18 10:52:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:52:34 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:52:34','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação','52','Y',1000013,1000084,'5abd4d75-c554-440e-8cb0-6afb4a1c509c',TO_TIMESTAMP('2014-02-18 10:52:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:52:47 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:52:47','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno','53','Y',1000013,1000085,'ea37feb4-13fa-414d-9a1a-9914f57e0375',TO_TIMESTAMP('2014-02-18 10:52:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:52:56 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:52:56','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação','54','Y',1000013,1000086,'531da3b4-d5d3-4629-b38d-9244f44a809d',TO_TIMESTAMP('2014-02-18 10:52:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:53:05 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:53:05','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação','55','Y',1000013,1000087,'2ec30409-203f-4f1d-937c-cb1b8389a1f2',TO_TIMESTAMP('2014-02-18 10:53:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:53:20 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:53:20','YYYY-MM-DD HH24:MI:SS'),0,'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação','56','Y',1000013,1000088,'74120134-892a-430d-bb82-3e40ea2bc5c5',TO_TIMESTAMP('2014-02-18 10:53:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:53:29 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:53:29','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno','60','Y',1000013,1000089,'85df5486-6d46-4f75-915e-538a4084c2ed',TO_TIMESTAMP('2014-02-18 10:53:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:53:38 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:53:38','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno','61','Y',1000013,1000090,'e1d9120b-c5a7-4eaa-baff-30f2d0f3e887',TO_TIMESTAMP('2014-02-18 10:53:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:53:47 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:53:47','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação','62','Y',1000013,1000091,'86567207-9c51-4e6b-8c25-88c0e20cd46e',TO_TIMESTAMP('2014-02-18 10:53:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:55:22 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:55:22','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno','63','Y',1000013,1000092,'48bd25ad-ead8-4bf2-9800-5022db298991',TO_TIMESTAMP('2014-02-18 10:55:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:55:32 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:55:32','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação','64','Y',1000013,1000093,'08221dfe-dd09-4c78-9f27-b4bb8552d62f',TO_TIMESTAMP('2014-02-18 10:55:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:55:41 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:55:41','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação','65','Y',1000013,1000094,'51830b5b-8000-4260-9793-9fc2dfaf865e',TO_TIMESTAMP('2014-02-18 10:55:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:55:50 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:55:50','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação','66','Y',1000013,1000095,'45f68b97-34d1-4400-8533-c034d35b8bde',TO_TIMESTAMP('2014-02-18 10:55:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:55:58 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:55:58','YYYY-MM-DD HH24:MI:SS'),0,'Crédito Presumido - Outras Operações','67','Y',1000013,1000096,'7ac761e6-6087-4a22-a606-ee09e0735b10',TO_TIMESTAMP('2014-02-18 10:55:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:56:06 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:56:06','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição sem Direito a Crédito','70','Y',1000013,1000097,'f7a49482-3281-4db6-b649-2cf5fd6e9329',TO_TIMESTAMP('2014-02-18 10:56:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:56:15 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:56:15','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição com Isenção','71','Y',1000013,1000098,'01a735a3-cba8-4078-bc3a-1baed1bd6fe5',TO_TIMESTAMP('2014-02-18 10:56:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:56:24 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:56:24','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição com Suspensão','72','Y',1000013,1000099,'353683fd-8e9b-410d-bb91-2fb3423e8506',TO_TIMESTAMP('2014-02-18 10:56:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:56:35 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:56:35','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição a Alíquota Zero','73','Y',1000013,1000100,'5effc4c0-2bd3-4743-9e22-09e356f592c8',TO_TIMESTAMP('2014-02-18 10:56:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:56:44 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:56:44','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição sem Incidência da Contribuição','74','Y',1000013,1000101,'ab5a7478-f9c6-4030-85f8-d029dc9ceaa0',TO_TIMESTAMP('2014-02-18 10:56:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:56:52 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:56:52','YYYY-MM-DD HH24:MI:SS'),0,'Operação de Aquisição por Substituição Tributária','75','Y',1000013,1000102,'be5c17ef-e600-4251-a264-f13a8321385c',TO_TIMESTAMP('2014-02-18 10:56:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:57:03 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:57:03','YYYY-MM-DD HH24:MI:SS'),0,'Outras Operações de Entrada','98','Y',1000013,1000103,'450dca1c-c25e-4bfb-a7c6-a212b5a7291a',TO_TIMESTAMP('2014-02-18 10:57:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:57:11 AM BRT
INSERT INTO LBR_TaxStatus (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,Name,IsActive,LBR_TaxName_ID,LBR_TaxStatus_ID,LBR_TaxStatus_UU,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:57:11','YYYY-MM-DD HH24:MI:SS'),0,'Outras Operações','99','Y',1000013,1000104,'12a450a0-5418-4194-bf39-d4350a376a7a',TO_TIMESTAMP('2014-02-18 10:57:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:59:04 AM BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:59:04','YYYY-MM-DD HH24:MI:SS'),0,'Programa de Integração Social, mais conhecido como PIS/PASEP ou PIS, é uma contribuição social de natureza tributária, devida pelas pessoas jurídicas, com objetivo de financiar o pagamento do seguro-desemprego e do abono.','Y','Y',1000014,'4f000462-16cf-4cc7-81e4-869f47a699c8','PISSERV','S','M',TO_TIMESTAMP('2014-02-18 10:59:04','YYYY-MM-DD HH24:MI:SS'),0,5000)
;

-- Feb 18, 2014 10:59:25 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:59:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000048,'579fd7c2-004e-42af-853f-89bb80134ac9',1000014,'END',TO_TIMESTAMP('2014-02-18 10:59:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:59:33 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:59:33','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000049,'7605329f-f1b6-47e1-b1e2-3d85e0a70eac',1000014,'IMP',TO_TIMESTAMP('2014-02-18 10:59:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:59:41 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:59:41','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000050,'a042dd2f-2282-4e12-be75-ca4a636bf382',1000014,'MAN',TO_TIMESTAMP('2014-02-18 10:59:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

-- Feb 18, 2014 10:59:48 AM BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxFormula_UU,LBR_TaxName_ID,LBR_TransactionType,Updated,UpdatedBy,ValidFrom) VALUES (0,0,TO_TIMESTAMP('2014-02-18 10:59:48','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',1000013,1000051,'a2b1556f-a2d5-4cab-b4a3-30512b3a2662',1000014,'RES',TO_TIMESTAMP('2014-02-18 10:59:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'))
;

SELECT lbr_register_migration_script('201402181104.sql') FROM dual
;
