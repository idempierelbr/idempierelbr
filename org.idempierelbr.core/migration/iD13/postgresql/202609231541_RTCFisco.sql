-- 
SELECT register_migration_script('202609231541_RTCFisco.sql') FROM dual;

-- 23 de set. de 2026 15:41:50 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800119,'LBR_RTCTaxType','L',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:41:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:41:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a0cf92-f6b6-72d8-8e48-8344e2554ba8','N')
;

-- 23 de set. de 2026 15:42:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800531,'CBS',800119,'CBS',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:42:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:42:40','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf93-bc47-7ab5-ae3c-5ec04740c554')
;

-- 23 de set. de 2026 15:42:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800532,'IBS',800119,'IBS',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:42:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:42:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf93-f56a-7f88-942b-6e04497247af')
;

-- 23 de set. de 2026 15:43:23 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800120,'LBR_RTCFiscoService','L',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:43:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:43:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a0cf94-64a2-79e3-bda7-3af69b09894d','N')
;

-- 23 de set. de 2026 15:43:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800533,'Débitos',800120,'DEB',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:43:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:43:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf94-9576-799a-9117-1e06084b70fe')
;

-- 23 de set. de 2026 15:43:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800534,'Créditos',800120,'CRE',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:43:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:43:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf94-cc43-77ce-8791-e53a56fc35c7')
;

-- 23 de set. de 2026 15:44:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800535,'Pagamentos',800120,'PAG',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:44:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:44:01','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf94-f9e3-7a33-a74e-938572b83290')
;

-- 23 de set. de 2026 15:44:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800536,'Recolhimentos',800120,'REC',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:44:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:44:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf95-2705-76af-ab32-83bc4c1e8153')
;

-- 23 de set. de 2026 15:45:06 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800121,'LBR_RTCFiscoReqStatus','L',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:45:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:45:05','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a0cf95-f4ac-7f4e-b1c9-56a7b333a8b9','N')
;

-- 23 de set. de 2026 15:45:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800537,'Enviada',800121,'SENT',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:45:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:45:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf96-6af4-7498-850e-faecf769b91e')
;

-- 23 de set. de 2026 15:45:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800538,'Pendente',800121,'PENDING',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:45:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:45:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf96-9e04-7fe4-8519-10edc6d5a7f9')
;

-- 23 de set. de 2026 15:46:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800539,'Em processamento',800121,'PROCESSING',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:46:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:46:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf96-e031-75cb-a3cb-d548d337546c')
;

-- 23 de set. de 2026 15:46:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800540,'Concluída',800121,'DONE',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:46:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:46:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf97-0d6c-77ac-91b2-c797d975c1a0')
;

-- 23 de set. de 2026 15:46:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800541,'Erro',800121,'ERROR',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:46:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:46:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf97-3cf7-7b73-9f03-1fe6770ec045')
;

-- 23 de set. de 2026 15:46:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800542,'Importada',800121,'IMPORTED',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:46:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:46:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf97-6c32-7b25-a009-e182519473b2')
;

-- 23 de set. de 2026 15:46:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800543,'Expirada',800121,'EXPIRED',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:46:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:46:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf97-9b63-75d0-9383-886c7bba098f')
;

-- 23 de set. de 2026 15:47:31 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800122,'LBR_RTCFiscoDocType','L',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:47:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:47:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a0cf98-2d81-77fa-ae70-04d7a0534d21','N')
;

-- 23 de set. de 2026 15:47:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800544,'Débito',800122,'D',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:47:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:47:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf98-5e4e-7feb-87bd-4b8802e001c7')
;

-- 23 de set. de 2026 15:47:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800545,'Crédito',800122,'C',0,0,'Y',TO_TIMESTAMP('2026-09-23 15:47:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:47:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','01a0cf98-8d1e-704d-8919-819b88ca2e60')
;

-- 23 de set. de 2026 15:51:27 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800976,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:51:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:51:27','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CNPJBase','CNPJ Base','CNPJ Base','LBR','01a0cf9b-c656-7e4e-8469-1ff4f75d5bb3')
;

-- 23 de set. de 2026 15:51:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800977,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:51:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:51:42','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCTaxType','Tributo','Tributo','LBR','01a0cf9c-011f-77d3-a4cb-c0fb36b0a4ba')
;

-- 23 de set. de 2026 15:52:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800978,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:51:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:51:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ClientID','Client ID','Client ID','LBR','01a0cf9c-45dc-7b61-89b2-2821dbfb1e01')
;

-- 23 de set. de 2026 15:52:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800979,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:52:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:52:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ClientSecret','Client Secret','Client Secret','LBR','01a0cf9c-8854-7dba-b9b8-786e3dd74a53')
;

-- 23 de set. de 2026 15:52:33 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800980,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:52:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:52:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR_WebhookBaseURL','URL Base do Webhook','URL Base do Webhook','LBR','01a0cf9c-c698-732f-ad8c-a0b8de4d7c63')
;

-- 23 de set. de 2026 15:52:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800981,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:52:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:52:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR_WebhookSecret','Segredo do Webhook','Segredo do Webhook','LBR','01a0cf9c-fd6b-7e32-9006-2814ccffad5f')
;

-- 23 de set. de 2026 15:53:02 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800982,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:53:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:53:01','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TokenURL','URL do Token','URL do Token','LBR','01a0cf9d-3708-796f-aea1-8a224232fdb4')
;

-- 23 de set. de 2026 15:53:18 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800983,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:53:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:53:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_APIBaseURL','URL Base da API','URL Base da API','LBR','01a0cf9d-7630-7c6f-9338-6339d22f9ed6')
;

-- 23 de set. de 2026 15:53:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800984,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:53:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:53:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoService','Serviço','Serviço','LBR','01a0cf9d-abd5-7dbc-b749-1e3d1b12969d')
;

-- 23 de set. de 2026 15:53:53 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800985,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:53:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:53:53','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Ticket','Ticket da Solicitação','Ticket da Solicitação','LBR','01a0cf9e-00ae-775a-ba31-90d570646899')
;

-- 23 de set. de 2026 15:54:11 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800986,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:54:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:54:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoReqStatus','Status da Solicitação','Status da Solicitação','LBR','01a0cf9e-44b1-7d1a-b676-9ef3e172f5dc')
;

-- 23 de set. de 2026 15:54:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800987,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:54:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:54:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateRequested','Data da Solicitação','Data da Solicitação','LBR','01a0cf9e-810f-7054-abda-975fcf13feaa')
;

-- 23 de set. de 2026 15:54:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800988,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:54:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:54:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TEASeconds','Tempo Estimado (Segundos)','Tempo Estimado (Segundos)','LBR','01a0cf9e-d77c-7b7e-80d1-c9a7182bd1c1')
;

-- 23 de set. de 2026 15:55:06 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800989,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:55:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:55:05','YYYY-MM-DD HH24:MI:SS'),10,'LBR_SignedURL','URL Assinada','URL Assinada','LBR','01a0cf9f-1c49-74a0-a1dd-77b24917924f')
;

-- 23 de set. de 2026 15:55:21 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800990,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:55:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:55:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR_SignedURLExpiresAt','Expiração da URL Assinada','Expiração da URL Assinada','LBR','01a0cf9f-5707-72e2-bda8-3ad294b7eb01')
;

-- 23 de set. de 2026 15:55:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800991,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:55:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:55:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GeneratedAt','Gerado em','Gerado em','LBR','01a0cf9f-983a-73ad-a9e9-42a6c5b70447')
;

-- 23 de set. de 2026 15:55:52 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800992,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:55:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:55:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ErrorCode','Código do Erro','Código do Erro','LBR','01a0cf9f-d0bf-7fe7-a668-3282d9c0cd3c')
;

-- 23 de set. de 2026 15:56:07 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800993,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:56:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:56:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ErrorMsg','Mensagem do Erro','Mensagem do Erro','LBR','01a0cfa0-0965-71f7-b4f4-22c7985669f9')
;

-- 23 de set. de 2026 15:56:20 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800994,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:56:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:56:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PA','Período de Apuração','Período de Apuração','LBR','01a0cfa0-3f88-76ba-8ae0-aff3ac4bcbd4')
;

-- 23 de set. de 2026 15:56:34 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800995,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:56:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:56:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TotalDebit','Total de Débito','Total de Débito','LBR','01a0cfa0-7306-7379-a01f-80f9f97d6574')
;

-- 23 de set. de 2026 15:56:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800996,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:56:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:56:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TotalCredit','Total de Crédito','Total de Crédito','LBR','01a0cfa0-aaf7-7ead-a1fa-67ce58db65db')
;

-- 23 de set. de 2026 15:57:01 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800997,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:57:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:57:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TotalPaid','Total Pago','Total Pago','LBR','01a0cfa0-de3a-75c7-94ca-64358732930d')
;

-- 23 de set. de 2026 15:57:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800998,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:57:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:57:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Balance','Saldo','Saldo','LBR','01a0cfa1-0d6e-78ee-b111-7d722e6687a7')
;

-- 23 de set. de 2026 15:57:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800999,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:57:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:57:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateUpdated','Atualizado em (Fisco)','Atualizado em (Fisco)','LBR','01a0cfa1-5510-790e-b62d-3fa57bc33453')
;

-- 23 de set. de 2026 15:57:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801000,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:57:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:57:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoDocType','Tipo do Documento','Tipo do Documento','LBR','01a0cfa1-9510-73c3-a7ab-bdf5d100fbc2')
;

-- 23 de set. de 2026 15:58:01 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801001,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:58:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:58:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Origem','Origem','Origem','LBR','01a0cfa1-c7da-74ad-ae2f-b46d5c246a35')
;

-- 23 de set. de 2026 15:58:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801002,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:58:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:58:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Documento','Documento','Documento','LBR','01a0cfa1-f57a-70ca-b3cf-ffc544c2c4a8')
;

-- 23 de set. de 2026 15:58:27 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801003,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:58:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:58:27','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateIssued','Data de Emissão','Data de Emissão','LBR','01a0cfa2-2ec4-7ac3-b153-92de3408688c')
;

-- 23 de set. de 2026 15:58:45 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801004,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:58:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:58:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateRegistered','Data de Registro','Data de Registro','LBR','01a0cfa2-72b2-773e-ab7f-629b9991c4c8')
;

-- 23 de set. de 2026 15:59:04 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801005,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:59:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:59:04','YYYY-MM-DD HH24:MI:SS'),10,'LBR_AssessedAmt','Valor Apurado','Valor Apurado','LBR','01a0cfa2-c04d-70eb-9d29-93fa9ed767a8')
;

-- 23 de set. de 2026 15:59:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801006,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:59:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:59:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ExcessAmt','Excedentes','Excedentes','LBR','01a0cfa2-f182-7504-b53a-cc88d7ffb3f9')
;

-- 23 de set. de 2026 15:59:30 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801007,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:59:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:59:30','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NonAppropriableAmt','Inapropriável','Inapropriável','LBR','01a0cfa3-24b6-7e41-9e5a-34cd8401b3df')
;

-- 23 de set. de 2026 15:59:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801008,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:59:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:59:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR_SuspendedAmt','Suspenso','Suspenso','LBR','01a0cfa3-51b9-7c78-bf35-be5e9e521293')
;

-- 23 de set. de 2026 16:00:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801009,0,0,'Y',TO_TIMESTAMP('2026-09-23 15:59:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 15:59:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PrescribedAmt','Prescrito','Prescrito','LBR','01a0cfa3-97e9-7ec4-8458-034e2944aa1a')
;

-- 23 de set. de 2026 16:00:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801010,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:00:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:00:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ToAppropriateAmt','A Apropriar','A Apropriar','LBR','01a0cfa3-cd1e-7d65-9845-a4f7e2fecef9')
;

-- 23 de set. de 2026 16:00:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801011,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:00:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:00:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR_AppropriatedAmt','Apropriado','Apropriado','LBR','01a0cfa4-005c-7944-8f5c-e4c3e14685df')
;

-- 23 de set. de 2026 16:00:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801012,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:00:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:00:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NonUsableAmt','Inutilizável','Inutilizável','LBR','01a0cfa4-2df4-7e23-9d2e-d6538c3af9e5')
;

-- 23 de set. de 2026 16:00:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801013,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:00:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:00:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR_UsedAmt','Utilizado','Utilizado','LBR','01a0cfa4-5e03-7e98-a6b6-89ceadcc69fe')
;

-- 23 de set. de 2026 16:01:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801014,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:01:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:01:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RestoredAmt','Restabelecido','Restabelecido','LBR','01a0cfa5-6b87-7d70-b628-12aac92523aa')
;

-- 23 de set. de 2026 16:02:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801015,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:02:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:02:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CreditBalanceAmt','Saldo Credor','Saldo Credor','LBR','01a0cfa5-a7f3-7aa8-a8f8-4311398e46c9')
;

-- 23 de set. de 2026 16:02:29 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801016,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:02:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:02:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RefundRequestAmt','Pedido de Ressarcimento','Pedido de Ressarcimento','LBR','01a0cfa5-e056-75dd-873e-ff6911225d3c')
;

-- 23 de set. de 2026 16:02:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801017,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:02:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:02:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DARFNo','Número do DARF','Número do DARF','LBR','01a0cfa6-11f5-7d8e-aea4-e4619ed0ee4a')
;

-- 23 de set. de 2026 16:02:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801018,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:02:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:02:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PaymentType','Tipo de Pagamento','Tipo de Pagamento','LBR','01a0cfa6-4786-7f2d-982c-0aa20202a444')
;

-- 23 de set. de 2026 16:03:10 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801019,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:03:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:03:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateCollection','Data de Arrecadação','Data de Arrecadação','LBR','01a0cfa6-8053-7d74-9668-934b5dcc0c90')
;

-- 23 de set. de 2026 16:03:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801020,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:03:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:03:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NI','NI (CNPJ/CPF)','NI (CNPJ/CPF)','LBR','01a0cfa6-b9ed-7046-a42e-f65c117b2981')
;

-- 23 de set. de 2026 16:03:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801021,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:03:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:03:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PrincipalAmt','Principal','Principal','LBR','01a0cfa6-ec64-78cc-8fad-e1151da3cca5')
;

-- 23 de set. de 2026 16:03:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801022,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:03:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:03:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR_FineAmt','Multa','Multa','LBR','01a0cfa7-1bcf-7885-bae0-c7c7f411a205')
;

-- 23 de set. de 2026 16:04:03 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801023,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:04:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:04:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR_InterestAmt','Juros','Juros','LBR','01a0cfa7-4e59-7440-9787-699e84912b6b')
;

-- 23 de set. de 2026 16:13:53 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800112,'Configuração da Integração (RTC/Fisco)','LBR_RTCFiscoConfig',0,'2',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:13:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:13:53','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a0cfb0-5098-7524-9036-126f4c0eb40d','N','N','N','N','N','N','N')
;

-- 23 de set. de 2026 16:13:54 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_RTCFiscoConfig',1000000,'N','N','Table LBR_RTCFiscoConfig','Y','Y',0,0,TO_TIMESTAMP('2026-09-23 16:13:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:13:53','YYYY-MM-DD HH24:MI:SS'),10,800726,'Y',1000000,1,200000,'01a0cfb0-5258-7e45-83e3-896e827810a3')
;

-- 23 de set. de 2026 16:18:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802695,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800112,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:55','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a0cfb4-ee56-770a-a844-6f44a330989f','N')
;

-- 23 de set. de 2026 16:18:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802696,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800112,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:56','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a0cfb4-efed-7142-adf5-c68f12c637c5','N')
;

-- 23 de set. de 2026 16:18:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802697,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800112,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:56','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a0cfb4-f18b-7f80-afe8-a9d7339c6d1c','N')
;

-- 23 de set. de 2026 16:18:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802698,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800112,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:57','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a0cfb4-f32e-7f97-a7e9-d1b78dbd020e','N')
;

-- 23 de set. de 2026 16:18:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802699,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800112,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:57','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a0cfb4-f4bb-7dce-b79d-6a6f6b1c2f65','N')
;

-- 23 de set. de 2026 16:18:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802700,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800112,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:57','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a0cfb4-f696-7edc-90cb-f1044a1128cb','N')
;

-- 23 de set. de 2026 16:18:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802701,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800112,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:58','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a0cfb4-f85f-744c-a406-02bca024e8bd','N')
;

-- 23 de set. de 2026 16:18:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801024,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoConfig_ID','Configuração da Integração (RTC/Fisco)','Configuração da Integração (RTC/Fisco)','LBR','01a0cfb4-f9ef-7544-8e16-8efc0d585a6f')
;

-- 23 de set. de 2026 16:18:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802702,0.0,'Configuração da Integração (RTC/Fisco)',800112,'LBR_RTCFiscoConfig_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:59','YYYY-MM-DD HH24:MI:SS'),10,801024,'N','N','LBR','N','01a0cfb4-fb87-785a-91e7-5bfe8b221697','N')
;

-- 23 de set. de 2026 16:19:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801025,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:18:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:18:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoConfig_UU','LBR_RTCFiscoConfig_UU','LBR_RTCFiscoConfig_UU','LBR','01a0cfb4-fd20-72f1-be5e-25ffb71f6f13')
;

