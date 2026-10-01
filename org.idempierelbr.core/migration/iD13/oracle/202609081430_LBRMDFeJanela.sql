-- Janela Manifesto Eletronico: 20 abas e 397 campos
SELECT register_migration_script('202609081430_LBRMDFeJanela.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF


-- 8 de set. de 2026 14:32:33 BRT

INSERT INTO AD_Window (AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsSOTrx,WindowType,EntityType,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (800038,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:33','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletronico','Manifesto Eletronico de Documentos Fiscais, modelo 58','Y','M','LBR','N','N','01a082c6-f5fe-75f4-8d8a-4b2090fc3eb0')
;

-- 8 de set. de 2026 14:32:40 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800101,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:40','YYYY-MM-DD HH24:MI:SS'),100,'MDF-e',800092,800038,10,0,'Y','N','N','N','N','LBR','Y','N','B','01a082c6-f61f-7709-9d52-382e60940a19')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802355,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:47','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800101,802293,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-769d-9773-623356a33aca')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802356,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:32:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:32:54','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800101,802294,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-76b0-9ebd-c39e67af7cdb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802357,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:01','YYYY-MM-DD HH24:MI:SS'),100,'Created',800101,802295,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7de3-ad45-2893f97bfc17')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802358,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:08','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800101,802296,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-71cc-b726-5259cdd3a770')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802359,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:15','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800101,802297,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7d1b-ae33-964cb0894e36')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802360,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:22','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800101,802298,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-70d4-8305-edc69b838628')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802361,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:29','YYYY-MM-DD HH24:MI:SS'),100,'Active',800101,802299,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7db8-a08d-e9934142d3a2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802362,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:36','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800101,802300,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-73ea-bcd0-8fb849c65117')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802363,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_UU',800101,802301,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-798b-b8c6-29f096d16e81')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802364,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:50','YYYY-MM-DD HH24:MI:SS'),100,'Description',800101,802302,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7dd9-9ea8-17566477f2d3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802365,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:33:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:33:57','YYYY-MM-DD HH24:MI:SS'),100,'Document Type',800101,802303,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-761a-9783-147a7618f398')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802366,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:04','YYYY-MM-DD HH24:MI:SS'),100,'Document No',800101,802304,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-74a9-8c20-2d22eb101222')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802367,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:11','YYYY-MM-DD HH24:MI:SS'),100,'Document Action',800101,802305,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-73a1-91eb-0617a2b931c3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802368,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:18','YYYY-MM-DD HH24:MI:SS'),100,'Document Status',800101,802306,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7327-840b-0915e561e127')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802369,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:25','YYYY-MM-DD HH24:MI:SS'),100,'Processed',800101,802307,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7442-a62d-33aa12ff52ec')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802370,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:32','YYYY-MM-DD HH24:MI:SS'),100,'Processed On',800101,802308,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7666-92f5-a555ab55e2a9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802371,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:39','YYYY-MM-DD HH24:MI:SS'),100,'Process Now',800101,802309,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7db5-b548-0b4b99561dc9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802372,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Serie',800101,802310,'Y','Y',180,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7f53-be98-b3fde2cd985d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802373,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:34:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:34:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeChave',800101,802311,'Y','Y',190,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-77ee-b887-72558f613988')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802374,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:00','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cMDF',800101,802312,'Y','Y',200,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7fdd-9f7f-6708434dfed5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802375,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cDV',800101,802313,'Y','Y',210,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7bea-bd97-5b092ac5f828')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802376,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpAmb',800101,802314,'Y','Y',220,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-70a4-a565-20cfd2eee7bb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802377,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpEmit',800101,802315,'Y','Y',230,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-71f4-b904-e1679d926262')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802378,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpTransp',800101,802316,'Y','Y',240,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7690-b114-22be29685df7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802379,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Modal',800101,802317,'Y','Y',250,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-79d7-a02e-db02152a4ab9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802380,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpEmis',800101,802318,'Y','Y',260,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7272-93d5-15f74cf6541e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802381,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_procEmi',800101,802319,'Y','Y',270,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7513-9403-d1b3f786c150')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802382,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:35:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:35:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_verProc',800101,802320,'Y','Y',280,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7ae6-8789-2e48205bbc0d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802383,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:03','YYYY-MM-DD HH24:MI:SS'),100,'Document Date',800101,802321,'Y','Y',290,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-79b9-9ba6-704943a7423f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802384,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DateIniViagem',800101,802322,'Y','Y',300,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-76a1-aa6e-1a1a8a708270')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802385,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_UFIni_ID',800101,802323,'Y','Y',310,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-7c43-a0e1-92258ad82690')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802386,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_UFFim_ID',800101,802324,'Y','Y',320,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-752f-8406-366987a209d5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802387,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndCanalVerde',800101,802325,'Y','Y',330,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-729f-9c9c-117a0f659fa7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802388,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndCargaPosterior',800101,802326,'Y','Y',340,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-71bb-ad5c-dd931e5d64f7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802389,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpCarga',800101,802327,'Y','Y',350,'N','N','N','N','N','LBR','N','N','N','01a082c6-f61f-77e3-beac-80f7b32bc3b8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802390,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProdPred',800101,802328,'Y','Y',360,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7a66-a0b3-f9f2610c35b2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802391,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:36:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:36:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EAN',800101,802329,'Y','Y',370,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7d25-b133-0fde372af4e0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802392,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:06','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NCM',800101,802330,'Y','Y',380,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7817-967f-150ffe22d888')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802393,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QtyCTe',800101,802331,'Y','Y',390,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7885-ad82-52425e54c737')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802394,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:20','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QtyNFe',800101,802332,'Y','Y',400,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-773d-a514-09c4a57eba21')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802395,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QtyMDFe',800101,802333,'Y','Y',410,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7735-83cc-5de19f52cc62')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802396,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueCargo',800101,802334,'Y','Y',420,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7640-9256-9da506728349')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802397,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cUnid',800101,802335,'Y','Y',430,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7601-ba9d-708e86e911ab')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802398,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QtyCargo',800101,802336,'Y','Y',440,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-77f8-b31e-f9727faaeb49')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802399,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:37:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:37:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RNTRC',800101,802337,'Y','Y',450,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7b42-86b1-33d42723d334')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802400,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Placa',800101,802338,'Y','Y',460,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-761a-910e-bb78e470b05d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802401,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Renavam',800101,802339,'Y','Y',470,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-73f5-8854-a3a91909f079')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802402,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cInt',800101,802340,'Y','Y',480,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-78d9-8ec7-0a42f2eda40c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802403,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Tara',800101,802341,'Y','Y',490,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7b02-a24e-6709d5ae8cb1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802404,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CapKG',800101,802342,'Y','Y',500,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-720f-bb5b-75bc26f41e87')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802405,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CapM3',800101,802343,'Y','Y',510,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7ece-a803-c4b5dd5f6598')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802406,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpRod',800101,802344,'Y','Y',520,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7ad3-ab28-ce495b837398')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802407,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpCar',800101,802345,'Y','Y',530,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7a11-893e-ebab707504fb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802408,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_VeicUF_ID',800101,802346,'Y','Y',540,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7655-8dba-c51f2319d850')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802409,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsOwnerNotEmitter',800101,802347,'Y','Y',550,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7c59-89a2-993537cbd21e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802410,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropCNPJ',800101,802348,'Y','Y',560,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7f4f-bffe-615fd1832af0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802411,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropCPF',800101,802349,'Y','Y',570,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7d8b-ae2e-8ad0db5eefcd')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802412,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropRNTRC',800101,802350,'Y','Y',580,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7941-add8-e46369871f48')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802413,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropName',800101,802351,'Y','Y',590,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7972-8c97-fd65aa92a3c0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802414,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropIE',800101,802352,'Y','Y',600,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7f0f-b3bf-3c1226ae1029')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802415,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropUF_ID',800101,802353,'Y','Y',610,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7e6d-ad32-49e5496a0401')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802416,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:39:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:39:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpProp',800101,802354,'Y','Y',620,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7a6d-bfa0-e56265b30e25')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802417,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InfAdFisco',800101,802355,'Y','Y',630,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7866-a8b8-2126cfe8d0d1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802418,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InfCpl',800101,802356,'Y','Y',640,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7fb7-b426-3e9039da5942')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802419,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeStatus',800101,802357,'Y','Y',650,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7204-a4c2-48f94aea6351')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802420,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cStat',800101,802358,'Y','Y',660,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7df6-8ab5-d640fed09936')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802421,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:29','YYYY-MM-DD HH24:MI:SS'),100,'LBR_xMotivo',800101,802359,'Y','Y',670,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7ba7-97e8-df8be230001f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802422,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Protocol',800101,802360,'Y','Y',680,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-74c5-bad5-8c332cb6acd8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802423,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DateProtocol',800101,802361,'Y','Y',690,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7d60-9297-df096d102c68')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802424,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:50','YYYY-MM-DD HH24:MI:SS'),100,'DigestValue',800101,802362,'Y','Y',700,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7c3d-9288-0311cbe7c3d2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802425,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:40:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:40:57','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Recibo',800101,802363,'Y','Y',710,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7943-955d-37755117ca24')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802426,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QrCodMDFe',800101,802364,'Y','Y',720,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-72b9-a36a-8349fd8bae7a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802427,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProcTransmitir',800101,802365,'Y','Y',730,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-790c-8e84-cc893ce638ee')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802428,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CarregaCEP',800101,802366,'Y','Y',740,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-72cb-a9ea-60eea2221d53')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802429,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:25','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CarregaLatitude',800101,802367,'Y','Y',750,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7e95-9cd6-4fbaf4d21bc0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802430,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CarregaLongitude',800101,802368,'Y','Y',760,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-71f2-bfe0-65a559ad4cd4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802431,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DescarregaCEP',800101,802369,'Y','Y',770,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-709d-89a8-ffbd28318d13')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802432,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DescarregaLatitude',800101,802370,'Y','Y',780,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-750a-8ba7-653d9783de1d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802433,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:41:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:41:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DescarregaLongitude',800101,802371,'Y','Y',790,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-76f9-ba92-a75e5409df60')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802434,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:00','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RespTecCNPJ',800101,802372,'Y','Y',800,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7320-8c0d-f95532903c4d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802435,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RespTecContact',800101,802373,'Y','Y',810,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7a29-9833-8e7688bdb638')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802436,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RespTecEMail',800101,802374,'Y','Y',820,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-71ac-b4f6-df08e4771e5a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802437,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RespTecPhone',800101,802375,'Y','Y',830,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-7bca-874a-c6cbcad5f2a2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802438,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CategCombVeic',800101,802376,'Y','Y',840,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-70a0-aa4b-50886c2c25b3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802439,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CodAgPorto',800101,802377,'Y','Y',850,'N','N','N','N','N','LBR','N','N','N','01a082c6-f620-75cd-ba6c-05b7dbf1f0f5')
;

