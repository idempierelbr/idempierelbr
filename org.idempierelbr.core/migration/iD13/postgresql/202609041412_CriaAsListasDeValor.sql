-- Cria as listas de valor
SELECT register_migration_script('202609041412_CriaAsListasDeValor.sql') FROM dual;

-- 4 de set. de 2026 14:12:25 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800097,'LBR_MDFe_tpAmb','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:12:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:12:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d68-44be-70d2-95fe-ac5856d85e85','N')
;

-- 4 de set. de 2026 14:12:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800436,'Producao',800097,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:12:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:12:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d68-6eea-7621-9d14-c403bc28e34f')
;

-- 4 de set. de 2026 14:12:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800437,'Homologacao',800097,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:12:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:12:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d68-90fc-7114-8056-60c394a065ba')
;

-- 4 de set. de 2026 14:12:57 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800098,'LBR_MDFe_tpEmit','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:12:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:12:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d68-c20d-782f-81b8-02b5b6a94e36','N')
;

-- 4 de set. de 2026 14:13:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800438,'Prestador de servico de transporte',800098,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:13:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:13:05','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d68-e4e6-75cb-bbcc-6c994b754167')
;

-- 4 de set. de 2026 14:13:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800439,'Transportador de carga propria',800098,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:13:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:13:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d69-0acb-75be-8352-4008a2f0a29e')
;

-- 4 de set. de 2026 14:13:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800440,'Prestador que emitira CT-e Globalizado',800098,'3',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:13:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:13:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d69-29a9-7695-ac04-3450c6c97200')
;

-- 4 de set. de 2026 14:13:36 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800099,'LBR_MDFe_tpTransp','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:13:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:13:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d69-5cc0-7a7b-bac9-8e867a2113da','N')
;

-- 4 de set. de 2026 14:14:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800441,'ETC - Empresa de Transporte de Cargas',800099,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:14:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:14:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d69-e271-7620-9487-2a3628f61dcd')
;

-- 4 de set. de 2026 14:14:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800442,'TAC - Transportador Autonomo de Cargas',800099,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:14:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:14:18','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d69-ff92-725c-8f97-364bce9c508c')
;

-- 4 de set. de 2026 14:14:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800443,'CTC - Cooperativa de Transporte de Cargas',800099,'3',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:14:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:14:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6a-1973-7ecf-8123-1c93cbaa8dde')
;

-- 4 de set. de 2026 14:14:36 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800100,'LBR_MDFe_modal','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:14:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:14:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d6a-45b6-74ac-b5fb-8781a58f162e','N')
;

-- 4 de set. de 2026 14:14:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800444,'Rodoviario',800100,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:14:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:14:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6a-675b-7160-8525-1482e11f3b43')
;

-- 4 de set. de 2026 14:14:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800445,'Aereo',800100,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:14:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:14:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6a-8178-7b50-a5e8-03cae2069cc9')
;

-- 4 de set. de 2026 14:14:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800446,'Aquaviario',800100,'3',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:14:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:14:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6a-9d4b-7ebf-aa7d-78f1be05291d')
;

-- 4 de set. de 2026 14:15:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800447,'Ferroviario',800100,'4',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:15:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:15:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6a-cc87-7b75-aec5-90d5167e0da7')
;

-- 4 de set. de 2026 14:15:25 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800101,'LBR_MDFe_tpEmis','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:15:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:15:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d6b-0443-7216-a03b-139984cba8ee','N')
;

-- 4 de set. de 2026 14:15:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800448,'Normal',800101,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:15:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:15:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6b-2159-7803-85f7-3966c702b93e')
;

-- 4 de set. de 2026 14:15:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800449,'Contingencia',800101,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:15:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:15:42','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6b-4ad0-7c24-aadc-de2d4211d484')
;

-- 4 de set. de 2026 14:15:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800450,'Regime Especial NFF',800101,'3',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:15:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:15:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6b-684a-7325-8c61-fc90d5890ee6')
;

-- 4 de set. de 2026 14:16:01 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800102,'LBR_MDFe_procEmi','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:16:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:16:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d6b-90d0-757a-8566-c7c9eae0e1e3','N')
;

-- 4 de set. de 2026 14:16:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800451,'Aplicativo do contribuinte',800102,'0',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:16:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:16:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6b-c469-7d35-ac6b-c73f4fd07c3a')
;