-- 23 de set. de 2026 16:19:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802703,0.0,'LBR_RTCFiscoConfig_UU',800112,'LBR_RTCFiscoConfig_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:19:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:19:00','YYYY-MM-DD HH24:MI:SS'),10,801025,'Y','N','LBR','N','01a0cfb4-feac-78bb-836e-abe665830ff2','N')
;

-- 23 de set. de 2026 16:19:00 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800199,'01a0cfb5-0056-79d8-ab58-498da23f1ee7',TO_TIMESTAMP('2026-09-23 16:19:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_RTCFiscoConfig_UU_idx',TO_TIMESTAMP('2026-09-23 16:19:00','YYYY-MM-DD HH24:MI:SS'),10,800112,'Y','Y','N','N')
;

-- 23 de set. de 2026 16:19:01 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800232,'01a0cfb5-0387-7079-b477-b9448d573051',TO_TIMESTAMP('2026-09-23 16:19:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-23 16:19:00','YYYY-MM-DD HH24:MI:SS'),10,802703,800199,10)
;

-- 23 de set. de 2026 16:19:19 BRT
UPDATE AD_Column SET DefaultValue='0', IsAllowCopy='N',Updated=TO_TIMESTAMP('2026-09-23 16:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802696
;

-- 23 de set. de 2026 16:19:39 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRRTCFiscoConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802695
;

-- 23 de set. de 2026 16:19:39 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRRTCFiscoConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802696
;

-- 23 de set. de 2026 16:19:39 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRRTCFiscoConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802698
;

-- 23 de set. de 2026 16:19:39 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRRTCFiscoConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802700
;

-- 23 de set. de 2026 16:19:39 BRT
CREATE TABLE LBR_RTCFiscoConfig (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) DEFAULT 0 NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_RTCFiscoConfig_ID NUMERIC(10) NOT NULL, LBR_RTCFiscoConfig_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_RTCFiscoConfig_Key PRIMARY KEY (LBR_RTCFiscoConfig_ID), CONSTRAINT LBR_RTCFiscoConfig_UU_idx UNIQUE (LBR_RTCFiscoConfig_UU))
;

-- 23 de set. de 2026 16:19:39 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD CONSTRAINT ADClient_LBRRTCFiscoConfig FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:19:39 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD CONSTRAINT ADOrg_LBRRTCFiscoConfig FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:19:39 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD CONSTRAINT CreatedBy_LBRRTCFiscoConfig FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:19:39 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD CONSTRAINT UpdatedBy_LBRRTCFiscoConfig FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:22:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802704,0,'CNPJ Base',800112,'LBR_CNPJBase',8,'N','N','Y','N','Y',1,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:22:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:22:10','YYYY-MM-DD HH24:MI:SS'),10,800976,'Y','N','LBR','N','N','N','Y','01a0cfb7-e4aa-7f2d-89e9-ab5fd316727d','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:22:11 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_CNPJBase VARCHAR(8) NOT NULL
;

-- 23 de set. de 2026 16:23:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802705,0,'Tributo',800112,'LBR_RTCTaxType',3,'N','N','Y','N','Y',2,'N',17,800119,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:23:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:23:38','YYYY-MM-DD HH24:MI:SS'),10,800977,'Y','N','LBR','N','N','N','Y','01a0cfb9-3f89-70b7-8e63-f061daebb634','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:23:40 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_RTCTaxType VARCHAR(3) NOT NULL
;

-- 23 de set. de 2026 16:24:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802706,0,'Client ID',800112,'LBR_ClientID',255,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:24:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:24:46','YYYY-MM-DD HH24:MI:SS'),10,800978,'Y','N','LBR','N','N','N','Y','01a0cfba-48bd-7a95-a7f7-226779345bb0','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:24:48 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_ClientID VARCHAR(255) NOT NULL
;

-- 23 de set. de 2026 16:29:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802707,0,'Client Secret',800112,'LBR_ClientSecret',500,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:29:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:29:52','YYYY-MM-DD HH24:MI:SS'),10,800979,'Y','N','LBR','N','N','N','N','01a0cfbe-f407-728d-ae25-5561b16f22a2','Y',0,'N','Y','N','N')
;

-- 23 de set. de 2026 16:29:54 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_ClientSecret VARCHAR(500) NOT NULL
;

-- 23 de set. de 2026 16:30:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802708,0,'URL Base do Webhook',800112,'LBR_WebhookBaseURL',500,'N','N','Y','N','N',0,'N',40,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:30:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:30:28','YYYY-MM-DD HH24:MI:SS'),10,800980,'Y','N','LBR','N','N','N','Y','01a0cfbf-8067-739e-be54-20370546e774','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:30:30 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_WebhookBaseURL VARCHAR(500) NOT NULL
;

-- 23 de set. de 2026 16:31:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802709,0,'Segredo do Webhook',800112,'LBR_WebhookSecret',128,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:31:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:31:18','YYYY-MM-DD HH24:MI:SS'),10,800981,'Y','N','LBR','N','N','N','N','01a0cfc0-4469-74a4-8c81-be01b057bc10','Y',0,'N','Y','N','N')
;

-- 23 de set. de 2026 16:31:20 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_WebhookSecret VARCHAR(128) NOT NULL
;

-- 23 de set. de 2026 16:32:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802710,0,'URL do Token',800112,'LBR_TokenURL',500,'N','N','N','N','N',0,'N',40,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:32:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:32:22','YYYY-MM-DD HH24:MI:SS'),10,800982,'Y','N','LBR','N','N','N','Y','01a0cfc1-3edf-7acb-8335-318120a3b07f','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:32:24 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_TokenURL VARCHAR(500) DEFAULT NULL 
;

-- 23 de set. de 2026 16:32:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802711,0,'URL Base da API',800112,'LBR_APIBaseURL',500,'N','N','N','N','N',0,'N',40,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:32:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:32:55','YYYY-MM-DD HH24:MI:SS'),10,800983,'Y','N','LBR','N','N','N','Y','01a0cfc1-be20-796b-bd5e-2e9543119df1','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:32:57 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD COLUMN LBR_APIBaseURL VARCHAR(500) DEFAULT NULL 
;

-- 23 de set. de 2026 16:33:52 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (800039,'Configuração da Integração (RTC/Fisco)',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:51','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','N','N','N','01a0cfc2-99e5-718a-9011-5505c18be9c4')
;

-- 23 de set. de 2026 16:33:52 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800121,'Configuração da Integração (RTC/Fisco)',800039,10,'Y',800112,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:52','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR_RTCFiscoConfig.Created DESC','N',0,'N','LBR','Y','N','01a0cfc2-9bfa-7bb9-b64c-39780f1054b9')
;

-- 23 de set. de 2026 16:33:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802755,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800121,802695,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:52','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-9dd6-7d6d-a27f-4ebac2b691c8','N',2)
;

-- 23 de set. de 2026 16:33:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (802756,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800121,802696,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:53','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-9f71-75de-9685-91c2cbce0746','Y','N',4,2)
;

-- 23 de set. de 2026 16:33:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802757,'Configuração da Integração (RTC/Fisco)',800121,802702,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:53','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-a12d-7e5a-8a2a-4eb47b3e6407','N',2)
;

-- 23 de set. de 2026 16:33:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802758,'LBR_RTCFiscoConfig_UU',800121,802703,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-a2c7-7fa5-a488-b272809aa36c','N',2)
;

-- 23 de set. de 2026 16:33:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802759,'CNPJ Base',800121,802704,'Y',8,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-a481-7e47-a950-603ef0ac9e51','Y',10,2)
;

-- 23 de set. de 2026 16:33:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802760,'Tributo',800121,802705,'Y',3,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-a628-799c-96de-62ba1703045c','Y',20,2)
;

-- 23 de set. de 2026 16:33:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802761,'Client ID',800121,802706,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:55','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-a861-768d-92c0-1cb1cbdfa3ff','Y',30,5)
;

-- 23 de set. de 2026 16:33:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802762,'Client Secret',800121,802707,'Y',500,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:55','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-aa41-7fd8-ad5f-95b93f281368','Y',40,5)
;

-- 23 de set. de 2026 16:33:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802763,'URL Base do Webhook',800121,802708,'Y',500,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-abfa-73be-bb96-bf1daffdcd98','Y',50,5)
;

-- 23 de set. de 2026 16:33:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802764,'Segredo do Webhook',800121,802709,'Y',128,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-ad99-7dbf-b1b5-e8ccbaabbcb7','Y',60,5)
;

-- 23 de set. de 2026 16:33:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802765,'URL do Token',800121,802710,'Y',500,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:57','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-af31-7367-a405-8040030b6fe9','Y',70,5)
;

-- 23 de set. de 2026 16:33:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802766,'URL Base da API',800121,802711,'Y',500,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:57','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-b0ce-705f-866e-007010c6c5ce','Y',80,5)
;

-- 23 de set. de 2026 16:33:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802767,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800121,802701,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:58','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfc2-b26a-741e-b898-7c20cf50db7b','Y',90,2,2)
;

-- 23 de set. de 2026 16:33:59 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,AD_Menu_UU) VALUES (800077,'Configuração da Integração (RTC/Fisco)','W',800039,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:33:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:33:58','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR','01a0cfc2-b463-791d-a0df-09d38ccca5c3')
;

-- 23 de set. de 2026 16:33:59 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800077, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800077)
;

-- 23 de set. de 2026 16:33:59 BRT
UPDATE AD_Table SET AD_Window_ID=800039,Updated=TO_TIMESTAMP('2026-09-23 16:33:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800112
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='Tenant', Description='Tenant for this installation.', Help='A Tenant is a company or a legal entity. You cannot share data between Tenants.', SeqNo=10, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802755
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within tenant', Help='An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.', SeqNo=20, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802756
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=30, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802767
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='CNPJ Base', Description=NULL, Help=NULL, SeqNo=40, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802759
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='Tributo', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=50, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802760
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='Client ID', Description=NULL, Help=NULL, SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802761
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='Client Secret', Description=NULL, Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802762
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='URL Base do Webhook', Description=NULL, Help=NULL, SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802763
;

-- 23 de set. de 2026 16:35:11 BRT
UPDATE AD_Field SET Name='Segredo do Webhook', Description=NULL, Help=NULL, SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802764
;

-- 23 de set. de 2026 16:35:12 BRT
UPDATE AD_Field SET Name='URL do Token', Description=NULL, Help=NULL, SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802765
;

-- 23 de set. de 2026 16:35:12 BRT
UPDATE AD_Field SET Name='URL Base da API', Description=NULL, Help=NULL, SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802766
;

-- 23 de set. de 2026 16:35:12 BRT
UPDATE AD_Field SET Name='Configuração da Integração (RTC/Fisco)', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802757
;

-- 23 de set. de 2026 16:35:12 BRT
UPDATE AD_Field SET Name='LBR_RTCFiscoConfig_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:35:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802758
;

-- 23 de set. de 2026 16:35:55 BRT
UPDATE AD_Field SET IsEncrypted='Y',Updated=TO_TIMESTAMP('2026-09-23 16:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802762
;

-- 23 de set. de 2026 16:36:10 BRT
UPDATE AD_Field SET IsEncrypted='Y',Updated=TO_TIMESTAMP('2026-09-23 16:36:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802764
;

-- 23 de set. de 2026 16:37:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2,Updated=TO_TIMESTAMP('2026-09-23 16:37:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 23 de set. de 2026 16:37:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3,Updated=TO_TIMESTAMP('2026-09-23 16:37:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 23 de set. de 2026 16:37:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4,Updated=TO_TIMESTAMP('2026-09-23 16:37:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 23 de set. de 2026 16:37:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5,Updated=TO_TIMESTAMP('2026-09-23 16:37:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800077
;

-- 23 de set. de 2026 16:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4,Updated=TO_TIMESTAMP('2026-09-23 16:37:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800077
;

-- 23 de set. de 2026 16:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5,Updated=TO_TIMESTAMP('2026-09-23 16:37:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 23 de set. de 2026 16:40:47 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800113,'Request (RTC/Fisco)','LBR_RTCFiscoRequest',0,'2',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:40:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:40:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','N','L','N','Y','01a0cfc8-f062-7997-a97a-ad043b0bc19d','N','N','N','N','N','N','N')
;

-- 23 de set. de 2026 16:40:47 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_RTCFiscoRequest',1000000,'N','N','Table LBR_RTCFiscoRequest','Y','Y',0,0,TO_TIMESTAMP('2026-09-23 16:40:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:40:47','YYYY-MM-DD HH24:MI:SS'),10,800727,'Y',1000000,1,200000,'01a0cfc8-f1df-78ac-b775-9ca0a8b24997')
;

-- 23 de set. de 2026 16:41:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802712,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800113,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:11','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a0cfc9-50c2-75c3-b2a7-df183db1c354','N')
;

-- 23 de set. de 2026 16:41:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802713,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800113,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:12','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a0cfc9-526a-717d-95c6-b48b8f0311c2','N')
;

-- 23 de set. de 2026 16:41:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802714,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800113,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:12','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a0cfc9-53fb-7154-9155-1a7fd0a92314','N')
;

-- 23 de set. de 2026 16:41:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802715,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800113,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:13','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a0cfc9-5594-7d15-8fdf-87f5b156e516','N')
;

-- 23 de set. de 2026 16:41:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802716,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800113,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:13','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a0cfc9-572a-7c95-8aef-8397b4292a5a','N')
;

-- 23 de set. de 2026 16:41:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802717,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800113,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:13','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a0cfc9-58c0-7c61-bbcb-6bd7e7e2899e','N')
;

-- 23 de set. de 2026 16:41:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802718,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800113,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:14','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a0cfc9-5a61-7dc1-ba14-3c4b0c1d5538','N')
;

-- 23 de set. de 2026 16:41:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801026,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoRequest_ID','Request (RTC/Fisco)','Request (RTC/Fisco)','LBR','01a0cfc9-5bfd-77a0-8067-7077abc9d217')
;

-- 23 de set. de 2026 16:41:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802719,0.0,'Request (RTC/Fisco)',800113,'LBR_RTCFiscoRequest_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:15','YYYY-MM-DD HH24:MI:SS'),10,801026,'N','N','LBR','N','01a0cfc9-5d6d-7ae8-9e1d-3956e9da6b71','N')
;

-- 23 de set. de 2026 16:41:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801027,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoRequest_UU','LBR_RTCFiscoRequest_UU','LBR_RTCFiscoRequest_UU','LBR','01a0cfc9-5f2e-7321-b01f-c6209ce488ab')
;

-- 23 de set. de 2026 16:41:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802720,0.0,'LBR_RTCFiscoRequest_UU',800113,'LBR_RTCFiscoRequest_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:41:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:41:15','YYYY-MM-DD HH24:MI:SS'),10,801027,'Y','N','LBR','N','01a0cfc9-60b7-7879-98c9-0fa8863ad3a4','N')
;

-- 23 de set. de 2026 16:41:16 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800200,'01a0cfc9-6261-77eb-9e05-dcb3d7233749',TO_TIMESTAMP('2026-09-23 16:41:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_RTCFiscoRequest_UU_idx',TO_TIMESTAMP('2026-09-23 16:41:16','YYYY-MM-DD HH24:MI:SS'),10,800113,'Y','Y','N','N')
;

-- 23 de set. de 2026 16:41:17 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800233,'01a0cfc9-63fa-7ec6-9b1f-a6644e76f0cf',TO_TIMESTAMP('2026-09-23 16:41:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-23 16:41:16','YYYY-MM-DD HH24:MI:SS'),10,802720,800200,10)
;

-- 23 de set. de 2026 16:41:32 BRT
UPDATE AD_Column SET DefaultValue='0', IsAllowCopy='N',Updated=TO_TIMESTAMP('2026-09-23 16:41:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802713
;

-- 23 de set. de 2026 16:41:41 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRRTCFiscoRequest', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802712
;

-- 23 de set. de 2026 16:41:41 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRRTCFiscoRequest', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802713
;

-- 23 de set. de 2026 16:41:41 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRRTCFiscoRequest', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802715
;

-- 23 de set. de 2026 16:41:41 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRRTCFiscoRequest', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802717
;

-- 23 de set. de 2026 16:41:41 BRT
CREATE TABLE LBR_RTCFiscoRequest (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) DEFAULT 0 NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_RTCFiscoRequest_ID NUMERIC(10) NOT NULL, LBR_RTCFiscoRequest_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_RTCFiscoRequest_Key PRIMARY KEY (LBR_RTCFiscoRequest_ID), CONSTRAINT LBR_RTCFiscoRequest_UU_idx UNIQUE (LBR_RTCFiscoRequest_UU))
;

-- 23 de set. de 2026 16:41:41 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD CONSTRAINT ADClient_LBRRTCFiscoRequest FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:41:41 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD CONSTRAINT ADOrg_LBRRTCFiscoRequest FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:41:41 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD CONSTRAINT CreatedBy_LBRRTCFiscoRequest FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:41:41 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD CONSTRAINT UpdatedBy_LBRRTCFiscoRequest FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:43:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802721,0,'Configuração da Integração (RTC/Fisco)',800113,'LBR_RTCFiscoConfig_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:43:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:43:58','YYYY-MM-DD HH24:MI:SS'),10,801024,'N','N','LBR','N','N','N','Y','01a0cfcb-dabb-753e-be2e-018556447b72','Y',0,'N','N','N','N','N')
;