-- 8 de set. de 2026 14:42:42 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800102,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:42','YYYY-MM-DD HH24:MI:SS'),100,'Condutores',800095,800038,20,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f63f-7ed1-9e02-e650a9452783')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802440,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:49','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800102,802404,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7d74-b934-361036e069e1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802441,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:42:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:42:56','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800102,802405,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7bad-a6ef-e19ba621b488')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802442,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:03','YYYY-MM-DD HH24:MI:SS'),100,'Created',800102,802406,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7771-b7ab-c07f4ccd1391')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802443,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:10','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800102,802407,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7209-9457-a50a0e67b0a7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802444,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:17','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800102,802408,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7736-abcb-f4097232918e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802445,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:24','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800102,802409,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7f5e-a8c7-5b0037bbd433')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802446,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:31','YYYY-MM-DD HH24:MI:SS'),100,'Active',800102,802410,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7269-b547-48fa3288ba31')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802447,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeCondutor',800102,802411,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7a48-9f62-57a41550e211')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802448,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeCondutor_UU',800102,802412,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7c82-b160-0cdeaac57641')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802449,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:52','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800102,802413,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-73d6-9194-a3e09f7ea411')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802450,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:43:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:43:59','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800102,802414,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7f5c-a5e3-f62b464ef342')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802451,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:06','YYYY-MM-DD HH24:MI:SS'),100,'Name',800102,802415,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-7029-a1ca-0153e2004f5f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802452,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:13','YYYY-MM-DD HH24:MI:SS'),100,'CPF',800102,802416,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f63f-74dd-b810-c8b099b5c4b2')
;