-- 4 de set. de 2026 14:16:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800452,'Provedor de Assinatura e Autorizacao (PAA)',800102,'4',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:16:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:16:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6b-e06d-7615-b45b-1b2a64e2ad32')
;

-- 4 de set. de 2026 14:17:09 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800103,'LBR_MDFe_tpCarga','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:17:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:17:08','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d6c-9a7e-7785-8d01-de95bfed79ad','N')
;

-- 4 de set. de 2026 14:17:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800453,'Granel solido',800103,'01',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:17:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:17:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6c-e09b-7df7-a888-45553c17fa9b')
;

-- 4 de set. de 2026 14:17:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800454,'Granel liquido',800103,'02',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:17:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:17:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-040b-7e44-a50e-28f2360184de')
;

-- 4 de set. de 2026 14:17:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800455,'Frigorificada',800103,'03',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:17:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:17:42','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-1d6b-7fdd-8d76-69bf54c43c33')
;

-- 4 de set. de 2026 14:17:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800456,'Conteinerizada',800103,'04',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:17:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:17:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-366c-70be-838a-42d6b0f47d4c')
;

-- 4 de set. de 2026 14:17:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800457,'Carga geral',800103,'05',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:17:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:17:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-5b48-73de-b73e-36c9a7e08370')
;

-- 4 de set. de 2026 14:18:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800458,'Neogranel',800103,'06',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:18:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:18:05','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-7940-7343-a510-2e32e90b9ee6')
;

-- 4 de set. de 2026 14:18:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800459,'Perigosa (granel solido)',800103,'07',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:18:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:18:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-98c8-7988-9e8f-959642ded33d')
;

-- 4 de set. de 2026 14:18:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800460,'Perigosa (granel liquido)',800103,'08',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:18:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:18:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-b49e-750b-906b-7c18eccd91cb')
;

-- 4 de set. de 2026 14:18:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800461,'Perigosa (frigorificada)',800103,'09',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:18:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:18:28','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-d009-7564-bc3c-3e31ce8f8d2e')
;

-- 4 de set. de 2026 14:18:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800462,'Perigosa (conteinerizada)',800103,'10',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:18:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:18:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6d-f144-721e-943b-980bbdcb8a6b')
;

-- 4 de set. de 2026 14:18:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800463,'Perigosa (carga geral)',800103,'11',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:18:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:18:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6e-1157-7f5d-aa55-f6073a8cd28a')
;

-- 4 de set. de 2026 14:18:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800464,'Granel pressurizada',800103,'12',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:18:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:18:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6e-2aaf-7daf-aa31-0a002852d4d6')
;

-- 4 de set. de 2026 14:19:00 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800104,'LBR_MDFe_cUnid','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d6e-4d7b-74ec-9dbf-373a6d613850','N')
;

-- 4 de set. de 2026 14:19:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800465,'KG',800104,'01',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6e-69e0-73b8-b4d4-e3d390965cb8')
;

-- 4 de set. de 2026 14:19:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800466,'TON',800104,'02',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6e-829e-7e71-815a-a33cd89cc035')
;

-- 4 de set. de 2026 14:19:24 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800105,'LBR_MDFe_tpRod','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d6e-aab3-74be-b434-f67bf181963c','N')
;

-- 4 de set. de 2026 14:19:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800467,'Truck',800105,'01',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6e-d024-7752-883e-f99c8089a002')
;

-- 4 de set. de 2026 14:19:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800468,'Toco',800105,'02',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6e-efae-7832-95df-2004436493a1')
;

-- 4 de set. de 2026 14:19:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800469,'Cavalo mecanico',800105,'03',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6f-156a-7b3d-8fe6-0b26ab241ea7')
;

-- 4 de set. de 2026 14:20:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800470,'VAN',800105,'04',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:19:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:19:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6f-3718-7dbb-a403-88756ae6757d')
;

-- 4 de set. de 2026 14:20:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800471,'Utilitario',800105,'05',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:20:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:20:08','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6f-569d-7442-97f1-090a97460dac')
;

-- 4 de set. de 2026 14:20:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800472,'Outros',800105,'06',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:20:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:20:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6f-7039-7c82-a1f6-d18afe91f837')
;