-- 23 de set. de 2026 16:43:59 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRRTCFiscoConfig_LBRRTCFiscoRequest', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-23 16:43:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802721
;

-- 23 de set. de 2026 16:43:59 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_RTCFiscoConfig_ID NUMERIC(10) NOT NULL
;

-- 23 de set. de 2026 16:43:59 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD CONSTRAINT LBRRTCFiscoConfig_LBRRTCFiscoRequest FOREIGN KEY (LBR_RTCFiscoConfig_ID) REFERENCES lbr_rtcfiscoconfig(lbr_rtcfiscoconfig_id) DEFERRABLE INITIALLY DEFERRED
;

-- 23 de set. de 2026 16:44:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802722,0,'Tributo',800113,'LBR_RTCTaxType',3,'N','N','Y','N','Y',0,'N',17,800119,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:44:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:44:45','YYYY-MM-DD HH24:MI:SS'),10,800977,'Y','N','LBR','N','N','N','Y','01a0cfcc-952d-72c8-b77c-83e210655c74','Y',0,'N','N','N','N','N')
;

-- 23 de set. de 2026 16:44:47 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_RTCTaxType VARCHAR(3) NOT NULL
;

-- 23 de set. de 2026 16:45:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802723,0,'Serviço',800113,'LBR_RTCFiscoService',5,'N','N','Y','N','N',0,'N',17,800120,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:45:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:45:40','YYYY-MM-DD HH24:MI:SS'),10,800984,'Y','N','LBR','N','N','N','Y','01a0cfcd-6ad9-7433-99c4-7e22ee6cabbd','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:45:42 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_RTCFiscoService VARCHAR(5) NOT NULL
;

-- 23 de set. de 2026 16:46:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802724,0,'Ticket da Solicitação',800113,'LBR_Ticket',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:46:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:46:10','YYYY-MM-DD HH24:MI:SS'),10,800985,'Y','N','LBR','N','N','N','Y','01a0cfcd-dffa-7cff-9df8-fbc491e38284','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:46:12 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_Ticket VARCHAR(60) DEFAULT NULL 
;

-- 23 de set. de 2026 16:46:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802725,0,'Status da Solicitação',800113,'LBR_RTCFiscoReqStatus',10,'N','N','Y','N','N',0,'N',17,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:46:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:46:56','YYYY-MM-DD HH24:MI:SS'),10,800986,'Y','N','LBR','N','N','N','Y','01a0cfce-925d-7b54-a99b-3402d09aa3d4','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:47:01 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_RTCFiscoReqStatus VARCHAR(10) NOT NULL
;

-- 23 de set. de 2026 16:47:13 BRT
UPDATE AD_Column SET AD_Reference_Value_ID=800121,Updated=TO_TIMESTAMP('2026-09-23 16:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802725
;

-- 23 de set. de 2026 16:47:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802726,0,'Data da Solicitação',800113,'LBR_DateRequested',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:47:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:47:40','YYYY-MM-DD HH24:MI:SS'),10,800987,'Y','N','LBR','N','N','N','Y','01a0cfcf-3f06-7e6c-9a44-c2f093f1dc72','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:47:42 BRT
INSERT INTO t_alter_column values('lbr_rtcfiscorequest','LBR_RTCFiscoReqStatus','VARCHAR(10)',null,null)
;

-- 23 de set. de 2026 16:47:42 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_DateRequested TIMESTAMP NOT NULL
;

-- 23 de set. de 2026 16:48:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802727,0,'Tempo Estimado (Segundos)',800113,'LBR_TEASeconds',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:48:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:48:09','YYYY-MM-DD HH24:MI:SS'),10,800988,'Y','N','LBR','N','N','N','Y','01a0cfcf-b0dd-7bf7-93ed-3b00b8c5ab23','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:48:11 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_TEASeconds NUMERIC(10) DEFAULT NULL 
;

-- 23 de set. de 2026 16:48:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802728,0,'URL Assinada',800113,'LBR_SignedURL',4000,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:48:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:48:59','YYYY-MM-DD HH24:MI:SS'),10,800989,'Y','N','LBR','N','N','N','N','01a0cfd0-7324-7a72-9762-f3af15ba7feb','Y',0,'N','Y','N','N')
;

-- 23 de set. de 2026 16:49:01 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_SignedURL VARCHAR(4000) DEFAULT NULL 
;

-- 23 de set. de 2026 16:49:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802729,0,'Expiração da URL Assinada',800113,'LBR_SignedURLExpiresAt',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:49:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:49:38','YYYY-MM-DD HH24:MI:SS'),10,800990,'Y','N','LBR','N','N','N','Y','01a0cfd1-0d85-7d50-b710-f7d016cb1de9','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:49:40 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_SignedURLExpiresAt TIMESTAMP DEFAULT NULL 
;

-- 23 de set. de 2026 16:50:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802730,0,'Gerado em',800113,'LBR_GeneratedAt',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:50:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:50:02','YYYY-MM-DD HH24:MI:SS'),10,800991,'Y','N','LBR','N','N','N','Y','01a0cfd1-6a5e-75f7-8fe1-37a6cd93b654','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:50:04 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_GeneratedAt TIMESTAMP DEFAULT NULL 
;

-- 23 de set. de 2026 16:50:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802731,0,'Código do Erro',800113,'LBR_ErrorCode',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:50:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:50:25','YYYY-MM-DD HH24:MI:SS'),10,800992,'Y','N','LBR','N','N','N','Y','01a0cfd1-c537-7a24-b2d2-c7608d833f93','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:50:27 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_ErrorCode VARCHAR(20) DEFAULT NULL 
;

-- 23 de set. de 2026 16:50:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802732,0,'Mensagem do Erro',800113,'LBR_ErrorMsg',2000,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:50:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:50:52','YYYY-MM-DD HH24:MI:SS'),10,800993,'Y','N','LBR','N','N','N','Y','01a0cfd2-2e80-735b-9e5c-bd1c6cae0308','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:50:54 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN LBR_ErrorMsg VARCHAR(2000) DEFAULT NULL 
;

-- 23 de set. de 2026 16:51:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802733,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800113,'Processed','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:51:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:51:53','YYYY-MM-DD HH24:MI:SS'),10,1047,'Y','N','LBR','N','N','N','Y','01a0cfd3-1c07-7662-a4d3-4ed5ec3116e5','Y',0,'N','N','N','N')
;

-- 23 de set. de 2026 16:51:55 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD COLUMN Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 23 de set. de 2026 16:53:18 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,AD_Column_ID,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800122,'Request (RTC/Fisco)',800039,20,'Y',800113,0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:18','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N',802721,'LBR_RTCFiscoRequest.Created DESC','N',1,'N','LBR','Y','N','01a0cfd4-6590-7889-aeb2-34daf4e669c1')
;

-- 23 de set. de 2026 16:53:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802768,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800122,802712,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-678f-743d-b0d4-19d72aa56045','N',2)
;

-- 23 de set. de 2026 16:53:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (802769,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800122,802713,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-6933-77dc-92ba-33ffbae581ca','Y','N',4,2)
;

-- 23 de set. de 2026 16:53:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802770,'Configuração da Integração (RTC/Fisco)',800122,802721,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-6acb-704b-a551-af3a5e65a56e','Y',10,2)
;

-- 23 de set. de 2026 16:53:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802771,'Request (RTC/Fisco)',800122,802719,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-6c5c-7627-a831-7c6379032d59','N',2)
;

-- 23 de set. de 2026 16:53:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802772,'LBR_RTCFiscoRequest_UU',800122,802720,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:20','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-6df7-71a1-bf3b-b41d0fd23a0e','N',2)
;

-- 23 de set. de 2026 16:53:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802773,'Tributo',800122,802722,'Y',3,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:20','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7002-7200-a16f-59a9e1595fa4','Y',20,2)
;

-- 23 de set. de 2026 16:53:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802774,'Serviço',800122,802723,'Y',5,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-71f6-7668-a5f5-98a85308a0d9','Y',30,2)
;

-- 23 de set. de 2026 16:53:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802775,'Ticket da Solicitação',800122,802724,'Y',60,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7394-758f-b18e-492cce19d12c','Y',40,5)
;

-- 23 de set. de 2026 16:53:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802776,'Status da Solicitação',800122,802725,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7590-7612-b74b-09bb75675d71','Y',50,2)
;

-- 23 de set. de 2026 16:53:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802777,'Data da Solicitação',800122,802726,'Y',7,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7728-7fc2-beaa-bf2621a2b36a','Y',60,2)
;

-- 23 de set. de 2026 16:53:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802778,'Tempo Estimado (Segundos)',800122,802727,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-78a8-70a5-8b6a-bc331c5f5d3c','Y',70,2)
;

-- 23 de set. de 2026 16:53:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802779,'URL Assinada',800122,802728,'Y',4000,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7a61-728c-a3c8-40597e7a8cc4','Y',80,5)
;

-- 23 de set. de 2026 16:53:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802780,'Expiração da URL Assinada',800122,802729,'Y',7,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7bf9-74c6-815c-cfc451f71e7d','Y',90,2)
;

-- 23 de set. de 2026 16:53:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802781,'Gerado em',800122,802730,'Y',7,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7d8f-7f8d-8f74-0994dfa304b4','Y',100,2)
;

-- 23 de set. de 2026 16:53:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802782,'Código do Erro',800122,802731,'Y',20,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-7f32-79dc-ab9b-3f24b202dfeb','Y',110,2)
;

-- 23 de set. de 2026 16:53:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (802783,'Mensagem do Erro',800122,802732,'Y',2000,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-80d8-7ccb-a2ce-ebab9f168336','Y',120,5,3)
;

-- 23 de set. de 2026 16:53:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802784,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800122,802733,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:25','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','01a0cfd4-825c-7c4e-9a8d-3595fb4e3f59','Y',130,2,2)
;

-- 23 de set. de 2026 16:53:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802785,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800122,802718,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-23 16:53:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-23 16:53:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0cfd4-8410-7207-8083-909c964a6995','Y',140,2,2)
;

-- 23 de set. de 2026 16:53:26 BRT
UPDATE AD_Table SET AD_Window_ID=800039,Updated=TO_TIMESTAMP('2026-09-23 16:53:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800113
;

-- 23 de set. de 2026 16:54:29 BRT
UPDATE AD_Tab SET IsSingleRow='N', IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2026-09-23 16:54:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800122
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=40, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802785
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Processed', Description='The document has been processed', Help='The Processed checkbox indicates that a document has been processed.', IsDisplayed='Y', SeqNo=50, XPosition=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802784
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Tributo', Description=NULL, Help=NULL, SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802773
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Serviço', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=70, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802774
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Ticket da Solicitação', Description=NULL, Help=NULL, SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802775
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Status da Solicitação', Description=NULL, Help=NULL, SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802776
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Data da Solicitação', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=100, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802777
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Tempo Estimado (Segundos)', Description=NULL, Help=NULL, SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802778
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='URL Assinada', Description=NULL, Help=NULL, SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802779
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Expiração da URL Assinada', Description=NULL, Help=NULL, SeqNo=130, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802780
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Gerado em', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=140, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802781
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Código do Erro', Description=NULL, Help=NULL, SeqNo=150, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802782
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Mensagem do Erro', Description=NULL, Help=NULL, SeqNo=160, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802783
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='LBR_RTCFiscoRequest_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802772
;

-- 23 de set. de 2026 16:56:00 BRT
UPDATE AD_Field SET Name='Request (RTC/Fisco)', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-23 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802771
;

-- 23 de set. de 2026 16:57:19 BRT
UPDATE AD_Field SET IsEncrypted='Y',Updated=TO_TIMESTAMP('2026-09-23 16:57:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802779
;

-- 24 de set. de 2026 10:04:54 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800114,'Apuração de IBS/CBS (RTC/Fisco)','LBR_RTCFiscoApuracao',0,'2',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:04:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:04:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','N','L','N','Y','01a0d384-dc53-728d-87b1-e9e3e5676c9b','N','N','N','N','N','N','N')
;

-- 24 de set. de 2026 10:04:55 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_RTCFiscoApuracao',1000000,'N','N','Table LBR_RTCFiscoApuracao','Y','Y',0,0,TO_TIMESTAMP('2026-09-24 10:04:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:04:54','YYYY-MM-DD HH24:MI:SS'),10,800728,'Y',1000000,1,200000,'01a0d384-de54-7f24-89a6-cd99046717a5')
;

-- 24 de set. de 2026 10:05:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802734,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800114,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:19','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a0d385-3ce0-740a-a998-c895d2c1f1f8','N')
;

-- 24 de set. de 2026 10:05:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802735,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800114,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:19','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a0d385-3eaa-7139-8673-49bf5eb25b3f','N')
;

-- 24 de set. de 2026 10:05:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802736,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800114,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:20','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a0d385-405d-7a75-a187-7dccd9f48e84','N')
;

-- 24 de set. de 2026 10:05:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802737,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800114,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:20','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a0d385-41ee-73c0-8e7f-2ab7351ffd6c','N')
;

-- 24 de set. de 2026 10:05:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802738,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800114,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:20','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a0d385-4388-7743-ac6c-408c1381ab44','N')
;

-- 24 de set. de 2026 10:05:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802739,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800114,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:21','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a0d385-4522-74c0-a701-65fb0ead3e2e','N')
;

-- 24 de set. de 2026 10:05:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802740,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800114,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:21','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a0d385-46ad-7434-b913-4293e5abda92','N')
;

-- 24 de set. de 2026 10:05:22 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801028,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:22','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoApuracao_ID','Apuração de IBS/CBS (RTC/Fisco)','Apuração de IBS/CBS (RTC/Fisco)','LBR','01a0d385-4858-7f9c-9914-f37b1956c1d0')
;

-- 24 de set. de 2026 10:05:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802741,0.0,'Apuração de IBS/CBS (RTC/Fisco)',800114,'LBR_RTCFiscoApuracao_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:22','YYYY-MM-DD HH24:MI:SS'),10,801028,'N','N','LBR','N','01a0d385-49e4-72e8-8edb-d90f6350dc5a','N')
;

-- 24 de set. de 2026 10:05:23 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801029,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:22','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoApuracao_UU','LBR_RTCFiscoApuracao_UU','LBR_RTCFiscoApuracao_UU','LBR','01a0d385-4b88-76d4-937d-7729f09c84e9')
;

-- 24 de set. de 2026 10:05:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802742,0.0,'LBR_RTCFiscoApuracao_UU',800114,'LBR_RTCFiscoApuracao_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:05:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:05:23','YYYY-MM-DD HH24:MI:SS'),10,801029,'Y','N','LBR','N','01a0d385-4d22-75fd-bee3-957d74bdd774','N')
;

-- 24 de set. de 2026 10:05:24 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800201,'01a0d385-4eaf-7c91-a3af-de05ded4425b',TO_TIMESTAMP('2026-09-24 10:05:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_RTCFiscoApuracao_UU_idx',TO_TIMESTAMP('2026-09-24 10:05:23','YYYY-MM-DD HH24:MI:SS'),10,800114,'Y','Y','N','N')
;

-- 24 de set. de 2026 10:05:25 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800234,'01a0d385-54ec-7f62-9c44-6fde3469669a',TO_TIMESTAMP('2026-09-24 10:05:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 10:05:24','YYYY-MM-DD HH24:MI:SS'),10,802742,800201,10)
;

-- 24 de set. de 2026 10:05:39 BRT
UPDATE AD_Column SET DefaultValue='0', IsAllowCopy='N',Updated=TO_TIMESTAMP('2026-09-24 10:05:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802735
;

-- 24 de set. de 2026 10:05:50 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRRTCFiscoApuracao', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:05:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802734
;

-- 24 de set. de 2026 10:05:50 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRRTCFiscoApuracao', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:05:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802735
;

-- 24 de set. de 2026 10:05:50 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRRTCFiscoApuracao', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:05:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802737
;

-- 24 de set. de 2026 10:05:50 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRRTCFiscoApuracao', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:05:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802739
;

-- 24 de set. de 2026 10:05:50 BRT
CREATE TABLE LBR_RTCFiscoApuracao (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) DEFAULT 0 NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_RTCFiscoApuracao_ID NUMERIC(10) NOT NULL, LBR_RTCFiscoApuracao_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_RTCFiscoApuracao_Key PRIMARY KEY (LBR_RTCFiscoApuracao_ID), CONSTRAINT LBR_RTCFiscoApuracao_UU_idx UNIQUE (LBR_RTCFiscoApuracao_UU))
;

-- 24 de set. de 2026 10:05:50 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD CONSTRAINT ADClient_LBRRTCFiscoApuracao FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:05:50 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD CONSTRAINT ADOrg_LBRRTCFiscoApuracao FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:05:50 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD CONSTRAINT CreatedBy_LBRRTCFiscoApuracao FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:05:50 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD CONSTRAINT UpdatedBy_LBRRTCFiscoApuracao FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:06:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802743,0,'CNPJ Base',800114,'LBR_CNPJBase',8,'N','N','Y','N','Y',2,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:06:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:06:26','YYYY-MM-DD HH24:MI:SS'),10,800976,'Y','N','LBR','N','N','N','Y','01a0d386-438f-7342-9ea7-24ced09f8e4f','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 10:06:28 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_CNPJBase VARCHAR(8) NOT NULL
;