-- 8 de set. de 2026 14:44:20 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800103,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:20','YYYY-MM-DD HH24:MI:SS'),100,'Reboques',800096,800038,30,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f660-7a85-b985-a39acf46f61c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802453,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:27','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800103,802417,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-773a-aa2a-baff8da22c4c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802454,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:34','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800103,802418,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-7611-adfa-342baba81a88')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802455,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:41','YYYY-MM-DD HH24:MI:SS'),100,'Created',800103,802419,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-747e-9c48-9a63902f7434')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802456,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:48','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800103,802420,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-796e-b2dc-74d8d8f9cc4f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802457,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:44:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:44:55','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800103,802421,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-79d3-bc52-ef9a9c86ece8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802458,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:02','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800103,802422,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-748c-bb50-7788bbabfed5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802459,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:09','YYYY-MM-DD HH24:MI:SS'),100,'Active',800103,802423,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-7da4-92ea-9f8ea21021c5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802460,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeReboque',800103,802424,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-7be4-a4fb-afcdd2eab1c1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802461,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeReboque_UU',800103,802425,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-7226-bb54-b4534dc1a1b0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802462,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:30','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800103,802426,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-7a09-9402-201d9f7fd874')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802463,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:37','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800103,802427,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-766e-8385-3eb4893def78')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802464,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Placa',800103,802428,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-75a7-bc59-6b5faaab7e05')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802465,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Renavam',800103,802429,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-7b83-8fe4-4fb2c2f7f7e6')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802466,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:45:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:45:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cInt',800103,802430,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-7cc9-b23e-53877e186f88')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802467,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Tara',800103,802431,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f660-78c9-9eda-e2ae64f12117')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802468,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CapKG',800103,802432,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-7d23-bb48-c360c9c308b3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802469,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CapM3',800103,802433,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-7d20-95fe-ef35dd74f42b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802470,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpCar',800103,802434,'Y','Y',180,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-7e18-9822-72056adc4691')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802471,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_VeicUF_ID',800103,802435,'Y','Y',190,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-779e-8411-90762899f2fb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802472,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsOwnerNotEmitter',800103,802436,'Y','Y',200,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-78a9-8de9-97cb153f8cf1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802473,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropCNPJ',800103,802437,'Y','Y',210,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-71d9-b5bc-3c7055f3efab')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802474,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:46:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:46:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropCPF',800103,802438,'Y','Y',220,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-7757-9fbc-6e12ac0bf242')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802475,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropRNTRC',800103,802439,'Y','Y',230,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-752b-b5e6-7fcb635d728b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802476,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropName',800103,802440,'Y','Y',240,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-7d6c-98fd-dbd28a8ab9b1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802477,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropIE',800103,802441,'Y','Y',250,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-7dbc-b86d-88c42ea189f2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802478,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PropUF_ID',800103,802442,'Y','Y',260,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-7eb7-af7a-b6bb4a380aef')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802479,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:29','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpProp',800103,802443,'Y','Y',270,'N','N','N','N','N','LBR','N','N','N','01a082c6-f661-772e-a5f9-a43b769abf66')
;

-- 8 de set. de 2026 14:47:36 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800104,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:36','YYYY-MM-DD HH24:MI:SS'),100,'Municipios de carregamento',800093,800038,40,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f684-7e1a-87ff-689829f427a9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802480,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:43','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800104,802378,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-78d4-a566-589f89b0cf98')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802481,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:50','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800104,802379,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7b62-9fb8-cbd6a44d2b81')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802482,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:47:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:47:57','YYYY-MM-DD HH24:MI:SS'),100,'Created',800104,802380,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-73d1-b9e4-b3d7436c14ed')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802483,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:04','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800104,802381,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7f14-b779-a0094103d36c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802484,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:11','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800104,802382,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7f6e-9d02-70a701563e6b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802485,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:18','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800104,802383,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7af7-8504-7a2ab02e1da9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802486,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:25','YYYY-MM-DD HH24:MI:SS'),100,'Active',800104,802384,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-740a-8174-6333d41859ce')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802487,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeMunCarrega',800104,802385,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7f13-9daf-a829b63ac6d4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802488,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeMunCarrega_UU',800104,802386,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7062-928d-dc8fd799c8c0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802489,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:46','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800104,802387,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7eec-9af7-0f42b96b93f9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802490,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:48:53','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800104,802388,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-748d-b41d-fbbdc1929b60')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802491,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:00','YYYY-MM-DD HH24:MI:SS'),100,'City',800104,802389,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-72ca-98a9-7b9209df0811')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802492,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cMun',800104,802390,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-7375-be58-ed0dd661c123')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802493,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_xMun',800104,802391,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f684-742e-876c-231d91828ec9')
;

-- 8 de set. de 2026 14:49:21 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800105,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:21','YYYY-MM-DD HH24:MI:SS'),100,'Percurso',800094,800038,50,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f6a7-786a-8120-b61f71442a15')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802494,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:28','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800105,802392,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-7c10-b2d3-33be5c983cac')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802495,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:35','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800105,802393,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-70ab-bb33-d801cc14a434')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802496,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:42','YYYY-MM-DD HH24:MI:SS'),100,'Created',800105,802394,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-7b2a-bee4-ac2838fc31a4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802497,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:49','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800105,802395,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-796f-84ca-72b7e3d9b7cf')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802498,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:49:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:49:56','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800105,802396,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-755f-88b6-c360e66a28d8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802499,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:03','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800105,802397,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-7ee3-897b-a0dc38a06370')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802500,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:10','YYYY-MM-DD HH24:MI:SS'),100,'Active',800105,802398,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-7bc2-8034-79450b2346af')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802501,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFePercurso',800105,802399,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-74aa-a31c-150c515d2bd6')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802502,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFePercurso_UU',800105,802400,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-7f63-b511-60fcc0731b11')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802503,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:31','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800105,802401,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-78cc-8cf1-357967bffa85')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802504,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:38','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800105,802402,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-7a9f-a8cb-ef77c64d11eb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802505,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:45','YYYY-MM-DD HH24:MI:SS'),100,'Region',800105,802403,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6a8-7bc8-87c0-58e19a437f8f')
;