-- 4 de set. de 2026 14:20:24 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800106,'LBR_MDFe_tpCar','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:20:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:20:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d6f-96c2-7fd0-a33c-b69825e793f7','N')
;

-- 4 de set. de 2026 14:20:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800473,'Nao aplicavel',800106,'00',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:20:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:20:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6f-c09e-7fda-ac3f-52fb9d616cfb')
;

-- 4 de set. de 2026 14:20:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800474,'Aberta',800106,'01',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:20:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:20:43','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6f-e0c3-7475-95aa-68163ab1ae37')
;

-- 4 de set. de 2026 14:20:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800475,'Fechada/Bau',800106,'02',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:20:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:20:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d6f-ffd7-7988-a03f-7ce3869a6999')
;

-- 4 de set. de 2026 14:21:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800476,'Granelera',800106,'03',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:21:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:21:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d70-234c-78bf-a712-b290c810d20a')
;

-- 4 de set. de 2026 14:21:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800477,'Porta container',800106,'04',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:21:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:21:09','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d70-4751-75cb-b5c6-173afa782cc4')
;

-- 4 de set. de 2026 14:21:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800478,'Sider',800106,'05',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:21:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:21:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d70-6544-7d75-911e-57cdd7a567fe')
;

-- 4 de set. de 2026 14:21:29 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800107,'LBR_MDFe_tpProp','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:21:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:21:28','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d70-91c9-756e-b4bb-f3f7a5fc9128','N')
;

-- 4 de set. de 2026 14:21:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800479,'TAC agregado',800107,'0',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:21:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:21:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d70-ce5c-793c-bd81-acb2b9224522')
;

-- 4 de set. de 2026 14:21:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800480,'TAC independente',800107,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:21:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:21:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d70-fb60-7e08-949c-e66a3a2556ce')
;

-- 4 de set. de 2026 14:22:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800481,'Outros',800107,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:22:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:22:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d71-0db4-7fc7-8084-243d4f3ec180')
;

-- 4 de set. de 2026 14:22:21 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800108,'LBR_MDFe_respSeg','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:22:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:22:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d71-5e4e-7269-ac2b-67dfde04893f','N')
;

-- 4 de set. de 2026 14:22:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800482,'Emitente do MDF-e',800108,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:22:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:22:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d71-723b-7e19-9f8a-656d4fe39aff')
;

-- 4 de set. de 2026 14:22:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800483,'Contratante do servico de transporte',800108,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:22:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:22:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d71-937b-76d7-add6-4841c7f763e3')
;

-- 4 de set. de 2026 14:22:48 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800109,'LBR_MDFe_DFeType','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:22:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:22:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d71-c90c-707a-99fd-be527105be5b','N')
;

-- 4 de set. de 2026 14:22:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800484,'CT-e',800109,'C',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:22:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:22:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d71-e78c-7d96-82e2-ff799c688434')
;

-- 4 de set. de 2026 14:23:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800485,'MDF-e de transporte',800109,'M',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:23:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:23:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-1112-7906-9fd6-dec0704648f8')
;

-- 4 de set. de 2026 14:23:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800486,'NF-e',800109,'N',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:23:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:23:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-2ffd-7357-ab7d-646ace242721')
;

-- 4 de set. de 2026 14:23:24 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800110,'LBR_MDFe_Status','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:23:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:23:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d72-550a-73a8-ba2a-055b898ade95','N')
;

-- 4 de set. de 2026 14:23:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800487,'Assinado',800110,'AS',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:23:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:23:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-74df-7ae7-b2cd-2d0a6938342a')
;

-- 4 de set. de 2026 14:23:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800488,'Autorizado',800110,'AU',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:23:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:23:39','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-90e3-7f5a-a1ac-9a38a4f51ebf')
;

-- 4 de set. de 2026 14:23:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800489,'Cancelado',800110,'CA',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:23:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:23:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-ae1c-767b-8881-a5cac0ed9ee6')
;

-- 4 de set. de 2026 14:23:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800490,'Em digitacao',800110,'DR',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:23:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:23:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-cc46-7a66-82f5-41667250f15e')
;

-- 4 de set. de 2026 14:24:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800491,'Encerrado',800110,'EC',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:24:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:24:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-e367-77a5-b5a1-cfd8b74e88e5')
;

-- 4 de set. de 2026 14:24:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800492,'Enviado',800110,'EN',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:24:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:24:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d72-fda9-717b-bb04-124d461227c9')
;