-- 24 de set. de 2026 10:07:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802744,0,'Tributo',800114,'LBR_RTCTaxType',3,'N','N','Y','N','Y',3,'N',17,800119,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:07:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:07:04','YYYY-MM-DD HH24:MI:SS'),10,800977,'Y','N','LBR','N','N','N','Y','01a0d386-d86b-757d-a7a3-deaa6da81768','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 10:07:06 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_RTCTaxType VARCHAR(3) NOT NULL
;

-- 24 de set. de 2026 10:07:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802745,0,'Período de Apuração',800114,'LBR_PA',7,'N','N','Y','N','Y',1,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:07:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:07:39','YYYY-MM-DD HH24:MI:SS'),10,800994,'Y','N','LBR','N','N','N','Y','01a0d387-6213-7dbe-8866-8de63388874e','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:07:41 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_PA VARCHAR(7) NOT NULL
;

-- 24 de set. de 2026 10:08:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802746,0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',800114,'C_Period_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:08:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:08:16','YYYY-MM-DD HH24:MI:SS'),10,206,'Y','N','LBR','N','N','N','Y','01a0d387-f2dc-7c0d-bc8d-590f7253a3de','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:08:18 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRRTCFiscoApuracao', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802746
;

-- 24 de set. de 2026 10:08:18 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN C_Period_ID NUMERIC(10) DEFAULT NULL 
;

-- 24 de set. de 2026 10:08:18 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD CONSTRAINT CPeriod_LBRRTCFiscoApuracao FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:09:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802747,0,'Total de Débito',800114,'LBR_TotalDebit',12,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:09:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:09:42','YYYY-MM-DD HH24:MI:SS'),10,800995,'Y','N','LBR','N','N','N','Y','01a0d389-4349-7dc2-ad16-84726555d09a','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:09:44 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_TotalDebit NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:10:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802748,0,'Total de Crédito',800114,'LBR_TotalCredit',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:10:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:10:16','YYYY-MM-DD HH24:MI:SS'),10,800996,'Y','N','LBR','N','N','N','Y','01a0d389-c4f1-7f79-a952-d494178d432f','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:10:17 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_TotalCredit NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:10:29 BRT
UPDATE AD_Column SET FieldLength=10,Updated=TO_TIMESTAMP('2026-09-24 10:10:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802747
;

-- 24 de set. de 2026 10:10:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802749,0,'Total Pago',800114,'LBR_TotalPaid',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:10:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:10:51','YYYY-MM-DD HH24:MI:SS'),10,800997,'Y','N','LBR','N','N','N','Y','01a0d38a-4d4d-7150-bcaf-33c1d33111a1','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:10:52 BRT
INSERT INTO t_alter_column values('lbr_rtcfiscoapuracao','LBR_TotalDebit','NUMERIC',null,'NULL')
;

-- 24 de set. de 2026 10:10:52 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_TotalPaid NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:11:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802750,0,'Saldo',800114,'LBR_Balance',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:11:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:11:13','YYYY-MM-DD HH24:MI:SS'),10,800998,'Y','N','LBR','N','N','N','Y','01a0d38a-a426-7f9f-b7b1-18d8d6c095fe','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:11:14 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_Balance NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:11:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802751,0,'Atualizado em (Fisco)',800114,'LBR_DateUpdated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:11:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:11:38','YYYY-MM-DD HH24:MI:SS'),10,800999,'Y','N','LBR','N','N','N','Y','01a0d38b-0759-7658-8056-364ca6ca5ab7','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:11:40 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD COLUMN LBR_DateUpdated TIMESTAMP DEFAULT NULL 
;

-- 24 de set. de 2026 10:12:06 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (800040,'Apuração de IBS/CBS (RTC/Fisco)',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:05','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','N','N','N','01a0d38b-7152-77bc-8b2b-b5e750203cb6')
;

-- 24 de set. de 2026 10:12:06 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800123,'Apuração de IBS/CBS (RTC/Fisco)',800040,10,'Y',800114,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:06','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR_RTCFiscoApuracao.Created DESC','N',0,'N','LBR','Y','N','01a0d38b-73b4-728b-bf7c-ba9bd0b23c65')
;

-- 24 de set. de 2026 10:12:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802786,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800123,802734,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-75b9-78fe-9805-41b99b98c4da','N',2)
;

-- 24 de set. de 2026 10:12:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (802787,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800123,802735,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-7749-7380-b3eb-ed7009ecd4df','Y','N',4,2)
;

-- 24 de set. de 2026 10:12:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802788,'Apuração de IBS/CBS (RTC/Fisco)',800123,802741,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-78bd-7f87-9bd1-4b85d852925e','N',2)
;

-- 24 de set. de 2026 10:12:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802789,'LBR_RTCFiscoApuracao_UU',800123,802742,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-7a84-74ed-b1a7-2b82c485b6c5','N',2)
;

-- 24 de set. de 2026 10:12:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802790,'CNPJ Base',800123,802743,'Y',8,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-7c1f-7810-803e-d76402afbcd0','Y',10,2)
;

-- 24 de set. de 2026 10:12:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802791,'Tributo',800123,802744,'Y',3,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-7d90-7aa9-817d-72a387d6fe87','Y',20,2)
;

-- 24 de set. de 2026 10:12:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802792,'Período de Apuração',800123,802745,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-7f42-779d-a75a-7b8d1b255058','Y',30,2)
;

-- 24 de set. de 2026 10:12:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802793,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',800123,802746,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-80ec-767e-b211-2b3e43debebe','Y',40,2)
;

-- 24 de set. de 2026 10:12:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802794,'Total de Débito',800123,802747,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-8286-74c0-9f7c-49ebf4df0de5','Y',50,2)
;

-- 24 de set. de 2026 10:12:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802795,'Total de Crédito',800123,802748,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-8420-7716-b0db-79b7618ec086','Y',60,2)
;

-- 24 de set. de 2026 10:12:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802796,'Total Pago',800123,802749,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-85bc-7566-9988-c3da1cdd696a','Y',70,2)
;

-- 24 de set. de 2026 10:12:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802797,'Saldo',800123,802750,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-8746-7099-bd72-3636a4f96640','Y',80,2)
;

-- 24 de set. de 2026 10:12:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802798,'Atualizado em (Fisco)',800123,802751,'Y',7,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-88eb-7525-bf86-a00cbf86abae','Y',90,2)
;

-- 24 de set. de 2026 10:12:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802799,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800123,802740,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d38b-8a86-7128-b55e-bd3b736c6bca','Y',100,2,2)
;

-- 24 de set. de 2026 10:12:13 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,AD_Menu_UU) VALUES (800078,'Apuração de IBS/CBS (RTC/Fisco)','W',800040,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:12:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:12:12','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR','01a0d38b-8c1e-7247-b4dc-223392bf2702')
;

-- 24 de set. de 2026 10:12:13 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800078, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800078)
;

-- 24 de set. de 2026 10:12:13 BRT
UPDATE AD_Table SET AD_Window_ID=800040,Updated=TO_TIMESTAMP('2026-09-24 10:12:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800114
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=30, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802799
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='CNPJ Base', Description=NULL, Help=NULL, SeqNo=40, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802790
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Tributo', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=50, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802791
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Período de Apuração', Description=NULL, Help=NULL, SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802792
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Period', Description='Period of the Calendar', Help='The Period indicates an exclusive range of dates for a calendar.', IsDisplayed='Y', SeqNo=70, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802793
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Total de Débito', Description=NULL, Help=NULL, SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802794
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Total de Crédito', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=90, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802795
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Total Pago', Description=NULL, Help=NULL, SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802796
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Saldo', Description=NULL, Help=NULL, SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802797
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Atualizado em (Fisco)', Description=NULL, Help=NULL, SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802798
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='Apuração de IBS/CBS (RTC/Fisco)', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802788
;

-- 24 de set. de 2026 10:13:41 BRT
UPDATE AD_Field SET Name='LBR_RTCFiscoApuracao_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 10:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802789
;

-- 24 de set. de 2026 10:15:01 BRT
UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2026-09-24 10:15:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800123
;

-- 24 de set. de 2026 10:16:18 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800115,'Doc. de Apuração de IBS/CBS (RTC/Fisco)','LBR_RTCFiscoApurDoc',0,'2',0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','N','L','N','Y','01a0d38f-49e4-7958-897b-e3ec33d60fa4','N','N','N','N','N','N','N')
;

-- 24 de set. de 2026 10:16:18 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_RTCFiscoApurDoc',1000000,'N','N','Table LBR_RTCFiscoApurDoc','Y','Y',0,0,TO_TIMESTAMP('2026-09-24 10:16:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:18','YYYY-MM-DD HH24:MI:SS'),10,800729,'Y',1000000,1,200000,'01a0d38f-4b7e-752c-9015-2700226137a7')
;

-- 24 de set. de 2026 10:16:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802752,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800115,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:44','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a0d38f-b113-7764-bc61-ebfaf6c37e29','N')
;

-- 24 de set. de 2026 10:16:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802753,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800115,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:44','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a0d38f-b2ad-72a9-97e4-edc94651689b','N')
;

-- 24 de set. de 2026 10:16:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802754,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800115,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:45','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a0d38f-b447-7da7-98f1-18150fe48acc','N')
;

-- 24 de set. de 2026 10:16:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802755,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800115,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:45','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a0d38f-b6fc-77b9-ac97-cba84d022aa7','N')
;

-- 24 de set. de 2026 10:16:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802756,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800115,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:46','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a0d38f-b8af-71a1-8dd0-609c435f13c3','N')
;

-- 24 de set. de 2026 10:16:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802757,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800115,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:46','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a0d38f-ba47-77c1-a183-121de474acc9','N')
;

-- 24 de set. de 2026 10:16:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802758,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800115,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:47','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a0d38f-bd8d-7a05-97a8-9737259cb77e','N')
;

-- 24 de set. de 2026 10:16:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801030,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoApurDoc_ID','Doc. de Apuração de IBS/CBS (RTC/Fisco)','Doc. de Apuração de IBS/CBS (RTC/Fisco)','LBR','01a0d38f-bf14-74da-ab16-6d71c5f33244')
;

-- 24 de set. de 2026 10:16:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802759,0.0,'Doc. de Apuração de IBS/CBS (RTC/Fisco)',800115,'LBR_RTCFiscoApurDoc_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:48','YYYY-MM-DD HH24:MI:SS'),10,801030,'N','N','LBR','N','01a0d38f-c0ad-7c86-9450-e928d5fdbbae','N')
;

-- 24 de set. de 2026 10:16:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801031,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoApurDoc_UU','LBR_RTCFiscoApurDoc_UU','LBR_RTCFiscoApurDoc_UU','LBR','01a0d38f-c3a9-735a-93ed-5a943971c5f8')
;

-- 24 de set. de 2026 10:16:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802760,0.0,'LBR_RTCFiscoApurDoc_UU',800115,'LBR_RTCFiscoApurDoc_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:16:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:16:49','YYYY-MM-DD HH24:MI:SS'),10,801031,'Y','N','LBR','N','01a0d38f-c57b-7920-bd66-6faa68fca37c','N')
;

-- 24 de set. de 2026 10:16:50 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800202,'01a0d38f-c713-74d3-8ea1-0f25ac4bfad8',TO_TIMESTAMP('2026-09-24 10:16:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_RTCFiscoApurDoc_UU_idx',TO_TIMESTAMP('2026-09-24 10:16:49','YYYY-MM-DD HH24:MI:SS'),10,800115,'Y','Y','N','N')
;

-- 24 de set. de 2026 10:16:50 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800235,'01a0d38f-c8ad-79d8-bf5f-46664269d275',TO_TIMESTAMP('2026-09-24 10:16:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 10:16:50','YYYY-MM-DD HH24:MI:SS'),10,802760,800202,10)
;

-- 24 de set. de 2026 10:17:01 BRT
UPDATE AD_Column SET DefaultValue='0', IsAllowCopy='N',Updated=TO_TIMESTAMP('2026-09-24 10:17:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802753
;

-- 24 de set. de 2026 10:17:07 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRRTCFiscoApurDoc', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802752
;

-- 24 de set. de 2026 10:17:07 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRRTCFiscoApurDoc', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802753
;

-- 24 de set. de 2026 10:17:07 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRRTCFiscoApurDoc', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802755
;

-- 24 de set. de 2026 10:17:07 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRRTCFiscoApurDoc', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802757
;

-- 24 de set. de 2026 10:17:07 BRT
CREATE TABLE LBR_RTCFiscoApurDoc (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) DEFAULT 0 NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_RTCFiscoApurDoc_ID NUMERIC(10) NOT NULL, LBR_RTCFiscoApurDoc_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_RTCFiscoApurDoc_Key PRIMARY KEY (LBR_RTCFiscoApurDoc_ID), CONSTRAINT LBR_RTCFiscoApurDoc_UU_idx UNIQUE (LBR_RTCFiscoApurDoc_UU))
;

-- 24 de set. de 2026 10:17:07 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD CONSTRAINT ADClient_LBRRTCFiscoApurDoc FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:17:07 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD CONSTRAINT ADOrg_LBRRTCFiscoApurDoc FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:17:07 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD CONSTRAINT CreatedBy_LBRRTCFiscoApurDoc FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:17:07 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD CONSTRAINT UpdatedBy_LBRRTCFiscoApurDoc FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:18:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802761,0,'Apuração de IBS/CBS (RTC/Fisco)',800115,'LBR_RTCFiscoApuracao_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:18:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:18:02','YYYY-MM-DD HH24:MI:SS'),10,801028,'N','N','LBR','N','N','N','Y','01a0d390-e3ce-7482-afe4-fafcf471ba12','Y',0,'N','N','C','N','N')
;

-- 24 de set. de 2026 10:18:04 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRRTCFiscoApuracao_LBRRTCFiscoApurDoc', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-09-24 10:18:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802761
;

-- 24 de set. de 2026 10:18:04 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_RTCFiscoApuracao_ID NUMERIC(10) NOT NULL
;

-- 24 de set. de 2026 10:18:04 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD CONSTRAINT LBRRTCFiscoApuracao_LBRRTCFiscoApurDoc FOREIGN KEY (LBR_RTCFiscoApuracao_ID) REFERENCES lbr_rtcfiscoapuracao(lbr_rtcfiscoapuracao_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:18:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802762,0,'Request (RTC/Fisco)',800115,'LBR_RTCFiscoRequest_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:18:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:18:46','YYYY-MM-DD HH24:MI:SS'),10,801026,'Y','N','LBR','N','N','N','Y','01a0d391-8f74-7b4e-87d4-befc95b62cb6','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 10:18:48 BRT
UPDATE AD_Column SET FKConstraintName='LBRRTCFiscoRequest_LBRRTCFiscoApurDoc', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 10:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802762
;

-- 24 de set. de 2026 10:18:48 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_RTCFiscoRequest_ID NUMERIC(10) DEFAULT NULL 
;

-- 24 de set. de 2026 10:18:48 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD CONSTRAINT LBRRTCFiscoRequest_LBRRTCFiscoApurDoc FOREIGN KEY (LBR_RTCFiscoRequest_ID) REFERENCES lbr_rtcfiscorequest(lbr_rtcfiscorequest_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 10:19:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802763,0,'Tipo do Documento',800115,'LBR_RTCFiscoDocType',1,'N','N','Y','N','N',0,'N',17,800122,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:19:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:19:28','YYYY-MM-DD HH24:MI:SS'),10,801000,'Y','N','LBR','N','N','N','Y','01a0d392-310b-7314-a8cf-4775b7a9b93d','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:19:29 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_RTCFiscoDocType CHAR(1) NOT NULL
;

-- 24 de set. de 2026 10:20:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802764,0,'Origem',800115,'LBR_Origem',10,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:20:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:20:47','YYYY-MM-DD HH24:MI:SS'),10,801001,'Y','N','LBR','N','N','N','Y','01a0d393-65d8-7276-afcd-411e7857dc48','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:20:48 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_Origem NUMERIC(10) NOT NULL
;

-- 24 de set. de 2026 10:21:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802765,0,'Documento',800115,'LBR_Documento',10,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:21:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:21:11','YYYY-MM-DD HH24:MI:SS'),10,801002,'Y','N','LBR','N','N','N','Y','01a0d393-c507-740c-a519-8e2a5a217660','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:21:13 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_Documento NUMERIC(10) NOT NULL
;

-- 24 de set. de 2026 10:21:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802766,0,'Chave de Acesso do Documento',800115,'LBR_DFeChave',50,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:21:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:21:36','YYYY-MM-DD HH24:MI:SS'),10,800901,'Y','N','LBR','N','N','N','Y','01a0d394-25b7-7489-b9fa-7341d0363dea','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 10:21:37 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_DFeChave VARCHAR(50) NOT NULL
;

-- 24 de set. de 2026 10:22:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802767,0,'Data de Emissão',800115,'LBR_DateIssued',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:22:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:22:00','YYYY-MM-DD HH24:MI:SS'),10,801003,'Y','N','LBR','N','N','N','Y','01a0d394-8322-7bb9-88cf-3512f3df8f3c','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:22:01 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_DateIssued TIMESTAMP DEFAULT NULL 
;

-- 24 de set. de 2026 10:22:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802768,0,'Data de Registro',800115,'LBR_DateRegistered',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:22:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:22:25','YYYY-MM-DD HH24:MI:SS'),10,801004,'Y','N','LBR','N','N','N','Y','01a0d394-e65b-7abd-9e40-5afbf074b1c1','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:22:27 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_DateRegistered TIMESTAMP DEFAULT NULL 
;

-- 24 de set. de 2026 10:22:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802769,0,'Atualizado em (Fisco)',800115,'LBR_DateUpdated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:22:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:22:42','YYYY-MM-DD HH24:MI:SS'),10,800999,'Y','N','LBR','N','N','N','Y','01a0d395-2a0b-7112-a615-81d06edaab73','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 10:22:44 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_DateUpdated TIMESTAMP DEFAULT NULL 
;