-- 8 de set. de 2026 14:50:52 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800106,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:52','YYYY-MM-DD HH24:MI:SS'),100,'Municipios de descarregamento',800098,800038,60,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f6c7-7af7-b6d4-4b3380d0554e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802506,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:50:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:50:59','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800106,802457,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7d5e-9247-a8653bb285ea')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802507,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:06','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800106,802458,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7df0-b4b9-19c1fb540dbe')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802508,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:13','YYYY-MM-DD HH24:MI:SS'),100,'Created',800106,802459,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7f5a-a82f-802ba73283a7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802509,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:20','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800106,802460,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-73d5-b956-f73ffcfdad44')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802510,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:27','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800106,802461,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7bbc-8f89-8654f749d4a0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802511,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800106,802462,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7f9c-bfbf-04219ae068e4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802512,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:41','YYYY-MM-DD HH24:MI:SS'),100,'Active',800106,802463,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-711c-abda-d6ce60ca2c2e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802513,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeMunDescarga',800106,802464,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7986-b65a-93c023ac9882')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802514,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:51:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:51:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeMunDescarga_UU',800106,802465,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7994-8bc3-3aa11f5ffb4f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802515,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:02','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800106,802466,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7278-9b71-390766841b1b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802516,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:09','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800106,802467,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c7-7a2c-b0c3-f2d40649cba2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802517,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:16','YYYY-MM-DD HH24:MI:SS'),100,'City',800106,802468,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c8-71a3-9f0a-115aa5a3e34c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802518,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cMun',800106,802469,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c8-7e72-934c-0da9f0a8d571')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802519,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_xMun',800106,802470,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6c8-7b03-80af-2b7f23efe575')
;

-- 8 de set. de 2026 14:52:37 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800107,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:37','YYYY-MM-DD HH24:MI:SS'),100,'Lacres',800097,800038,70,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f6ea-7e24-bd3f-30513d127ff8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802520,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:44','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800107,802444,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-772c-8ede-6cd536b87f64')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802521,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:51','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800107,802445,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7832-9b83-2d598f17957d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802522,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:52:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:52:58','YYYY-MM-DD HH24:MI:SS'),100,'Created',800107,802446,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7d83-acc8-ea048e5173fe')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802523,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:05','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800107,802447,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7921-bb7c-1aa9b9563fae')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802524,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:12','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800107,802448,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7b4c-a340-cc09b94725d3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802525,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:19','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800107,802449,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-709b-a253-d8eca15c3488')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802526,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:26','YYYY-MM-DD HH24:MI:SS'),100,'Active',800107,802450,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7922-9d86-bb43c1ed0afc')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802527,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeLacre',800107,802451,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7c12-84aa-3c25ef2a253a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802528,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeLacre_UU',800107,802452,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-76bf-8567-74aa4b2f3dbe')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802529,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800107,802453,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7f99-a192-5f5d8ce0c9ec')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802530,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:53:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:53:54','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800107,802454,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7b30-b346-277255fea989')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802531,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NLacre',800107,802455,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-72d4-a8ec-4f13018e8864')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802532,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_LacreScope',800107,802456,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f6ea-7f4e-8f26-816ca2ce4d06')
;

-- 8 de set. de 2026 14:54:15 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800108,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:15','YYYY-MM-DD HH24:MI:SS'),100,'CIOT',800101,800038,80,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f70c-73df-9a27-185b801412d8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802533,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:22','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800108,802506,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-7fe4-a90b-bfebd0269cfb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802534,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:29','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800108,802507,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-760e-8fe5-b36a0539114c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802535,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:36','YYYY-MM-DD HH24:MI:SS'),100,'Created',800108,802508,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-743e-ac98-56ae01fd38df')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802536,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:43','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800108,802509,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-70f6-b517-56c89999bad6')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802537,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:50','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800108,802510,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-74e1-bfac-11f1ccd2a69e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802538,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:54:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:54:57','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800108,802511,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-7a35-8141-672342fc9138')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802539,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:04','YYYY-MM-DD HH24:MI:SS'),100,'Active',800108,802512,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-7f7a-98cc-539f1fe8f051')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802540,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeCIOT',800108,802513,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-7e63-aaee-3dada48e0c09')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802541,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeCIOT_UU',800108,802514,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-7bd3-b793-f024f83bd13f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802542,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:25','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800108,802515,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-7da6-9191-d43b896d2f77')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802543,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:32','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800108,802516,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-718d-89f1-f7ce7b22158b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802544,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CIOT',800108,802517,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-72d4-a626-dc9c27caaee5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802545,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:46','YYYY-MM-DD HH24:MI:SS'),100,'CNPJ',800108,802518,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-728e-ab86-890e1a836d80')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802546,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:55:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:55:53','YYYY-MM-DD HH24:MI:SS'),100,'CPF',800108,802519,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f70c-7dde-ac95-a7a6c931d2e7')
;

-- 8 de set. de 2026 14:56:00 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800109,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:00','YYYY-MM-DD HH24:MI:SS'),100,'Vale-pedagio',800102,800038,90,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f72b-7c31-be15-7700ce9ee3e5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802547,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:07','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800109,802520,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72b-7bb9-a19c-c614bfcfb79e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802548,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:14','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800109,802521,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72b-797c-a05f-f64129cb076a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802549,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:21','YYYY-MM-DD HH24:MI:SS'),100,'Created',800109,802522,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7f18-95d5-937caf8f04ff')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802550,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:28','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800109,802523,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7285-9d41-a6f707d39b9b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802551,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:35','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800109,802524,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7a49-bc4a-23859ff8df74')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802552,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:42','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800109,802525,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7436-9adf-8fcd55381e38')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802553,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:49','YYYY-MM-DD HH24:MI:SS'),100,'Active',800109,802526,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-70a4-907a-7cbec422288c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802554,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:56:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:56:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeValePed',800109,802527,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7e5a-bb7a-3154d4d8b9a8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802555,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:03','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeValePed_UU',800109,802528,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-78da-8da1-5f4d7c4b5bd6')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802556,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:10','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800109,802529,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7c65-b83f-b732c51a3e87')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802557,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:17','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800109,802530,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7c5e-a036-9e0e5e67678a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802558,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CNPJForn',800109,802531,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7fd2-aa2f-d95bb836b353')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802559,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CNPJPg',800109,802532,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7ea5-a91d-4a886e9cd46b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802560,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CPFPg',800109,802533,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7f5d-8b0f-8c65132f97b8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802561,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NCompra',800109,802534,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7237-954e-42b101352e6e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802562,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueValePed',800109,802535,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7ddd-8d32-6af5f1187ed2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802563,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:57:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:57:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_tpValePed',800109,802536,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f72c-7743-a495-4d0e7ef61768')
;