-- 4 de set. de 2026 14:24:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800493,'Rejeitado',800110,'RE',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:24:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:24:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d73-1a3d-7b7a-b57c-67331a099d1b')
;

-- 4 de set. de 2026 14:24:33 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800111,'LBR_MDFe_EventType','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:24:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:24:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d73-61f0-7f77-a8ec-290d85c75fff','N')
;

-- 4 de set. de 2026 14:24:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800494,'Cancelamento',800111,'110111',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:24:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:24:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d73-8102-72dd-81ad-3043661c1fed')
;

-- 4 de set. de 2026 14:24:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800495,'Encerramento',800111,'110112',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:24:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:24:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d73-9b8a-7677-90b6-78482988f144')
;

-- 4 de set. de 2026 14:24:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800496,'Inclusao de condutor',800111,'110114',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:24:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:24:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d73-b9d8-7b1a-b196-d85235f426fa')
;

-- 4 de set. de 2026 14:25:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800497,'Inclusao de DF-e',800111,'110115',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:25:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:25:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d73-d51a-7d44-81cb-db7dfc5af007')
;

-- 4 de set. de 2026 14:25:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800498,'Pagamento da operacao de transporte',800111,'110116',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:25:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:25:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d73-ffac-7d41-92a1-d002f42020b1')
;

-- 4 de set. de 2026 14:25:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800499,'Alteracao no pagamento do servico de transporte',800111,'110118',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:25:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:25:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d74-2bb6-74e6-b482-4c3981bf331d')
;

-- 4 de set. de 2026 14:25:41 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800112,'LBR_MDFe_XMLType','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:25:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:25:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d74-6d0f-7431-820e-f68b1643a9a7','N')
;

-- 4 de set. de 2026 14:25:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800500,'Lote enviado',800112,'ENVI',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:25:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:25:53','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d74-9c6b-7df7-a2fb-824b3ede83a3')
;

-- 4 de set. de 2026 14:26:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800501,'Evento enviado',800112,'EVENTO',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d74-b674-7207-a587-38e6f490bfd1')
;

-- 4 de set. de 2026 14:26:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800502,'MDF-e assinado',800112,'MDFE',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d74-d25b-7cd3-9d1c-237554311306')
;

-- 4 de set. de 2026 14:26:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800503,'MDF-e processado (procMDFe)',800112,'PROC',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d74-ef6a-71b0-92ce-79378e6bcb86')
;

-- 4 de set. de 2026 14:26:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800504,'Retorno do envio',800112,'RETENVI',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d75-08a4-71a2-8023-9fcd35664d04')
;

-- 4 de set. de 2026 14:26:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800505,'Retorno do evento',800112,'RETEVENTO',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:27','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d75-226c-7467-bb5c-c3f224b041d8')
;

-- 4 de set. de 2026 14:26:37 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800113,'LBR_MDFe_LacreScope','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d75-45cb-70e2-8bec-5c96c49e4770','N')
;

-- 4 de set. de 2026 14:26:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800506,'MDF-e (lacres)',800113,'M',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:43','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d75-6106-7180-aec2-a9cc78606475')
;

-- 4 de set. de 2026 14:26:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800507,'Modal rodoviario (lacRodo)',800113,'R',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:26:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:26:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d75-7ecc-76f1-9601-472ec43eb227')
;

-- 4 de set. de 2026 14:27:00 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800114,'LBR_MDFe_tpValePed','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:27:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:27:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d75-a09e-779f-88ba-ac4c5b18d3b5','N')
;

-- 4 de set. de 2026 14:27:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800508,'TAG',800114,'01',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:27:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:27:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d75-cf6a-7a6b-b341-fd9dee562362')
;

-- 4 de set. de 2026 14:27:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800509,'Leitura de placa',800114,'04',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:27:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:27:18','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d75-e6e8-7ab5-8173-c8f6dd4aa16d')
;

-- 4 de set. de 2026 14:27:26 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800115,'LBR_MDFe_categCombVeic','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:27:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:27:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d76-049e-7560-8fd6-5d446fc7a6bc','N')
;

-- 4 de set. de 2026 14:27:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800510,'Veiculo comercial 2 eixos',800115,'02',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:27:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:27:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d76-2b49-7f55-ba72-818383e92986')
;