-- 24 de set. de 2026 10:23:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802770,0,'Valor Apurado',800115,'LBR_AssessedAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:23:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:23:04','YYYY-MM-DD HH24:MI:SS'),10,801005,'Y','N','LBR','N','N','N','Y','01a0d395-7dfe-717f-a6c4-d4d0c4c57557','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:23:05 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_AssessedAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:23:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802771,0,'Excedentes',800115,'LBR_ExcessAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:23:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:23:25','YYYY-MM-DD HH24:MI:SS'),10,801006,'Y','N','LBR','N','N','N','Y','01a0d395-d069-735a-94dc-4ab9484700fa','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:23:26 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_ExcessAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:23:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802772,0,'Inapropriável',800115,'LBR_NonAppropriableAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:23:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:23:52','YYYY-MM-DD HH24:MI:SS'),10,801007,'Y','N','LBR','N','N','N','Y','01a0d396-3b2c-7278-b21a-544abc799266','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:23:54 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_NonAppropriableAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:24:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802773,0,'Suspenso',800115,'LBR_SuspendedAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:24:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:24:27','YYYY-MM-DD HH24:MI:SS'),10,801008,'Y','N','LBR','N','N','N','Y','01a0d396-c318-7dfe-8450-fbe2200407fa','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:24:29 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_SuspendedAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:24:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802774,0,'Prescrito',800115,'LBR_PrescribedAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:24:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:24:48','YYYY-MM-DD HH24:MI:SS'),10,801009,'Y','N','LBR','N','N','N','Y','01a0d397-12c8-7dd0-965b-d43df8dcf22d','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:24:49 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_PrescribedAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:25:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802775,0,'A Apropriar',800115,'LBR_ToAppropriateAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:25:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:25:12','YYYY-MM-DD HH24:MI:SS'),10,801010,'Y','N','LBR','N','N','N','Y','01a0d397-7478-7894-a524-355e811434f5','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:25:14 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_ToAppropriateAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:25:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802776,0,'Apropriado',800115,'LBR_AppropriatedAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:25:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:25:32','YYYY-MM-DD HH24:MI:SS'),10,801011,'Y','N','LBR','N','N','N','Y','01a0d397-be76-75e5-bf23-4c49e50f2ba3','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:25:33 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_AppropriatedAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:25:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802777,0,'Inutilizável',800115,'LBR_NonUsableAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:25:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:25:50','YYYY-MM-DD HH24:MI:SS'),10,801012,'Y','N','LBR','N','N','N','Y','01a0d398-0878-77e7-86bf-8d6f118b1439','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:25:52 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_NonUsableAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:26:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802778,0,'Utilizado',800115,'LBR_UsedAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:26:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:26:09','YYYY-MM-DD HH24:MI:SS'),10,801013,'Y','N','LBR','N','N','N','Y','01a0d398-5213-7e6f-a5a3-a641715c2479','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:26:11 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_UsedAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:26:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802779,0,'Restabelecido',800115,'LBR_RestoredAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:26:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:26:27','YYYY-MM-DD HH24:MI:SS'),10,801014,'Y','N','LBR','N','N','N','Y','01a0d398-96e1-70bf-89ec-1eee9eb5cb2e','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:26:28 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_RestoredAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:26:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802780,0,'Saldo Credor',800115,'LBR_CreditBalanceAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:26:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:26:44','YYYY-MM-DD HH24:MI:SS'),10,801015,'Y','N','LBR','N','N','N','Y','01a0d398-da0b-7059-be08-f91abd3796a8','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:26:46 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_CreditBalanceAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 10:27:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802781,0,'Pedido de Ressarcimento',800115,'LBR_RefundRequestAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 10:27:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 10:27:01','YYYY-MM-DD HH24:MI:SS'),10,801016,'Y','N','LBR','N','N','N','Y','01a0d399-1cde-7b5c-a0c3-dda0ca31502d','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 10:27:03 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_RefundRequestAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 11:30:23 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,AD_Column_ID,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800125,'Doc. de Apuração de IBS/CBS (RTC/Fisco)',800040,20,'Y',800115,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:22','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N',802761,'LBR_RTCFiscoApurDoc.Created DESC','N',1,'N','LBR','Y','N','01a0d3d3-1ce8-7caa-82de-5fdbcfdebdcd')
;

-- 24 de set. de 2026 11:30:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802826,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800125,802752,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-1f46-7633-a45f-0c8721474901','N',2)
;

-- 24 de set. de 2026 11:30:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (802827,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800125,802753,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-214f-7bd7-a772-098aed2b9d6f','Y','N',4,2)
;

-- 24 de set. de 2026 11:30:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802828,'Apuração de IBS/CBS (RTC/Fisco)',800125,802761,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-23b3-7080-bd9d-2200db50bc45','Y',10,2)
;

-- 24 de set. de 2026 11:30:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802829,'Doc. de Apuração de IBS/CBS (RTC/Fisco)',800125,802759,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-254d-7566-b98d-cf78252a827e','N',2)
;

-- 24 de set. de 2026 11:30:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802830,'LBR_RTCFiscoApurDoc_UU',800125,802760,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-26e7-767c-b0ef-d38c9801fd61','N',2)
;

-- 24 de set. de 2026 11:30:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802831,'Request (RTC/Fisco)',800125,802762,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-28ef-793d-9bab-b4718c06d3f4','Y',20,2)
;

-- 24 de set. de 2026 11:30:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802832,'Tipo do Documento',800125,802763,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-2ae8-7981-bb14-23de2df41fe2','Y',30,2)
;

-- 24 de set. de 2026 11:30:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802833,'Origem',800125,802764,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-2db2-79ce-a7b9-e8c55c33d31f','Y',40,2)
;

-- 24 de set. de 2026 11:30:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802834,'Documento',800125,802765,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:27','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-2f4d-74b1-83ca-fb0a60138369','Y',50,2)
;

-- 24 de set. de 2026 11:30:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802835,'Chave de Acesso do Documento',800125,802766,'Y',50,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:27','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-3149-74f9-be65-8d49b3f83fc8','Y',60,2)
;

-- 24 de set. de 2026 11:30:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802836,'Data de Emissão',800125,802767,'Y',7,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:28','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-3480-7ef2-8dcf-4ca4a511cc1e','Y',70,2)
;

-- 24 de set. de 2026 11:30:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802837,'Data de Registro',800125,802768,'Y',7,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-3619-73b5-b464-560bd044b9b9','Y',80,2)
;

-- 24 de set. de 2026 11:30:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802838,'Atualizado em (Fisco)',800125,802769,'Y',7,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-37b4-79cc-a380-cc13ed45101c','Y',90,2)
;

-- 24 de set. de 2026 11:30:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802839,'Valor Apurado',800125,802770,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-39a9-7835-a4f9-0044d41a49d9','Y',100,2)
;

-- 24 de set. de 2026 11:30:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802840,'Excedentes',800125,802771,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-3bb1-7eec-9f8a-32873c7ad605','Y',110,2)
;

-- 24 de set. de 2026 11:30:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802841,'Inapropriável',800125,802772,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:31','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-3e60-727f-ae94-d84bde967d1a','Y',120,2)
;

-- 24 de set. de 2026 11:30:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802842,'Suspenso',800125,802773,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:31','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-401e-7403-ab4a-56c0b9656109','Y',130,2)
;

-- 24 de set. de 2026 11:30:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802843,'Prescrito',800125,802774,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:32','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-424b-78e2-a11f-6f21d6cd6d5b','Y',140,2)
;

-- 24 de set. de 2026 11:30:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802844,'A Apropriar',800125,802775,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:32','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-4480-7af4-a04e-1cee0a8a92fb','Y',150,2)
;

-- 24 de set. de 2026 11:30:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802845,'Apropriado',800125,802776,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-4619-7cf5-b63a-052289303531','Y',160,2)
;

-- 24 de set. de 2026 11:30:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802846,'Inutilizável',800125,802777,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:33','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-4880-7c9b-a477-590bc642990f','Y',170,2)
;

-- 24 de set. de 2026 11:30:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802847,'Utilizado',800125,802778,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-4a14-797b-8d93-e79d7c12a035','Y',180,2)
;

-- 24 de set. de 2026 11:30:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802848,'Restabelecido',800125,802779,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:34','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-4c84-723b-b77b-9b2a09edda6a','Y',190,2)
;

-- 24 de set. de 2026 11:30:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802849,'Saldo Credor',800125,802780,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-4e71-70df-863c-430b4bfa442b','Y',200,2)
;

-- 24 de set. de 2026 11:30:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802850,'Pedido de Ressarcimento',800125,802781,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-507d-745c-9124-92ae92a7a2dc','Y',210,2)
;

-- 24 de set. de 2026 11:30:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802851,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800125,802758,'Y',1,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:30:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:30:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3d3-5246-79ef-922c-393e42c0896f','Y',220,2,2)
;

-- 24 de set. de 2026 11:30:36 BRT
UPDATE AD_Table SET AD_Window_ID=800040,Updated=TO_TIMESTAMP('2026-09-24 11:30:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800115
;

-- 24 de set. de 2026 11:32:03 BRT
UPDATE AD_Tab SET IsSingleRow='N', IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2026-09-24 11:32:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800125
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Request (RTC/Fisco)', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=40, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802831
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=50, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802851
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Tipo do Documento', Description=NULL, Help=NULL, SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802832
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Origem', Description=NULL, Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802833
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Documento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=80, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802834
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Chave de Acesso do Documento', Description=NULL, Help=NULL, SeqNo=90, ColumnSpan=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802835
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Data de Emissão', Description=NULL, Help=NULL, SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802836
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Data de Registro', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=110, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802837
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Atualizado em (Fisco)', Description=NULL, Help=NULL, SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802838
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Valor Apurado', Description=NULL, Help=NULL, SeqNo=130, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802839
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Excedentes', Description=NULL, Help=NULL, SeqNo=140, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802840
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Inapropriável', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=150, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802841
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Suspenso', Description=NULL, Help=NULL, SeqNo=160, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802842
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Prescrito', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=170, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802843
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='A Apropriar', Description=NULL, Help=NULL, SeqNo=180, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802844
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Apropriado', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=190, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802845
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Inutilizável', Description=NULL, Help=NULL, SeqNo=200, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802846
;

-- 24 de set. de 2026 11:36:35 BRT
UPDATE AD_Field SET Name='Utilizado', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=210, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802847
;

-- 24 de set. de 2026 11:36:36 BRT
UPDATE AD_Field SET Name='Restabelecido', Description=NULL, Help=NULL, SeqNo=220, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802848
;

-- 24 de set. de 2026 11:36:36 BRT
UPDATE AD_Field SET Name='Saldo Credor', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=230, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802849
;

-- 24 de set. de 2026 11:36:36 BRT
UPDATE AD_Field SET Name='Pedido de Ressarcimento', Description=NULL, Help=NULL, SeqNo=240, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802850
;

-- 24 de set. de 2026 11:36:36 BRT
UPDATE AD_Field SET Name='Doc. de Apuração de IBS/CBS (RTC/Fisco)', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802829
;

-- 24 de set. de 2026 11:36:36 BRT
UPDATE AD_Field SET Name='LBR_RTCFiscoApurDoc_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 11:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802830
;

-- 24 de set. de 2026 11:40:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=24,Updated=TO_TIMESTAMP('2026-09-24 11:40:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800075
;

-- 24 de set. de 2026 11:40:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=25,Updated=TO_TIMESTAMP('2026-09-24 11:40:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800070
;

-- 24 de set. de 2026 11:40:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=26,Updated=TO_TIMESTAMP('2026-09-24 11:40:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800076
;

-- 24 de set. de 2026 11:40:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=27,Updated=TO_TIMESTAMP('2026-09-24 11:40:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800078
;

-- 24 de set. de 2026 11:43:38 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800116,'Pagamento de IBS/CBS (RTC/Fisco)','LBR_RTCFiscoPayment',0,'2',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','N','L','N','Y','01a0d3df-3f57-7186-86f3-3d88c8a55c1c','N','N','N','N','N','N','N')
;

-- 24 de set. de 2026 11:43:38 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_RTCFiscoPayment',1000000,'N','N','Table LBR_RTCFiscoPayment','Y','Y',0,0,TO_TIMESTAMP('2026-09-24 11:43:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:38','YYYY-MM-DD HH24:MI:SS'),10,800730,'Y',1000000,1,200000,'01a0d3df-40f1-754f-b5cd-280538bc483a')
;

-- 24 de set. de 2026 11:43:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802782,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800116,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:55','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a0d3df-84f2-7c86-921a-b90de82762fd','N')
;

-- 24 de set. de 2026 11:43:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802783,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800116,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:56','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a0d3df-868a-7ffa-a43a-348920ac4348','N')
;

-- 24 de set. de 2026 11:43:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802784,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800116,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:56','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a0d3df-8824-7007-bac7-1cfec6cbf19e','N')
;

-- 24 de set. de 2026 11:43:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802785,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800116,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:57','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a0d3df-899b-7768-ba95-7aa94d3e079b','N')
;

-- 24 de set. de 2026 11:43:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802786,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800116,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:57','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a0d3df-8b57-71ca-a747-5aa7b8a424df','N')
;

-- 24 de set. de 2026 11:43:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802787,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800116,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:57','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a0d3df-8ce5-7ca6-b28d-c59e0900eec7','N')
;

-- 24 de set. de 2026 11:43:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802788,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800116,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:58','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a0d3df-8e88-7ebf-ac4b-0b764e72966b','N')
;

-- 24 de set. de 2026 11:43:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801032,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoPayment_ID','Pagamento de IBS/CBS (RTC/Fisco)','Pagamento de IBS/CBS (RTC/Fisco)','LBR','01a0d3df-9023-700b-b439-4eaa1f7c3408')
;

-- 24 de set. de 2026 11:43:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802789,0.0,'Pagamento de IBS/CBS (RTC/Fisco)',800116,'LBR_RTCFiscoPayment_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:59','YYYY-MM-DD HH24:MI:SS'),10,801032,'N','N','LBR','N','01a0d3df-91bb-730f-9e63-71ca4f97f4dc','N')
;

-- 24 de set. de 2026 11:43:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801033,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoPayment_UU','LBR_RTCFiscoPayment_UU','LBR_RTCFiscoPayment_UU','LBR','01a0d3df-9356-7a76-ab98-0b04afc4163c')
;

-- 24 de set. de 2026 11:44:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802790,0.0,'LBR_RTCFiscoPayment_UU',800116,'LBR_RTCFiscoPayment_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:43:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:43:59','YYYY-MM-DD HH24:MI:SS'),10,801033,'Y','N','LBR','N','01a0d3df-9545-7db3-85ae-e23bdf95305f','N')
;

-- 24 de set. de 2026 11:44:01 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800203,'01a0d3df-97bb-7a78-b5d2-1c97e617ba59',TO_TIMESTAMP('2026-09-24 11:44:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_RTCFiscoPayment_UU_idx',TO_TIMESTAMP('2026-09-24 11:44:00','YYYY-MM-DD HH24:MI:SS'),10,800116,'Y','Y','N','N')
;

-- 24 de set. de 2026 11:44:01 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800236,'01a0d3df-9930-78e8-a289-920c244ff39d',TO_TIMESTAMP('2026-09-24 11:44:01','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 11:44:01','YYYY-MM-DD HH24:MI:SS'),10,802790,800203,10)
;

-- 24 de set. de 2026 11:44:12 BRT
UPDATE AD_Column SET DefaultValue='0', IsAllowCopy='N',Updated=TO_TIMESTAMP('2026-09-24 11:44:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802783
;

-- 24 de set. de 2026 11:44:21 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRRTCFiscoPayment', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802782
;

-- 24 de set. de 2026 11:44:21 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRRTCFiscoPayment', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802783
;

-- 24 de set. de 2026 11:44:21 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRRTCFiscoPayment', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802785
;

-- 24 de set. de 2026 11:44:21 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRRTCFiscoPayment', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802787
;

-- 24 de set. de 2026 11:44:21 BRT
CREATE TABLE LBR_RTCFiscoPayment (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) DEFAULT 0 NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_RTCFiscoPayment_ID NUMERIC(10) NOT NULL, LBR_RTCFiscoPayment_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_RTCFiscoPayment_Key PRIMARY KEY (LBR_RTCFiscoPayment_ID), CONSTRAINT LBR_RTCFiscoPayment_UU_idx UNIQUE (LBR_RTCFiscoPayment_UU))
;

-- 24 de set. de 2026 11:44:21 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD CONSTRAINT ADClient_LBRRTCFiscoPayment FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:44:21 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD CONSTRAINT ADOrg_LBRRTCFiscoPayment FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:44:21 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD CONSTRAINT CreatedBy_LBRRTCFiscoPayment FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:44:21 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD CONSTRAINT UpdatedBy_LBRRTCFiscoPayment FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:44:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802791,0,'CNPJ Base',800116,'LBR_CNPJBase',8,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:44:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:44:55','YYYY-MM-DD HH24:MI:SS'),10,800976,'Y','N','LBR','N','N','N','Y','01a0d3e0-6dbc-7566-b916-92415c417451','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:44:57 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_CNPJBase VARCHAR(8) NOT NULL
;

-- 24 de set. de 2026 11:46:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802792,0,'Tributo',800116,'LBR_RTCTaxType',3,'N','N','Y','N','N',0,'N',17,800119,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:46:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:46:50','YYYY-MM-DD HH24:MI:SS'),10,800977,'Y','N','LBR','N','N','N','Y','01a0d3e2-2dbb-7b42-aed7-ce9daef9de7b','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:46:52 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_RTCTaxType VARCHAR(3) NOT NULL
;

-- 24 de set. de 2026 11:47:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802793,0,'Request (RTC/Fisco)',800116,'LBR_RTCFiscoRequest_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:47:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:47:46','YYYY-MM-DD HH24:MI:SS'),10,801026,'Y','N','LBR','N','N','N','Y','01a0d3e3-07f1-7c33-a357-1fe3529b40d5','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:47:48 BRT
UPDATE AD_Column SET FKConstraintName='LBRRTCFiscoRequest_LBRRTCFiscoPayment', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802793
;