-- 8 de set. de 2026 14:58:06 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800110,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:06','YYYY-MM-DD HH24:MI:SS'),100,'Contratantes',800103,800038,100,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f750-7cb3-973e-1d40735d1c65')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802564,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800110,802537,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-72fa-97fd-3198044a257c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802565,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:20','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800110,802538,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-702d-bc0c-949dada4e7cd')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802566,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:27','YYYY-MM-DD HH24:MI:SS'),100,'Created',800110,802539,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-77b1-8996-12266cdf2486')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802567,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:34','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800110,802540,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7bd0-8474-ea775ba388e3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802568,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:41','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800110,802541,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-78b1-a79c-80df30f26725')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802569,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:48','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800110,802542,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7dc9-820b-317ba72a485c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802570,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:58:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:58:55','YYYY-MM-DD HH24:MI:SS'),100,'Active',800110,802543,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-77aa-98b7-309421a85305')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802571,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeContratante',800110,802544,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-743d-a81d-43d7de0da2cf')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802572,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeContratante_UU',800110,802545,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7dce-905d-52e805d5523e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802573,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:16','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800110,802546,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-78e3-a9d8-307b1efd055c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802574,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:23','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800110,802547,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7f7b-ac56-6d3b3227d85e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802575,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:30','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner',800110,802548,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7e22-aa66-cc02cdab12ab')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802576,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:37','YYYY-MM-DD HH24:MI:SS'),100,'Name',800110,802549,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7c0d-8531-d8a608fdb995')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802577,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:44','YYYY-MM-DD HH24:MI:SS'),100,'CNPJ',800110,802550,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-70c7-bc69-45f6e4f4ec05')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802578,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:51','YYYY-MM-DD HH24:MI:SS'),100,'CPF',800110,802551,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7809-a112-674f824c53c7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802579,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:59:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:59:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NroContrato',800110,802552,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7d64-8187-22d63349992d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802580,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueContract',800110,802553,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7e27-a217-f434544cb652')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802581,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IdEstrangeiro',800110,802554,'Y','Y',180,'N','N','N','N','N','LBR','N','N','N','01a082c6-f750-7a00-8759-10cce07f0b09')
;

-- 8 de set. de 2026 15:00:19 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800111,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:19','YYYY-MM-DD HH24:MI:SS'),100,'Pagamento do frete',800104,800038,110,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f771-74df-be04-88f3f4204af8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802582,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:26','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800111,802555,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7a30-939b-46db6c85480b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802583,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:33','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800111,802556,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7c66-8ea8-026aef7bfc2d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802584,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:40','YYYY-MM-DD HH24:MI:SS'),100,'Created',800111,802557,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7519-955e-550305f6c9a3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802585,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:47','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800111,802558,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7574-849c-88e23aedf02a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802586,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:00:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:00:54','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800111,802559,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7c95-a200-7945c70df95a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802587,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:01','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800111,802560,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7081-b3d6-0b4a23e339d8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802588,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:08','YYYY-MM-DD HH24:MI:SS'),100,'Active',800111,802561,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-771c-9a6f-96373f1689f6')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802589,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeInfPag',800111,802562,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-76bc-bc80-063b553563f7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802590,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeInfPag_UU',800111,802563,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7f28-a41e-45458ff258ed')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802591,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:29','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800111,802564,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7b2a-9b95-dbfef029f30b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802592,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:36','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800111,802565,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7866-a663-b71c0ff96f3f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802593,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:43','YYYY-MM-DD HH24:MI:SS'),100,'Name',800111,802566,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7e17-9360-009f905c06f3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802594,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:50','YYYY-MM-DD HH24:MI:SS'),100,'CNPJ',800111,802567,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-71c2-bd7b-bf31f7fd2a73')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802595,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:01:57','YYYY-MM-DD HH24:MI:SS'),100,'CPF',800111,802568,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7333-9991-7b1203503317')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802596,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IdEstrangeiro',800111,802569,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-769b-9dd8-7811733c38ae')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802597,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueContract',800111,802570,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7208-bc86-2139a2a7f734')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802598,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndAltoDesemp',800111,802571,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7e68-9308-d3504e3b04c4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802599,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:25','YYYY-MM-DD HH24:MI:SS'),100,'Forma de Pagamento',800111,802572,'Y','Y',180,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-737f-bf25-5069ca0a07b3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802600,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueAdiant',800111,802573,'Y','Y',190,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-74de-a57a-5403208faf65')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802601,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndAntecipa',800111,802574,'Y','Y',200,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-73dd-9a74-822ba24d41d5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802602,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TpAntecip',800111,802575,'Y','Y',210,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-766b-abec-4bf6ba426f20')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802603,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:02:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:02:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CodBanco',800111,802576,'Y','Y',220,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-72c2-933e-bf085faab771')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802604,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:00','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CodAgencia',800111,802577,'Y','Y',230,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-7186-91a7-b248c1cf8f82')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802605,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CNPJIPEF',800111,802578,'Y','Y',240,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-70eb-aada-aceebd9f4fc0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802606,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PIX',800111,802579,'Y','Y',250,'N','N','N','N','N','LBR','N','N','N','01a082c6-f772-79d3-b5a6-f5275a09e525')
;