-- 4 de set. de 2026 14:27:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800511,'Veiculo comercial 3 eixos',800115,'04',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:27:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:27:45','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d76-529c-7cf5-9ba1-591d4303114c')
;

-- 4 de set. de 2026 14:27:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800512,'Veiculo comercial 4 eixos',800115,'06',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:27:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:27:57','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d76-7f1c-7b1b-b1ff-5a23907b3719')
;

-- 4 de set. de 2026 14:28:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800513,'Veiculo comercial 5 eixos',800115,'07',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:28:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:28:09','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d76-ae02-78f7-86da-e4b45c1a91f1')
;

-- 4 de set. de 2026 14:28:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800514,'Veiculo comercial 6 eixos',800115,'08',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:28:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:28:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d76-da5d-782c-8e9e-d9eef93fa88d')
;

-- 4 de set. de 2026 14:28:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800515,'Veiculo comercial 7 eixos',800115,'10',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:28:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:28:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d76-fca8-720b-b7cf-082d7992ada8')
;

-- 4 de set. de 2026 14:28:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800516,'Veiculo comercial 8 eixos',800115,'11',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:28:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:28:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d77-1659-7863-9db1-8615fcb27a88')
;

-- 4 de set. de 2026 14:28:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800517,'Veiculo comercial 9 eixos',800115,'12',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:28:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:28:42','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d77-318e-7ab0-9389-7abe31b3ecd4')
;

-- 4 de set. de 2026 14:28:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800518,'Veiculo comercial 10 eixos',800115,'13',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:28:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:28:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d77-4e0c-767f-af74-4cfca6429e37')
;

-- 4 de set. de 2026 14:28:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800519,'Veiculo comercial acima de 10 eixos',800115,'14',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:28:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:28:57','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d77-6a02-7ff6-8713-24dd3223d7e3')
;

-- 4 de set. de 2026 14:29:15 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800116,'LBR_MDFe_tpComp','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:29:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:29:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d77-b143-74ee-afdc-17027ab1dad7','N')
;

-- 4 de set. de 2026 14:29:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800520,'Vale-pedagio',800116,'01',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:29:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:29:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d77-d151-7a74-b3ec-2aa839718695')
;

-- 4 de set. de 2026 14:29:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800521,'Impostos, taxas e contribuicoes',800116,'02',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:29:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:29:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d77-e813-775c-90d6-600c4116ff57')
;

-- 4 de set. de 2026 14:29:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800522,'Despesas (bancarias, meios de pagamento, outras)',800116,'03',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:29:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:29:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d78-0a27-773b-956a-05c7e3974063')
;

-- 4 de set. de 2026 14:29:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800523,'Frete',800116,'04',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:29:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:29:45','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d78-2784-7209-af21-a3a6ab1dc61b')
;

-- 4 de set. de 2026 14:29:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800524,'Outros',800116,'99',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:29:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:29:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d78-41e8-778a-98e0-ac7086628813')
;

-- 4 de set. de 2026 14:30:05 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800117,'LBR_MDFe_indPag','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:30:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:30:04','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d78-7186-7d16-ada9-66a9594c5d24','N')
;

-- 4 de set. de 2026 14:30:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800525,'A vista',800117,'0',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:30:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:30:18','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d78-a5d5-7165-8490-0aafa743ccd7')
;

-- 4 de set. de 2026 14:30:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800526,'A prazo',800117,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:30:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:30:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d78-bcff-7e98-9c36-acc71990102e')
;

-- 4 de set. de 2026 14:30:34 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800118,'LBR_MDFe_tpAntecip','L',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:30:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:30:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a06d78-e3ae-7443-a66b-fe74394b2b3e','N')
;

-- 4 de set. de 2026 14:30:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800527,'Nao permite antecipar',800118,'0',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:30:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:30:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d79-02ed-7ece-9e02-bb785b917bfd')
;

-- 4 de set. de 2026 14:30:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800528,'Permite antecipar as parcelas',800118,'1',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:30:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:30:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d79-1aaf-791e-860d-8e1903b711d4')
;

-- 4 de set. de 2026 14:30:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800529,'Permite antecipar mediante confirmacao',800118,'2',0,0,'Y',TO_TIMESTAMP('2026-09-04 14:30:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 14:30:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a06d79-389a-743d-a03d-31d900d47bd1')
;