-- 24 de set. de 2026 11:47:48 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_RTCFiscoRequest_ID NUMERIC(10) DEFAULT NULL 
;

-- 24 de set. de 2026 11:47:48 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD CONSTRAINT LBRRTCFiscoRequest_LBRRTCFiscoPayment FOREIGN KEY (LBR_RTCFiscoRequest_ID) REFERENCES lbr_rtcfiscorequest(lbr_rtcfiscorequest_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:48:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802794,0,'Serviço',800116,'LBR_RTCFiscoService',5,'N','N','Y','N','N',0,'N',17,800120,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:48:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:48:21','YYYY-MM-DD HH24:MI:SS'),10,800984,'Y','N','LBR','N','N','N','Y','01a0d3e3-9226-7780-aae9-b271008e79e6','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:48:23 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_RTCFiscoService VARCHAR(5) NOT NULL
;

-- 24 de set. de 2026 11:48:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802795,0,'Número do DARF',800116,'LBR_DARFNo',30,'N','N','Y','N','Y',1,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:48:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:48:58','YYYY-MM-DD HH24:MI:SS'),10,801017,'Y','N','LBR','N','N','N','Y','01a0d3e4-22e7-7716-b037-fc5547acbfe2','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:49:00 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_DARFNo VARCHAR(30) NOT NULL
;

-- 24 de set. de 2026 11:49:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802796,0,'Tipo de Pagamento',800116,'LBR_PaymentType',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:49:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:49:48','YYYY-MM-DD HH24:MI:SS'),10,801018,'Y','N','LBR','N','N','N','Y','01a0d3e4-e5c3-7bdf-b94a-0b68b9b5087d','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:49:49 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_PaymentType NUMERIC(10) DEFAULT NULL 
;

-- 24 de set. de 2026 11:50:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802797,0,'Data de Arrecadação',800116,'LBR_DateCollection',7,'N','N','Y','N','Y',2,'N',15,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:50:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:50:20','YYYY-MM-DD HH24:MI:SS'),10,801019,'Y','N','LBR','N','N','N','Y','01a0d3e5-65c1-74be-9256-38a8ffffd488','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:50:22 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_DateCollection TIMESTAMP NOT NULL
;

-- 24 de set. de 2026 11:51:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802798,0,'NI (CNPJ/CPF)',800116,'LBR_NI',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:51:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:51:00','YYYY-MM-DD HH24:MI:SS'),10,801020,'Y','N','LBR','N','N','N','Y','01a0d3e6-01b9-77ed-9e7a-0be2a95d441b','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:51:02 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN LBR_NI VARCHAR(14) DEFAULT NULL 
;

-- 24 de set. de 2026 11:51:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802799,0,'Total Amount','Total Amount','The Total Amount indicates the total document amount.',800116,'TotalAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:51:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:51:23','YYYY-MM-DD HH24:MI:SS'),10,1539,'N','N','LBR','N','N','N','Y','01a0d3e6-5a14-7a47-96fa-761320fa8cb7','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:51:25 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD COLUMN TotalAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 11:53:11 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800117,'Composição de Pagto de IBS/CBS (RTC/Fisco)','LBR_RTCFiscoPayComp',0,'2',0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','N','L','N','Y','01a0d3e7-fe6a-7312-bcfa-13464c6aedbc','N','N','N','N','N','N','N')
;

-- 24 de set. de 2026 11:53:12 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_RTCFiscoPayComp',1000000,'N','N','Table LBR_RTCFiscoPayComp','Y','Y',0,0,TO_TIMESTAMP('2026-09-24 11:53:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:11','YYYY-MM-DD HH24:MI:SS'),10,800731,'Y',1000000,1,200000,'01a0d3e8-0004-7eb1-b713-944782a5aa9c')
;

-- 24 de set. de 2026 11:53:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802800,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800117,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:28','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a0d3e8-4336-7594-af86-9edd4c717e34','N')
;

-- 24 de set. de 2026 11:53:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802801,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800117,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:29','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a0d3e8-44c5-77f7-87f0-28489d4431a7','N')
;

-- 24 de set. de 2026 11:53:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802802,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800117,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:29','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a0d3e8-4668-727a-b463-af5d9ea67ded','N')
;

-- 24 de set. de 2026 11:53:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802803,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800117,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:30','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a0d3e8-4802-7683-8cac-6b9d5008ca05','N')
;

-- 24 de set. de 2026 11:53:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802804,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800117,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:30','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a0d3e8-499c-7545-a682-110a27a006c2','N')
;

-- 24 de set. de 2026 11:53:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802805,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800117,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:30','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a0d3e8-4b34-7c4f-a880-6af75a6993d7','N')
;

-- 24 de set. de 2026 11:53:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802806,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800117,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:31','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a0d3e8-4cce-7109-bc52-b1fc0668a7a0','N')
;

-- 24 de set. de 2026 11:53:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801034,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoPayComp_ID','Composição de Pagto de IBS/CBS (RTC/Fisco)','Composição de Pagto de IBS/CBS (RTC/Fisco)','LBR','01a0d3e8-4e67-7610-9776-58e2535dad7a')
;

-- 24 de set. de 2026 11:53:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802807,0.0,'Composição de Pagto de IBS/CBS (RTC/Fisco)',800117,'LBR_RTCFiscoPayComp_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:32','YYYY-MM-DD HH24:MI:SS'),10,801034,'N','N','LBR','N','01a0d3e8-5002-7ab8-b373-36b09617b010','N')
;

-- 24 de set. de 2026 11:53:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801035,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFiscoPayComp_UU','LBR_RTCFiscoPayComp_UU','LBR_RTCFiscoPayComp_UU','LBR','01a0d3e8-519b-7f0f-a901-7f261d337d98')
;

-- 24 de set. de 2026 11:53:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802808,0.0,'LBR_RTCFiscoPayComp_UU',800117,'LBR_RTCFiscoPayComp_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:53:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:53:32','YYYY-MM-DD HH24:MI:SS'),10,801035,'Y','N','LBR','N','01a0d3e8-5334-7783-9406-a042a551460a','N')
;

-- 24 de set. de 2026 11:53:33 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800204,'01a0d3e8-54bf-75ad-af30-661de7b85a56',TO_TIMESTAMP('2026-09-24 11:53:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_RTCFiscoPayComp_UU_idx',TO_TIMESTAMP('2026-09-24 11:53:33','YYYY-MM-DD HH24:MI:SS'),10,800117,'Y','Y','N','N')
;

-- 24 de set. de 2026 11:53:34 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800237,'01a0d3e8-5669-7f46-9452-257e94c80932',TO_TIMESTAMP('2026-09-24 11:53:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 11:53:33','YYYY-MM-DD HH24:MI:SS'),10,802808,800204,10)
;

-- 24 de set. de 2026 11:55:09 BRT
UPDATE AD_Column SET DefaultValue='0', IsAllowCopy='N',Updated=TO_TIMESTAMP('2026-09-24 11:55:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802801
;

-- 24 de set. de 2026 11:55:15 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRRTCFiscoPayComp', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:55:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802800
;

-- 24 de set. de 2026 11:55:15 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRRTCFiscoPayComp', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:55:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802801
;

-- 24 de set. de 2026 11:55:15 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRRTCFiscoPayComp', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:55:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802803
;

-- 24 de set. de 2026 11:55:15 BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRRTCFiscoPayComp', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:55:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802805
;

-- 24 de set. de 2026 11:55:15 BRT
CREATE TABLE LBR_RTCFiscoPayComp (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) DEFAULT 0 NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_RTCFiscoPayComp_ID NUMERIC(10) NOT NULL, LBR_RTCFiscoPayComp_UU UUID DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_RTCFiscoPayComp_Key PRIMARY KEY (LBR_RTCFiscoPayComp_ID), CONSTRAINT LBR_RTCFiscoPayComp_UU_idx UNIQUE (LBR_RTCFiscoPayComp_UU))
;

-- 24 de set. de 2026 11:55:15 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD CONSTRAINT ADClient_LBRRTCFiscoPayComp FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:55:15 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD CONSTRAINT ADOrg_LBRRTCFiscoPayComp FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:55:15 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD CONSTRAINT CreatedBy_LBRRTCFiscoPayComp FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:55:15 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD CONSTRAINT UpdatedBy_LBRRTCFiscoPayComp FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:55:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802809,0,'Pagamento de IBS/CBS (RTC/Fisco)',800117,'LBR_RTCFiscoPayment_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:55:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:55:46','YYYY-MM-DD HH24:MI:SS'),10,801032,'N','N','LBR','N','N','N','Y','01a0d3ea-5bfd-7e39-ba6d-7de399792d4d','Y',0,'N','N','C','N','N')
;

-- 24 de set. de 2026 11:55:47 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRRTCFiscoPayment_LBRRTCFiscoPayComp', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-09-24 11:55:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802809
;

-- 24 de set. de 2026 11:55:47 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_RTCFiscoPayment_ID NUMERIC(10) NOT NULL
;

-- 24 de set. de 2026 11:55:47 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD CONSTRAINT LBRRTCFiscoPayment_LBRRTCFiscoPayComp FOREIGN KEY (LBR_RTCFiscoPayment_ID) REFERENCES lbr_rtcfiscopayment(lbr_rtcfiscopayment_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 11:56:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802810,0,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',800117,'SeqNo',22,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:56:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:56:19','YYYY-MM-DD HH24:MI:SS'),10,566,'Y','N','LBR','N','N','N','Y','01a0d3ea-ddfc-7217-bb43-a75ce1d58f1f','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:56:21 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN SeqNo NUMERIC(10) NOT NULL
;

-- 24 de set. de 2026 11:56:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802811,0,'Período de Apuração',800117,'LBR_PA',7,'N','N','N','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:56:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:56:44','YYYY-MM-DD HH24:MI:SS'),10,800994,'Y','N','LBR','N','N','N','Y','01a0d3eb-3dfb-7abb-821d-5403664b30e7','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:56:45 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_PA VARCHAR(7) DEFAULT NULL 
;

-- 24 de set. de 2026 11:57:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802812,0,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',800117,'DueDate',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:57:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:57:04','YYYY-MM-DD HH24:MI:SS'),10,2000,'Y','N','LBR','N','N','N','Y','01a0d3eb-8ec3-7547-a618-4351398eda61','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:57:06 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN DueDate TIMESTAMP DEFAULT NULL 
;

-- 24 de set. de 2026 11:57:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802813,0,'NI (CNPJ/CPF)',800117,'LBR_NI',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:57:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:57:24','YYYY-MM-DD HH24:MI:SS'),10,801020,'Y','N','LBR','N','N','N','Y','01a0d3eb-da69-7a74-ab37-51bc71ee612e','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:57:25 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_NI VARCHAR(14) DEFAULT NULL 
;

-- 24 de set. de 2026 11:57:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802814,0,'Chave de Acesso do Documento',800117,'LBR_DFeChave',50,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:57:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:57:44','YYYY-MM-DD HH24:MI:SS'),10,800901,'Y','N','LBR','N','N','N','Y','01a0d3ec-2990-7c61-a5dc-2c34429c3f33','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:57:45 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_DFeChave VARCHAR(50) DEFAULT NULL 
;

-- 24 de set. de 2026 11:58:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802815,0,'Principal',800117,'LBR_PrincipalAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:58:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:58:14','YYYY-MM-DD HH24:MI:SS'),10,801021,'Y','N','LBR','N','N','N','Y','01a0d3ec-9ffb-7e83-af25-f044551d7bf3','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:58:16 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_PrincipalAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 11:58:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802816,0,'Multa',800117,'LBR_FineAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:58:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:58:35','YYYY-MM-DD HH24:MI:SS'),10,801022,'Y','N','LBR','N','N','N','Y','01a0d3ec-f057-7af7-ae0c-457e41515f48','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:58:36 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_FineAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 11:58:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802817,0,'Juros',800117,'LBR_InterestAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:58:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:58:55','YYYY-MM-DD HH24:MI:SS'),10,801023,'Y','N','LBR','N','N','N','Y','01a0d3ed-3f93-7992-948a-4cb70212512e','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:58:57 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_InterestAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 11:59:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802818,0,'Total Amount','Total Amount','The Total Amount indicates the total document amount.',800117,'TotalAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:59:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:59:21','YYYY-MM-DD HH24:MI:SS'),10,1539,'Y','N','LBR','N','N','N','Y','01a0d3ed-a5cf-7478-b982-12598e9d5243','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 11:59:23 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN TotalAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 11:59:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802819,0,'Apuração de IBS/CBS (RTC/Fisco)',800117,'LBR_RTCFiscoApuracao_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-24 11:59:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 11:59:53','YYYY-MM-DD HH24:MI:SS'),10,801028,'Y','N','LBR','N','N','N','Y','01a0d3ee-226d-78bf-8749-c48037f44c66','Y',0,'N','N','N','N','N')
;

-- 24 de set. de 2026 11:59:55 BRT
UPDATE AD_Column SET FKConstraintName='LBRRTCFiscoApuracao_LBRRTCFiscoPayComp', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-24 11:59:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802819
;

-- 24 de set. de 2026 11:59:55 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD COLUMN LBR_RTCFiscoApuracao_ID NUMERIC(10) DEFAULT NULL 
;