-- 8 de set. de 2026 15:03:21 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800112,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:21','YYYY-MM-DD HH24:MI:SS'),100,'Seguro',800107,800038,120,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f791-7cbe-9333-feb8a27ae3fc')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802607,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:28','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800112,802608,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-797a-9645-916c0e7e6069')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802608,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:35','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800112,802609,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-729e-962f-f8e0c3156d79')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802609,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:42','YYYY-MM-DD HH24:MI:SS'),100,'Created',800112,802610,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-7ab6-ba28-1a281f065b74')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802610,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:49','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800112,802611,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-74a0-85f3-53600b1b4225')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802611,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:03:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:03:56','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800112,802612,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-780f-bcbb-e1424512d59a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802612,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:03','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800112,802613,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-7e17-9ec9-d2d5dbb70528')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802613,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:10','YYYY-MM-DD HH24:MI:SS'),100,'Active',800112,802614,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-75b8-95e3-70544fae4422')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802614,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeSeg',800112,802615,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-75b8-a84b-eaf79c2d5db2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802615,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeSeg_UU',800112,802616,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-73d7-acef-9f216629efb9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802616,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:31','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800112,802617,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-799a-8686-b390c2fd5dec')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802617,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:38','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800112,802618,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-72d8-8207-878b6d797814')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802618,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RespSeg',800112,802619,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-767a-a67d-037a80cb9fe4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802619,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RespCNPJ',800112,802620,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-7518-8b45-eb1468f03b92')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802620,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:04:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:04:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RespCPF',800112,802621,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-7b00-a517-d63c21722089')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802621,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:06','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SegName',800112,802622,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-7ec5-aafb-d0852849b907')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802622,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SegCNPJ',800112,802623,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-7810-a0ea-28407faa7c19')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802623,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:20','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NApol',800112,802624,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f791-7017-a6f1-5f54cb076297')
;

-- 8 de set. de 2026 15:05:27 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800113,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:27','YYYY-MM-DD HH24:MI:SS'),100,'Autorizados a baixar o XML',800109,800038,130,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f7b1-752a-a6b0-5c1ae2b52a55')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802624,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:34','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800113,802637,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7140-9b56-5628071e0acb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802625,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:41','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800113,802638,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7037-b7bd-b3180d8d18ed')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802626,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:48','YYYY-MM-DD HH24:MI:SS'),100,'Created',800113,802639,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7074-91a3-68c859fc7d5d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802627,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:05:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:05:55','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800113,802640,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7160-adab-fc96c431b338')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802628,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:02','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800113,802641,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-79e0-bce9-352df75d3b93')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802629,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:09','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800113,802642,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7ad1-8d07-15c1446ce00e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802630,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:16','YYYY-MM-DD HH24:MI:SS'),100,'Active',800113,802643,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7834-941c-f630bfd1aca9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802631,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeAutXML',800113,802644,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-77f0-8128-e0b20529dbb8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802632,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeAutXML_UU',800113,802645,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7fef-b75f-b730ea71e7c4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802633,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:37','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800113,802646,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7c25-b478-2b00c1940ffa')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802634,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:44','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800113,802647,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7edf-b774-ebd437b89a4e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802635,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:51','YYYY-MM-DD HH24:MI:SS'),100,'CNPJ',800113,802648,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7c6d-bacb-458bd12dfbbd')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802636,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:06:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:06:58','YYYY-MM-DD HH24:MI:SS'),100,'CPF',800113,802649,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7b1-7a4b-9122-03f4853de232')
;

-- 8 de set. de 2026 15:07:05 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800114,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:05','YYYY-MM-DD HH24:MI:SS'),100,'Eventos',800110,800038,140,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f7d7-7f9e-89b3-d9207a7983f8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802637,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:12','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800114,802650,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7e77-b1fc-c51546c09740')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802638,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:19','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800114,802651,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7d38-b42d-8cd95177419d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802639,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:26','YYYY-MM-DD HH24:MI:SS'),100,'Created',800114,802652,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7800-9d3f-c98c8da02444')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802640,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:33','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800114,802653,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7656-9eea-fcbb56ad01db')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802641,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:40','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800114,802654,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-73d8-836d-da5c6433ea65')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802642,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:47','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800114,802655,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7414-9c09-0832f488690e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802643,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:07:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:07:54','YYYY-MM-DD HH24:MI:SS'),100,'Active',800114,802656,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7311-b824-18bf70e44e34')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802644,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeEvento',800114,802657,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7408-b4b8-9fde557e2470')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802645,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeEvento_UU',800114,802658,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-733e-bd44-5516f87eb7b8')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802646,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:15','YYYY-MM-DD HH24:MI:SS'),100,'Description',800114,802659,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7cd8-9d6a-0038c0d940b5')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802647,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:22','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800114,802660,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7f7f-b048-0f76faae8f1b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802648,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:29','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800114,802661,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-781a-9791-82bfb8b9a68b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802649,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EventType',800114,802662,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7f62-ada3-6e073d71b63e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802650,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NSeqEvento',800114,802663,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7d33-bfd5-6fcc333d1853')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802651,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DateEvent',800114,802664,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-790e-a33c-ff068b4b554d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802652,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:08:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:08:57','YYYY-MM-DD HH24:MI:SS'),100,'Justification',800114,802665,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-72f7-94b1-dc60ff42c14c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802653,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:04','YYYY-MM-DD HH24:MI:SS'),100,'City',800114,802666,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7868-a377-5836a9f2327c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802654,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:11','YYYY-MM-DD HH24:MI:SS'),100,'Region',800114,802667,'Y','Y',180,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-793c-877c-058dfb948c6b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802655,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DateEncerra',800114,802668,'Y','Y',190,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7c1c-b5cd-913b6c43b91f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802656,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:25','YYYY-MM-DD HH24:MI:SS'),100,'LBR_cStat',800114,802669,'Y','Y',200,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-70df-aed8-b8831a32f249')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802657,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_xMotivo',800114,802670,'Y','Y',210,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-792b-802a-dd971535c895')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802658,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Protocol',800114,802671,'Y','Y',220,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-72d4-bac2-4a1050e4bb60')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802659,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DateProtocol',800114,802672,'Y','Y',230,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-71fc-a9a9-97981b60cd75')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802660,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:09:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:09:53','YYYY-MM-DD HH24:MI:SS'),100,'Processed',800114,802673,'Y','Y',240,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7317-9fe1-f81cb1b0a461')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802661,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,'Name',800114,802674,'Y','Y',250,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7d72-92eb-995b46e08ac3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802662,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:07','YYYY-MM-DD HH24:MI:SS'),100,'CPF',800114,802675,'Y','Y',260,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7d8-7237-bb2e-c69d1daba233')
;

-- 8 de set. de 2026 15:10:14 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800115,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:14','YYYY-MM-DD HH24:MI:SS'),100,'XML',800111,800038,150,1,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f7f9-78b3-863a-80281d6577cb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802663,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:21','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800115,802676,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-755f-99ed-4fdef464d7bb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802664,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:28','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800115,802677,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-75a0-a718-d04542144c8a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802665,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:35','YYYY-MM-DD HH24:MI:SS'),100,'Created',800115,802678,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-74db-9799-f7cc07510207')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802666,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:42','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800115,802679,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-7af5-95be-9983ae7c9845')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802667,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:49','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800115,802680,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-74f4-aced-23cc98f07876')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802668,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:10:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:10:56','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800115,802681,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-7ef6-8d78-866ca7332068')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802669,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:03','YYYY-MM-DD HH24:MI:SS'),100,'Active',800115,802682,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-719f-b2c5-c6fc47709934')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802670,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeXML',800115,802683,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-7e4d-b16b-68d25b23f9da')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802671,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeXML_UU',800115,802684,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-796f-875b-2a1b6baa6ac9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802672,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:24','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico',800115,802685,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-7cb8-9625-6d1b9a5142be')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802673,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeEvento',800115,802686,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-7ea2-b0a5-f43b2e741f39')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802674,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:38','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800115,802687,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-74f8-8eb4-f259b35fff62')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802675,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_XMLType',800115,802688,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-74ae-a5ee-2efc559a1000')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802676,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_XMLContent',800115,802689,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f7f9-7ee4-b555-079c32ad969f')
;

-- 8 de set. de 2026 15:11:59 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800116,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:11:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:11:59','YYYY-MM-DD HH24:MI:SS'),100,'Documentos',800099,800038,160,2,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f81a-7b64-95a2-5a0ebbe27a93')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802677,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:06','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800116,802471,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7ee6-9772-136438438f35')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802678,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:13','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800116,802472,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-715f-995f-5b49909a5849')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802679,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:20','YYYY-MM-DD HH24:MI:SS'),100,'Created',800116,802473,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-708b-a882-9d012ce049cd')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802680,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:27','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800116,802474,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7bd0-8816-236f7dcdbcae')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802681,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:34','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800116,802475,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-76af-a5d9-8c113595bb49')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802682,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:41','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800116,802476,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7dda-bb98-1511e563c07f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802683,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:48','YYYY-MM-DD HH24:MI:SS'),100,'Active',800116,802477,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7fc7-9098-6fcd5b4c695b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802684,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:12:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:12:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeDoc',800116,802478,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7e71-ba54-6c9c806ddf41')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802685,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeDoc_UU',800116,802479,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7525-beee-fc9361e327ac')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802686,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeMunDescarga',800116,802480,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-779d-9920-e5c0301f056f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802687,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:16','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800116,802481,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-71bb-ae39-0afcdb9c14d4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802688,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Tipo de DF-e',800116,802482,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7aeb-95a9-06b309ce5324')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802689,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DFeChave',800116,802483,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81a-7090-993d-a881d6b9f274')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802690,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:37','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian Fiscal Invoice (Nota Fiscal)',800116,802484,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81b-7806-9dd1-830a8d6096e4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802691,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:44','YYYY-MM-DD HH24:MI:SS'),100,'Order',800116,802485,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81b-7866-ad2e-c85b6d120521')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802692,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SegCodBarra',800116,802486,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81b-7cfc-b84e-a727db5eb0ea')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802693,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:13:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:13:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndReentrega',800116,802487,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81b-762e-933f-553959b12744')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802694,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueDoc',800116,802488,'Y','Y',180,'N','N','N','N','N','LBR','N','N','N','01a082c6-f81b-770c-b1cd-47ad16c13846')
;

-- 8 de set. de 2026 15:14:12 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800117,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:12','YYYY-MM-DD HH24:MI:SS'),100,'Produtos perigosos',800100,800038,170,3,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f83d-7b68-ae71-28e1020d0ecb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802695,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:19','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800117,802489,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-70b5-a810-41815edc25f2')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802696,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:26','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800117,802490,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7b05-a357-ea31b7ca0aeb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802697,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:33','YYYY-MM-DD HH24:MI:SS'),100,'Created',800117,802491,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-710a-a066-4ad0d7c74716')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802698,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:40','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800117,802492,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7ba4-b51f-7d1e96bd779f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802699,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:47','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800117,802493,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7e14-9672-16d402cc9115')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802700,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:14:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:14:54','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800117,802494,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7b14-b1e5-a37b45f46342')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802701,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:01','YYYY-MM-DD HH24:MI:SS'),100,'Active',800117,802495,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-760d-935e-57f367e5659f')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802702,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFePerigoso',800117,802496,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7b80-b8a8-df03d0686d1b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802703,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFePerigoso_UU',800117,802497,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7e9f-947f-44e578b95429')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802704,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeDoc',800117,802498,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-73d8-b6dd-9e9cb3671141')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802705,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:29','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800117,802499,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-732d-9599-5aec5b76ee1e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802706,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NONU',800117,802500,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7cfb-b984-df8361db1836')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802707,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_XNomeAE',800117,802501,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-75d1-81ef-a7954e722e5e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802708,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_XClaRisco',800117,802502,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7f6e-9510-afbacbbae970')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802709,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:15:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:15:57','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GrEmb',800117,802503,'Y','Y',150,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7c66-b1de-286b89f574f0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802710,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QTotProd',800117,802504,'Y','Y',160,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7771-9ec2-28bd88fae9d1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802711,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QVolTipo',800117,802505,'Y','Y',170,'N','N','N','N','N','LBR','N','N','N','01a082c6-f83d-7000-9b08-3a6f379c1595')
;

-- 8 de set. de 2026 15:16:18 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800118,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:18','YYYY-MM-DD HH24:MI:SS'),100,'Averbacoes',800108,800038,180,2,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f861-797b-a947-b978364e5ebe')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802712,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:25','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800118,802625,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-70cc-81cc-22827ab875cb')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802713,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:32','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800118,802626,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7717-855e-20605b07c9d4')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802714,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:39','YYYY-MM-DD HH24:MI:SS'),100,'Created',800118,802627,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7317-b8a8-705909919151')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802715,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:46','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800118,802628,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-713b-911d-7ed7c1eedbab')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802716,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:16:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:16:53','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800118,802629,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7813-b6d7-27520572327d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802717,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:00','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800118,802630,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7b38-81d2-01146cbce248')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802718,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:07','YYYY-MM-DD HH24:MI:SS'),100,'Active',800118,802631,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7eb7-a49b-2e4ad7ec4385')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802719,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeAverb',800118,802632,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7250-9d16-9eac6ceae284')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802720,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeAverb_UU',800118,802633,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7871-bb4f-2e02296bfed6')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802721,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeSeg',800118,802634,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7450-b46b-f995d0813446')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802722,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:35','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800118,802635,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-724e-a530-0b8a4475b419')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802723,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NAver',800118,802636,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f862-7eb2-992b-510e2ff249ab')
;