-- 24 de set. de 2026 11:59:55 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD CONSTRAINT LBRRTCFiscoApuracao_LBRRTCFiscoPayComp FOREIGN KEY (LBR_RTCFiscoApuracao_ID) REFERENCES lbr_rtcfiscoapuracao(lbr_rtcfiscoapuracao_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24 de set. de 2026 12:00:41 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (800041,'Pagamento de IBS/CBS (RTC/Fisco)',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:41','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','N','N','N','01a0d3ee-dd41-7774-a663-6dcd62905a93')
;

-- 24 de set. de 2026 12:00:42 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800126,'Pagamento de IBS/CBS (RTC/Fisco)',800041,10,'Y',800116,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:41','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR_RTCFiscoPayment.Created DESC','N',0,'N','LBR','Y','N','01a0d3ee-dece-703e-bd4e-0eddd29b06ae')
;

-- 24 de set. de 2026 12:00:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802852,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800126,802782,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-e071-75a6-b014-2935ccaf65da','N',2)
;

-- 24 de set. de 2026 12:00:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (802853,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800126,802783,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-e20c-746c-8966-07b7a30ae563','Y','N',4,2)
;

-- 24 de set. de 2026 12:00:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802854,'Pagamento de IBS/CBS (RTC/Fisco)',800126,802789,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-e3a6-7281-94b9-ae6f4e43b223','N',2)
;

-- 24 de set. de 2026 12:00:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802855,'LBR_RTCFiscoPayment_UU',800126,802790,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-e53f-7214-b339-9a8290c22b29','N',2)
;

-- 24 de set. de 2026 12:00:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802856,'CNPJ Base',800126,802791,'Y',8,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-e6c6-7270-93aa-7fe61f92074e','Y',10,2)
;

-- 24 de set. de 2026 12:00:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802857,'Tributo',800126,802792,'Y',3,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-e873-7c68-bdfc-717a9443396f','Y',20,2)
;

-- 24 de set. de 2026 12:00:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802858,'Request (RTC/Fisco)',800126,802793,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-ea0d-7823-9086-4a7dcbf14ad7','Y',30,2)
;

-- 24 de set. de 2026 12:00:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802859,'Serviço',800126,802794,'Y',5,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-eba5-7922-91a6-107b35efc105','Y',40,2)
;

-- 24 de set. de 2026 12:00:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802860,'Número do DARF',800126,802795,'Y',30,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-ed31-7f30-84e8-362b193d05bd','Y',50,2)
;

-- 24 de set. de 2026 12:00:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802861,'Tipo de Pagamento',800126,802796,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-eebd-7f1f-8901-a97e8928aa9c','Y',60,2)
;

-- 24 de set. de 2026 12:00:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802862,'Data de Arrecadação',800126,802797,'Y',7,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-f072-742b-bc34-42efafe63b0a','Y',70,2)
;

-- 24 de set. de 2026 12:00:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802863,'NI (CNPJ/CPF)',800126,802798,'Y',14,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-f20f-7fd5-970f-f2eb59024699','Y',80,2)
;

-- 24 de set. de 2026 12:00:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802864,'Total Amount','Total Amount','The Total Amount indicates the total document amount.',800126,802799,'Y',22,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-f3a6-779f-89b1-f6bda2a887a4','Y',90,2)
;

-- 24 de set. de 2026 12:00:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802865,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800126,802788,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ee-f53f-7883-a50b-3eaa9a5a0e9b','Y',100,2,2)
;

-- 24 de set. de 2026 12:00:48 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,AD_Menu_UU) VALUES (800079,'Pagamento de IBS/CBS (RTC/Fisco)','W',800041,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:00:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:00:48','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR','01a0d3ee-f6cf-7c8b-b3e5-a4e6c29e9dce')
;

-- 24 de set. de 2026 12:00:48 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800079, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800079)
;

-- 24 de set. de 2026 12:00:48 BRT
UPDATE AD_Table SET AD_Window_ID=800041,Updated=TO_TIMESTAMP('2026-09-24 12:00:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800116
;

-- 24 de set. de 2026 12:01:24 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,AD_Column_ID,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800127,'Composição de Pagto de IBS/CBS (RTC/Fisco)',800041,20,'Y',800117,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:24','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N',802809,'LBR_RTCFiscoPayComp.Created DESC','N',1,'N','LBR','Y','N','01a0d3ef-84a6-7d01-8462-3480b597feef')
;

-- 24 de set. de 2026 12:01:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802866,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800127,802800,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-862e-7d50-857a-6f4c1e10718a','N',2)
;

-- 24 de set. de 2026 12:01:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (802867,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800127,802801,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-87a9-7f4e-ad94-7cf6db98defc','Y','N',4,2)
;

-- 24 de set. de 2026 12:01:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802868,'Pagamento de IBS/CBS (RTC/Fisco)',800127,802809,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-89e4-7c2f-a9fa-8e3a2630c305','Y',10,2)
;

-- 24 de set. de 2026 12:01:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802869,'Composição de Pagto de IBS/CBS (RTC/Fisco)',800127,802807,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-8bac-7593-9a12-9eff7cf3b48a','N',2)
;

-- 24 de set. de 2026 12:01:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802870,'LBR_RTCFiscoPayComp_UU',800127,802808,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-8d44-765d-b5ef-21d0469c5cdd','N',2)
;

-- 24 de set. de 2026 12:01:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802871,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',800127,802810,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-8fa9-712a-8254-985a5e1e3611','Y',20,2)
;

-- 24 de set. de 2026 12:01:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802872,'Período de Apuração',800127,802811,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:27','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-91aa-7a52-b3bf-146e6ddde3a3','Y',30,2)
;

-- 24 de set. de 2026 12:01:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802873,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',800127,802812,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:28','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-9344-7a66-958f-01a0b2be998e','Y',40,2)
;

-- 24 de set. de 2026 12:01:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802874,'NI (CNPJ/CPF)',800127,802813,'Y',14,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:28','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-95ab-7535-9e5d-95b18ae202b5','Y',50,2)
;

-- 24 de set. de 2026 12:01:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802875,'Chave de Acesso do Documento',800127,802814,'Y',50,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-9811-7910-8d44-29688c58c9e5','Y',60,2)
;

-- 24 de set. de 2026 12:01:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802876,'Principal',800127,802815,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-9a79-72e5-95e5-b5cfb2647057','Y',70,2)
;

-- 24 de set. de 2026 12:01:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802877,'Multa',800127,802816,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-9c77-71f7-b6ec-776410f56e14','Y',80,2)
;

-- 24 de set. de 2026 12:01:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802878,'Juros',800127,802817,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-9e02-7ea0-8732-fd7b98fb5d8f','Y',90,2)
;

-- 24 de set. de 2026 12:01:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802879,'Total Amount','Total Amount','The Total Amount indicates the total document amount.',800127,802818,'Y',22,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:31','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-9fab-7053-a7d3-19889096a7bd','Y',100,2)
;

-- 24 de set. de 2026 12:01:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802880,'Apuração de IBS/CBS (RTC/Fisco)',800127,802819,'Y',22,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:31','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-a145-75e6-8d9a-8a45c29ac463','Y',110,2)
;

-- 24 de set. de 2026 12:01:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802881,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800127,802806,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:01:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:01:32','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d3ef-a2c3-7de8-807f-5523dc93b529','Y',120,2,2)
;

-- 24 de set. de 2026 12:01:32 BRT
UPDATE AD_Table SET AD_Window_ID=800041,Updated=TO_TIMESTAMP('2026-09-24 12:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800117
;

-- 24 de set. de 2026 12:02:27 BRT
UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2026-09-24 12:02:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800126
;

-- 24 de set. de 2026 12:02:36 BRT
UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2026-09-24 12:02:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800127
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=30, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802865
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='CNPJ Base', Description=NULL, Help=NULL, SeqNo=40, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802856
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Tributo', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=50, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802857
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Request (RTC/Fisco)', Description=NULL, Help=NULL, SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802858
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Serviço', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=70, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802859
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Número do DARF', Description=NULL, Help=NULL, SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802860
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Tipo de Pagamento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=90, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802861
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Data de Arrecadação', Description=NULL, Help=NULL, SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802862
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='NI (CNPJ/CPF)', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=110, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802863
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Total Amount', Description='Total Amount', Help='The Total Amount indicates the total document amount.', SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802864
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='LBR_RTCFiscoPayment_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802855
;

-- 24 de set. de 2026 12:03:20 BRT
UPDATE AD_Field SET Name='Pagamento de IBS/CBS (RTC/Fisco)', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802854
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Apuração de IBS/CBS (RTC/Fisco)', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=40, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802880
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=50, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802881
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Sequence', Description='Method of ordering records; lowest number comes first', Help='The Sequence indicates the order of records', SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802871
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Período de Apuração', Description=NULL, Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802872
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Due Date', Description='Date when the payment is due', Help='Date when the payment is due without deductions or discount', IsDisplayed='Y', SeqNo=80, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802873
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='NI (CNPJ/CPF)', Description=NULL, Help=NULL, SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802874
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Chave de Acesso do Documento', Description=NULL, Help=NULL, SeqNo=100, ColumnSpan=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802875
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Principal', Description=NULL, Help=NULL, SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802876
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Multa', Description=NULL, Help=NULL, SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802877
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Juros', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=130, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802878
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Total Amount', Description='Total Amount', Help='The Total Amount indicates the total document amount.', SeqNo=140, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802879
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='Composição de Pagto de IBS/CBS (RTC/Fisco)', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802869
;

-- 24 de set. de 2026 12:04:15 BRT
UPDATE AD_Field SET Name='LBR_RTCFiscoPayComp_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 12:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802870
;

-- 24 de set. de 2026 12:04:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=28,Updated=TO_TIMESTAMP('2026-09-24 12:04:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800079
;

-- 24 de set. de 2026 12:06:35 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800205,'01a0d3f4-415d-7da2-af91-1c0b298bb2e2',TO_TIMESTAMP('2026-09-24 12:06:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscoconfig_uq',TO_TIMESTAMP('2026-09-24 12:06:34','YYYY-MM-DD HH24:MI:SS'),10,800112,'Y','Y','N','N','N')
;

-- 24 de set. de 2026 12:06:50 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800238,'01a0d3f4-7ef3-720e-8a7c-42c903e27564',TO_TIMESTAMP('2026-09-24 12:06:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:06:50','YYYY-MM-DD HH24:MI:SS'),10,802695,800205,10)
;

-- 24 de set. de 2026 12:07:00 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800239,'01a0d3f4-a427-73d2-a39a-15f9286586fa',TO_TIMESTAMP('2026-09-24 12:07:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:07:00','YYYY-MM-DD HH24:MI:SS'),10,802704,800205,20)
;

-- 24 de set. de 2026 12:07:11 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800240,'01a0d3f4-cd5d-7a20-963a-d8d6a3c83ae3',TO_TIMESTAMP('2026-09-24 12:07:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:07:10','YYYY-MM-DD HH24:MI:SS'),10,802705,800205,30)
;

-- 24 de set. de 2026 12:07:17 BRT
ALTER TABLE LBR_RTCFiscoConfig ADD CONSTRAINT lbr_rtcfiscoconfig_uq UNIQUE (AD_Client_ID,LBR_CNPJBase,LBR_RTCTaxType)
;

-- 24 de set. de 2026 12:07:59 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800206,'01a0d3f5-8bbb-715a-be3c-76230d9040c1',TO_TIMESTAMP('2026-09-24 12:07:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscorequest_ticket',TO_TIMESTAMP('2026-09-24 12:07:59','YYYY-MM-DD HH24:MI:SS'),10,800113,'Y','Y','N','N','N')
;

-- 24 de set. de 2026 12:08:13 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800241,'01a0d3f5-bfc1-7e45-92e1-f1fba4068568',TO_TIMESTAMP('2026-09-24 12:08:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:08:12','YYYY-MM-DD HH24:MI:SS'),10,802712,800206,10)
;

-- 24 de set. de 2026 12:08:22 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800242,'01a0d3f5-e55c-7d85-b1e5-fd1cbc113069',TO_TIMESTAMP('2026-09-24 12:08:22','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:08:22','YYYY-MM-DD HH24:MI:SS'),10,802724,800206,20)
;

-- 24 de set. de 2026 12:08:29 BRT
ALTER TABLE LBR_RTCFiscoRequest ADD CONSTRAINT lbr_rtcfiscorequest_ticket UNIQUE (AD_Client_ID,LBR_Ticket)
;

-- 24 de set. de 2026 12:09:01 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800207,'01a0d3f6-7b60-757c-832a-7564da2d49fb',TO_TIMESTAMP('2026-09-24 12:09:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscoapuracao_uq',TO_TIMESTAMP('2026-09-24 12:09:00','YYYY-MM-DD HH24:MI:SS'),10,800114,'Y','Y','N','N','N')
;

-- 24 de set. de 2026 12:09:12 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800243,'01a0d3f6-a7b7-7a01-9d41-35020652ac77',TO_TIMESTAMP('2026-09-24 12:09:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:09:12','YYYY-MM-DD HH24:MI:SS'),10,802734,800207,10)
;

-- 24 de set. de 2026 12:09:21 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800244,'01a0d3f6-cc2e-7925-b21f-3cd62de3beed',TO_TIMESTAMP('2026-09-24 12:09:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:09:21','YYYY-MM-DD HH24:MI:SS'),10,802743,800207,20)
;

-- 24 de set. de 2026 12:09:31 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800245,'01a0d3f6-f2fa-7e41-b806-39eee10c57e9',TO_TIMESTAMP('2026-09-24 12:09:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:09:31','YYYY-MM-DD HH24:MI:SS'),10,802744,800207,30)
;

-- 24 de set. de 2026 12:09:41 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800246,'01a0d3f7-1a2f-7bce-9995-65ae55fff52c',TO_TIMESTAMP('2026-09-24 12:09:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:09:41','YYYY-MM-DD HH24:MI:SS'),10,802745,800207,40)
;

-- 24 de set. de 2026 12:09:46 BRT
ALTER TABLE LBR_RTCFiscoApuracao ADD CONSTRAINT lbr_rtcfiscoapuracao_uq UNIQUE (AD_Client_ID,LBR_CNPJBase,LBR_RTCTaxType,LBR_PA)
;

-- 24 de set. de 2026 12:10:23 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800208,'01a0d3f7-be40-7b59-9a33-195de6332067',TO_TIMESTAMP('2026-09-24 12:10:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscoapurdoc_uq',TO_TIMESTAMP('2026-09-24 12:10:23','YYYY-MM-DD HH24:MI:SS'),10,800115,'Y','Y','N','N','N')
;

-- 24 de set. de 2026 12:10:35 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800247,'01a0d3f7-ea81-7a33-b726-8f73aa1057ee',TO_TIMESTAMP('2026-09-24 12:10:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:10:34','YYYY-MM-DD HH24:MI:SS'),10,802752,800208,10)
;

-- 24 de set. de 2026 12:10:46 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800248,'01a0d3f8-1783-7cb7-85ba-49b4837d93b0',TO_TIMESTAMP('2026-09-24 12:10:45','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:10:45','YYYY-MM-DD HH24:MI:SS'),10,802761,800208,20)
;

-- 24 de set. de 2026 12:10:57 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800249,'01a0d3f8-40fe-74c0-8af2-dece3c1bc306',TO_TIMESTAMP('2026-09-24 12:10:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:10:56','YYYY-MM-DD HH24:MI:SS'),10,802763,800208,30)
;

-- 24 de set. de 2026 12:11:07 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800250,'01a0d3f8-672d-746d-a960-a812f3397e1a',TO_TIMESTAMP('2026-09-24 12:11:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:11:06','YYYY-MM-DD HH24:MI:SS'),10,802766,800208,40)
;

-- 24 de set. de 2026 12:11:16 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800251,'01a0d3f8-8c97-7e6e-baa1-e55308234cae',TO_TIMESTAMP('2026-09-24 12:11:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:11:16','YYYY-MM-DD HH24:MI:SS'),10,802764,800208,50)
;

-- 24 de set. de 2026 12:11:27 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800252,'01a0d3f8-b698-74b0-9cb7-c362de67037f',TO_TIMESTAMP('2026-09-24 12:11:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:11:26','YYYY-MM-DD HH24:MI:SS'),10,802765,800208,60)
;

-- 24 de set. de 2026 12:11:35 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD CONSTRAINT lbr_rtcfiscoapurdoc_uq UNIQUE (AD_Client_ID,LBR_RTCFiscoApuracao_ID,LBR_RTCFiscoDocType,LBR_DFeChave,LBR_Origem,LBR_Documento)
;

-- 24 de set. de 2026 12:12:03 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800209,'01a0d3f9-41ce-775a-b94d-5fcda9428cb3',TO_TIMESTAMP('2026-09-24 12:12:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscopayment_uq',TO_TIMESTAMP('2026-09-24 12:12:02','YYYY-MM-DD HH24:MI:SS'),10,800116,'Y','Y','N','N','N')
;

-- 24 de set. de 2026 12:12:14 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800253,'01a0d3f9-6e35-73e7-81de-b3e67871a02b',TO_TIMESTAMP('2026-09-24 12:12:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:12:14','YYYY-MM-DD HH24:MI:SS'),10,802782,800209,10)
;

-- 24 de set. de 2026 12:12:24 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800254,'01a0d3f9-94ef-7129-801a-b65b7f5f01a2',TO_TIMESTAMP('2026-09-24 12:12:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:12:23','YYYY-MM-DD HH24:MI:SS'),10,802791,800209,20)
;

-- 24 de set. de 2026 12:12:34 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800255,'01a0d3f9-bc9a-7c3e-aeda-b7faacd954cb',TO_TIMESTAMP('2026-09-24 12:12:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:12:33','YYYY-MM-DD HH24:MI:SS'),10,802795,800209,30)
;

-- 24 de set. de 2026 12:12:43 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800256,'01a0d3f9-dfd6-73ec-9c4d-535412c6c7de',TO_TIMESTAMP('2026-09-24 12:12:43','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:12:43','YYYY-MM-DD HH24:MI:SS'),10,802797,800209,40)
;

-- 24 de set. de 2026 12:12:48 BRT
ALTER TABLE LBR_RTCFiscoPayment ADD CONSTRAINT lbr_rtcfiscopayment_uq UNIQUE (AD_Client_ID,LBR_CNPJBase,LBR_DARFNo,LBR_DateCollection)
;

-- 24 de set. de 2026 12:13:25 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800210,'01a0d3fa-856f-74f7-b57c-6d62fba06b6d',TO_TIMESTAMP('2026-09-24 12:13:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscopaycomp_uq',TO_TIMESTAMP('2026-09-24 12:13:25','YYYY-MM-DD HH24:MI:SS'),10,800117,'Y','Y','N','N','N')
;

-- 24 de set. de 2026 12:13:35 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800257,'01a0d3fa-ab68-729e-81a0-07b80312338d',TO_TIMESTAMP('2026-09-24 12:13:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:13:35','YYYY-MM-DD HH24:MI:SS'),10,802800,800210,10)
;

-- 24 de set. de 2026 12:13:46 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800258,'01a0d3fa-d703-761f-9cf1-d1c72a1be12b',TO_TIMESTAMP('2026-09-24 12:13:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:13:46','YYYY-MM-DD HH24:MI:SS'),10,802809,800210,20)
;

-- 24 de set. de 2026 12:13:55 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800259,'01a0d3fa-f8ff-7346-a977-676c8a327356',TO_TIMESTAMP('2026-09-24 12:13:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:13:55','YYYY-MM-DD HH24:MI:SS'),10,802810,800210,30)
;