-- 8 de set. de 2026 15:17:49 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800119,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:49','YYYY-MM-DD HH24:MI:SS'),100,'Componentes do frete',800105,800038,190,2,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f882-78a9-a33d-3e1661e7689b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802724,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:17:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:17:56','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800119,802580,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f882-74b1-9509-bf945ca28f34')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802725,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:03','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800119,802581,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f882-7ff2-a8d6-3d09b78862be')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802726,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:10','YYYY-MM-DD HH24:MI:SS'),100,'Created',800119,802582,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f882-7518-bfb2-aeef65401fe0')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802727,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:17','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800119,802583,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f882-771e-bb62-e8b1a22b5a05')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802728,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:24','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800119,802584,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f882-7ff5-8ea2-f4b244ee76d7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802729,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:31','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800119,802585,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f882-7dff-9982-a560a6682c24')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802730,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:38','YYYY-MM-DD HH24:MI:SS'),100,'Active',800119,802586,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f882-70ee-93fe-2b603337da8c')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802731,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeComp',800119,802587,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f883-764e-8897-477b46550b26')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802732,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeComp_UU',800119,802588,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f883-7be1-a33e-5d0cce0153e1')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802733,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:18:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:18:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeInfPag',800119,802589,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f883-7eb8-b886-9fde6a2277b7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802734,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:06','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800119,802590,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f883-7a24-b37d-e01f833caa8a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802735,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TpComp',800119,802591,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f883-772e-9d3f-43a06e58a50a')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802736,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:20','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueComp',800119,802592,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f883-70e6-a885-3aa76ee9ad27')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802737,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR_XComp',800119,802593,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f883-7c9b-8284-635af6c64868')
;

-- 8 de set. de 2026 15:19:34 BRT

INSERT INTO AD_Tab (AD_Tab_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,AD_Window_ID,SeqNo,TabLevel,IsSingleRow,IsTranslationTab,IsReadOnly,HasTree,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,TreeDisplayedOn,AD_Tab_UU) VALUES (800120,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:34','YYYY-MM-DD HH24:MI:SS'),100,'Parcelas',800106,800038,200,2,'N','N','N','N','N','LBR','Y','N','B','01a082c6-f8a5-7197-917f-5acb1f65a8fc')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802738,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:41','YYYY-MM-DD HH24:MI:SS'),100,'Tenant',800120,802594,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-78a0-bee2-f5adb091eeda')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802739,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:48','YYYY-MM-DD HH24:MI:SS'),100,'Organization',800120,802595,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-7590-baaf-bc4404b9688d')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802740,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:19:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:19:55','YYYY-MM-DD HH24:MI:SS'),100,'Created',800120,802596,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-7717-ab57-c29971188d78')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802741,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:02','YYYY-MM-DD HH24:MI:SS'),100,'Created By',800120,802597,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-78f5-8524-0d2efc6292b3')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802742,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:09','YYYY-MM-DD HH24:MI:SS'),100,'Updated',800120,802598,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-7aed-8073-3c5d3e447d78')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802743,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:16','YYYY-MM-DD HH24:MI:SS'),100,'Updated By',800120,802599,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-7872-847d-30988f18e98e')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802744,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:23','YYYY-MM-DD HH24:MI:SS'),100,'Active',800120,802600,'Y','Y',70,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-7d08-be01-818c40eb2f82')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802745,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFePrazo',800120,802601,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-7cba-b203-60bbe7aad179')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802746,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFePrazo_UU',800120,802602,'Y','N',0,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a5-7ecb-83de-56e8a66fc5e6')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802747,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeInfPag',800120,802603,'Y','Y',100,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a6-72ca-8fc1-2a3a4d86371b')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802748,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:51','YYYY-MM-DD HH24:MI:SS'),100,'Line No',800120,802604,'Y','Y',110,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a6-7f6c-804c-f656f814add7')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802749,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:20:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:20:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NParcela',800120,802605,'Y','Y',120,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a6-77eb-9e69-7199452ff1d9')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802750,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:21:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:21:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DateDue',800120,802606,'Y','Y',130,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a6-7bcd-acf7-3c5e24fd3d27')
;

INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsQuickEntry,IsDefaultFocus,IsQuickForm,AD_Field_UU) VALUES (802751,0,0,'Y',TO_TIMESTAMP('2026-09-08 15:21:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 15:21:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ValueParcela',800120,802607,'Y','Y',140,'N','N','N','N','N','LBR','N','N','N','01a082c6-f8a6-7df3-80bf-b20123ee29ea')
;


-- ENTRADA DE MENU DA JANELA
-- 8 de set. de 2026 16:30:00 BRT
INSERT INTO AD_Menu (AD_Menu_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Name,Description,IsSummary,IsSOTrx,IsReadOnly,Action,AD_Window_ID,
       EntityType,AD_Menu_UU)
VALUES (800076,0,0,'Y',TO_TIMESTAMP('2026-09-08 16:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 16:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       'Manifesto Eletronico','Manifesto Eletronico de Documentos Fiscais, modelo 58',
       'N','Y','N','W',800038,'LBR','01a0833f-2f23-7212-95ca-381591f7b84a')
;

-- 8 de set. de 2026 16:30:09 BRT
INSERT INTO AD_TreeNodeMM (AD_Tree_ID,Node_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,
       CreatedBy,Updated,UpdatedBy,Parent_ID,SeqNo,AD_TreeNodeMM_UU)
VALUES (10,800076,0,0,'Y',TO_TIMESTAMP('2026-09-08 16:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 16:30:00','YYYY-MM-DD HH24:MI:SS'),100,1000016,24,'01a0833f-2f23-7004-8257-75fa2888e7b1')
;