-- 24 de set. de 2026 12:14:00 BRT
ALTER TABLE LBR_RTCFiscoPayComp ADD CONSTRAINT lbr_rtcfiscopaycomp_uq UNIQUE (AD_Client_ID,LBR_RTCFiscoPayment_ID,SeqNo)
;

-- 24 de set. de 2026 12:31:48 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800211,'01a0d40b-5922-7305-992a-d696ddaac8eb',TO_TIMESTAMP('2026-09-24 12:31:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscoapurdoc_dfechave',TO_TIMESTAMP('2026-09-24 12:31:48','YYYY-MM-DD HH24:MI:SS'),10,800115,'N','N','N','N','N')
;

-- 24 de set. de 2026 12:32:06 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800260,'01a0d40b-a084-73a9-a814-aa623a424424',TO_TIMESTAMP('2026-09-24 12:32:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:32:06','YYYY-MM-DD HH24:MI:SS'),10,802752,800211,10)
;

-- 24 de set. de 2026 12:32:18 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800261,'01a0d40b-cc4d-70ed-8968-e155303917c2',TO_TIMESTAMP('2026-09-24 12:32:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:32:17','YYYY-MM-DD HH24:MI:SS'),10,802766,800211,20)
;

-- 24 de set. de 2026 12:32:22 BRT
CREATE INDEX lbr_rtcfiscoapurdoc_dfechave ON LBR_RTCFiscoApurDoc (AD_Client_ID,LBR_DFeChave)
;

-- 24 de set. de 2026 12:32:53 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800212,'01a0d40c-5587-79e3-99ae-1dbbbebdfb07',TO_TIMESTAMP('2026-09-24 12:32:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscoapurdoc_request',TO_TIMESTAMP('2026-09-24 12:32:52','YYYY-MM-DD HH24:MI:SS'),10,800115,'N','N','N','N','N')
;

-- 24 de set. de 2026 12:33:07 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800262,'01a0d40c-8d24-7204-af01-5769d0d08a35',TO_TIMESTAMP('2026-09-24 12:33:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:33:06','YYYY-MM-DD HH24:MI:SS'),10,802762,800212,10)
;

-- 24 de set. de 2026 12:33:11 BRT
CREATE INDEX lbr_rtcfiscoapurdoc_request ON LBR_RTCFiscoApurDoc (LBR_RTCFiscoRequest_ID)
;

-- 24 de set. de 2026 12:33:54 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800213,'01a0d40d-4662-7ee9-a816-0ad8deb3f567',TO_TIMESTAMP('2026-09-24 12:33:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscorequest_config',TO_TIMESTAMP('2026-09-24 12:33:54','YYYY-MM-DD HH24:MI:SS'),10,800113,'N','N','N','N','N')
;

-- 24 de set. de 2026 12:34:08 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800263,'01a0d40d-7996-7e45-b9b4-0b2f5ced7bd3',TO_TIMESTAMP('2026-09-24 12:34:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:34:07','YYYY-MM-DD HH24:MI:SS'),10,802721,800213,10)
;

-- 24 de set. de 2026 12:34:14 BRT
CREATE INDEX lbr_rtcfiscorequest_config ON LBR_RTCFiscoRequest (LBR_RTCFiscoConfig_ID)
;

-- 24 de set. de 2026 12:34:43 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800214,'01a0d40e-0536-7666-a888-723d3a98ddaa',TO_TIMESTAMP('2026-09-24 12:34:43','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscopaycomp_dfechave',TO_TIMESTAMP('2026-09-24 12:34:43','YYYY-MM-DD HH24:MI:SS'),10,800117,'N','N','N','N','N')
;

-- 24 de set. de 2026 12:34:55 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800264,'01a0d40e-3160-7baf-8bcc-1b6a2dfb7fae',TO_TIMESTAMP('2026-09-24 12:34:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:34:54','YYYY-MM-DD HH24:MI:SS'),10,802800,800214,10)
;

-- 24 de set. de 2026 12:35:04 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800265,'01a0d40e-5629-7b32-b15b-e480c06422cb',TO_TIMESTAMP('2026-09-24 12:35:04','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:35:04','YYYY-MM-DD HH24:MI:SS'),10,802814,800214,20)
;

-- 24 de set. de 2026 12:35:10 BRT
CREATE INDEX lbr_rtcfiscopaycomp_dfechave ON LBR_RTCFiscoPayComp (AD_Client_ID,LBR_DFeChave)
;

-- 24 de set. de 2026 12:35:34 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800215,'01a0d40e-c97e-735d-bca4-8b2124ec2eb4',TO_TIMESTAMP('2026-09-24 12:35:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscopaycomp_apur',TO_TIMESTAMP('2026-09-24 12:35:33','YYYY-MM-DD HH24:MI:SS'),10,800117,'N','N','N','N','N')
;

-- 24 de set. de 2026 12:35:45 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800266,'01a0d40e-f533-72e0-aee2-8521c9bfaf47',TO_TIMESTAMP('2026-09-24 12:35:44','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:35:44','YYYY-MM-DD HH24:MI:SS'),10,802819,800215,10)
;

-- 24 de set. de 2026 12:35:49 BRT
CREATE INDEX lbr_rtcfiscopaycomp_apur ON LBR_RTCFiscoPayComp (LBR_RTCFiscoApuracao_ID)
;

-- 24 de set. de 2026 12:36:20 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800216,'01a0d40f-7f42-7d66-b1b9-c5e9e87f2279',TO_TIMESTAMP('2026-09-24 12:36:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','lbr_rtcfiscopayment_request',TO_TIMESTAMP('2026-09-24 12:36:20','YYYY-MM-DD HH24:MI:SS'),10,800116,'N','N','N','N','N')
;

-- 24 de set. de 2026 12:36:31 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800267,'01a0d40f-a895-7cef-a8ca-7e58d9ffc298',TO_TIMESTAMP('2026-09-24 12:36:30','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-24 12:36:30','YYYY-MM-DD HH24:MI:SS'),10,802793,800216,10)
;

-- 24 de set. de 2026 12:36:35 BRT
CREATE INDEX lbr_rtcfiscopayment_request ON LBR_RTCFiscoPayment (LBR_RTCFiscoRequest_ID)
;

-- 24 de set. de 2026 12:47:19 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800114,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:47:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:47:19','YYYY-MM-DD HH24:MI:SS'),10,'Abrir Solicitação ao Fisco','N','LBR_RTCFisco_OpenRequests','N','org.idempierelbr.rtc.process.RTCFiscoOpenRequests','3','LBR',0,0,'N','Y','N','01a0d419-8e99-7453-9284-6c9daa012927','P')
;

-- 24 de set. de 2026 12:49:27 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800168,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:49:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:49:27','YYYY-MM-DD HH24:MI:SS'),10,'Configuração da Integração (RTC/Fisco)',800114,10,19,'N',22,'N','@LBR_RTCFiscoConfig_ID@','LBR_RTCFiscoConfig_ID','Y','LBR',801024,'01a0d41b-8229-77ba-90fc-3c6db24313c6','N','N','D','N')
;

-- 24 de set. de 2026 12:50:04 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800169,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:50:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:50:03','YYYY-MM-DD HH24:MI:SS'),10,'Serviço',800114,20,17,'N',5,'N','@LBR_RTCFiscoService@','LBR_RTCFiscoService','Y','LBR',800984,'01a0d41c-11be-711d-85d0-301888cca94f','N','N','D','N')
;

-- 24 de set. de 2026 12:50:59 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800115,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:50:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:50:58','YYYY-MM-DD HH24:MI:SS'),10,'Consultar e Importar Solicitação','N','LBR_RTCFisco_PollAndImport','N','org.idempierelbr.rtc.process.RTCFiscoPollAndImport','3','LBR',0,0,'N','Y','N','01a0d41c-e7d4-7399-8bf7-5e5317765990','P')
;

-- 24 de set. de 2026 12:52:31 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800123,'LBR_RTCFiscoRequest','T',0,0,'Y',TO_TIMESTAMP('2026-09-24 12:52:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:52:30','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','01a0d41e-4f78-78f3-90c3-5fec65cfe9b9','N')
;

-- 24 de set. de 2026 12:53:50 BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU,IsDisplayIdentifier) VALUES (800123,800113,802719,802719,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:53:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:53:50','YYYY-MM-DD HH24:MI:SS'),10,'N','LBR','01a0d41f-84a7-7187-808f-ea50593a6373','N')
;

-- 24 de set. de 2026 12:54:14 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800170,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:54:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:54:13','YYYY-MM-DD HH24:MI:SS'),10,'Request (RTC/Fisco)',800115,10,30,800123,'N',22,'N','@LBR_RTCFiscoRequest_ID@','LBR_RTCFiscoRequest_ID','Y','LBR',801026,'01a0d41f-e117-7f0b-b6e4-fdad943e997e','N','N','D','N')
;

-- 24 de set. de 2026 12:55:31 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800116,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:55:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:55:30','YYYY-MM-DD HH24:MI:SS'),10,'Importar Arquivo de Apuração IBS/CBS (RTC/Fisco)','N','LBR_RTCFisco_ImportFromFile','N','org.idempierelbr.rtc.process.RTCFiscoImportFromFile','3','LBR',0,0,'N','Y','N','01a0d421-0eb4-7dd1-ab37-1df42d20da72','P')
;

-- 24 de set. de 2026 12:56:03 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800171,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:56:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:56:03','YYYY-MM-DD HH24:MI:SS'),10,'Configuração da Integração (RTC/Fisco)',800116,10,19,'N',22,'Y','@LBR_RTCFiscoConfig_ID@','LBR_RTCFiscoConfig_ID','Y','LBR',801024,'01a0d421-8dfb-7cbb-8838-c38d46b2f067','N','N','D','N')
;

-- 24 de set. de 2026 12:56:27 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800172,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:56:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:56:27','YYYY-MM-DD HH24:MI:SS'),10,'Serviço',800116,20,17,'N',5,'Y','@LBR_RTCFiscoService@','LBR_RTCFiscoService','Y','LBR',800984,'01a0d421-eaba-7684-9bd6-b3deefc39c31','N','N','D','N')
;

-- 24 de set. de 2026 12:56:55 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800173,0,0,'Y',TO_TIMESTAMP('2026-09-24 12:56:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 12:56:55','YYYY-MM-DD HH24:MI:SS'),10,'File Name','Name of the local file or URL','Name of a file in the local directory space - or URL (file://.., http://.., ftp://..)',800116,30,39,'N',0,'Y','FileName','Y','LBR',2295,'01a0d422-570f-7ca3-927b-670dbd89064c','N','N','D','N')
;

-- 24 de set. de 2026 12:59:40 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-09-24 12:59:39','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFisco_OpenRequests','Y',800011,'LBR_RTCFisco_OpenRequests',TO_TIMESTAMP('2026-09-24 12:59:39','YYYY-MM-DD HH24:MI:SS'),10,'N','01a0d424-dac3-7cb6-a3f6-8c4de80db810','W',800121,10,'LBR')
;

-- 24 de set. de 2026 13:00:50 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-09-24 13:00:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFisco_PollAndImport','Y',800012,'LBR_RTCFisco_PollAndImport',TO_TIMESTAMP('2026-09-24 13:00:49','YYYY-MM-DD HH24:MI:SS'),10,'N','01a0d425-ec5f-7702-b78a-447ebd26c9a7','W',800122,800115,10,'LBR')
;

-- 24 de set. de 2026 13:01:12 BRT
UPDATE AD_ToolBarButton SET AD_Process_ID=800114,Updated=TO_TIMESTAMP('2026-09-24 13:01:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_ToolBarButton_ID=800011
;

-- 24 de set. de 2026 13:01:55 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-09-24 13:01:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RTCFisco_ImportFromFile','Y',800013,'LBR_RTCFisco_ImportFromFile',TO_TIMESTAMP('2026-09-24 13:01:54','YYYY-MM-DD HH24:MI:SS'),10,'N','01a0d426-eac4-765a-9229-5606b050c0cb','W',800123,800116,10,'LBR')
;

-- 24 de set. de 2026 15:34:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801036,0,0,'Y',TO_TIMESTAMP('2026-09-24 15:34:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:34:11','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NonEnforceableAmt','Inexigível','Inexigível','LBR','01a0d4b2-5610-7dfc-9d9f-45a73ef2f227')
;

-- 24 de set. de 2026 15:34:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802820,0,'Inexigível',800115,'LBR_NonEnforceableAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 15:34:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:34:44','YYYY-MM-DD HH24:MI:SS'),10,801036,'Y','N','LBR','N','N','N','Y','01a0d4b2-d533-7e75-a7a9-4338d8c3d5dc','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 15:34:46 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_NonEnforceableAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 15:35:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801037,0,0,'Y',TO_TIMESTAMP('2026-09-24 15:35:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:35:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ExtinguishedAmt','Extinto','Extinto','LBR','01a0d4b3-4ada-73fc-8d51-f84001640025')
;

-- 24 de set. de 2026 15:35:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802821,0,'Extinto',800115,'LBR_ExtinguishedAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 15:35:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:35:32','YYYY-MM-DD HH24:MI:SS'),10,801037,'Y','N','LBR','N','N','N','Y','01a0d4b3-9002-7a8f-9598-ae8660e4086d','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 15:35:33 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_ExtinguishedAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 15:36:04 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801038,0,0,'Y',TO_TIMESTAMP('2026-09-24 15:36:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:36:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DebitBalanceAmt','Saldo Devedor','Saldo Devedor','LBR','01a0d4b4-0c01-75d7-b6c6-3a9c6bce3dba')
;

-- 24 de set. de 2026 15:36:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802822,0,'Saldo Devedor',800115,'LBR_DebitBalanceAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-24 15:36:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:36:21','YYYY-MM-DD HH24:MI:SS'),10,801038,'Y','N','LBR','N','N','N','Y','01a0d4b4-4ed9-7286-97f8-f69aec458ffe','Y',0,'N','N','N','N')
;

-- 24 de set. de 2026 15:36:22 BRT
ALTER TABLE LBR_RTCFiscoApurDoc ADD COLUMN LBR_DebitBalanceAmt NUMERIC DEFAULT NULL 
;

-- 24 de set. de 2026 15:36:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802882,'Inexigível',800125,802820,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 15:36:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:36:50','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d4b4-c275-7aa4-a257-7acb063c0e31','Y',230,2)
;

-- 24 de set. de 2026 15:36:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802883,'Extinto',800125,802821,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 15:36:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:36:51','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d4b4-c3f9-75b2-8029-e557c25cbe2c','Y',240,2)
;

-- 24 de set. de 2026 15:36:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802884,'Saldo Devedor',800125,802822,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-24 15:36:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:36:51','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a0d4b4-c580-7a34-b245-4d6ce68a8eae','Y',250,2)
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Excedentes', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=140, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802840
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Pedido de Ressarcimento', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=150, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802850
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Inapropriável', Description=NULL, Help=NULL, SeqNo=160, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802841
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Suspenso', Description=NULL, Help=NULL, SeqNo=170, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802842
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Prescrito', Description=NULL, Help=NULL, SeqNo=180, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802843
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='A Apropriar', Description=NULL, Help=NULL, SeqNo=190, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802844
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Apropriado', Description=NULL, Help=NULL, SeqNo=200, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802845
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Inutilizável', Description=NULL, Help=NULL, SeqNo=210, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802846
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Utilizado', Description=NULL, Help=NULL, SeqNo=220, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802847
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Restabelecido', Description=NULL, Help=NULL, SeqNo=230, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802848
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Inexigível', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=240, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802882
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Extinto', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=250, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802883
;

-- 24 de set. de 2026 15:38:21 BRT
UPDATE AD_Field SET Name='Saldo Devedor', Description=NULL, Help=NULL, SeqNo=260, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802884
;

-- 24 de set. de 2026 15:38:22 BRT
UPDATE AD_Field SET Name='Saldo Credor', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=270, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-09-24 15:38:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802849
;

-- 24 de set. de 2026 15:39:40 BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=800120,Updated=TO_TIMESTAMP('2026-09-24 15:39:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800169
;

-- 24 de set. de 2026 15:39:58 BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=800120,Updated=TO_TIMESTAMP('2026-09-24 15:39:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800172
;

-- 24 de set. de 2026 15:45:55 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU,PredefinedContextVariables) VALUES (800080,'Importar Arquivo de Apuração IBS/CBS (RTC/Fisco)','P',0,0,'Y',TO_TIMESTAMP('2026-09-24 15:45:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-24 15:45:54','YYYY-MM-DD HH24:MI:SS'),10,'N',800116,'N','N','LBR','Y','01a0d4bd-0ede-743c-a1a9-f5d2bcb43e53',NULL)
;

-- 24 de set. de 2026 15:45:55 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800080, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800080)
;

-- 24 de set. de 2026 15:46:11 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=29,Updated=TO_TIMESTAMP('2026-09-24 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800080
;

-- 24 de set. de 2026 15:46:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=28,Updated=TO_TIMESTAMP('2026-09-24 15:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800080
;

-- 24 de set. de 2026 15:46:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=29,Updated=TO_TIMESTAMP('2026-09-24 15:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800079
;

-- 24 de set. de 2026 15:46:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=27,Updated=TO_TIMESTAMP('2026-09-24 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800080
;

-- 24 de set. de 2026 15:46:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=28,Updated=TO_TIMESTAMP('2026-09-24 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800078
;

