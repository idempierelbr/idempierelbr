-- Formulario e menu do MDF-e
SELECT register_migration_script('202609081410_LBRMDFeFormMenu.sql') FROM dual;

-- 8 de set. de 2026 14:00:42 BRT

INSERT INTO AD_Form (AD_Form_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AccessLevel,ClassName,EntityType,IsBetaFunctionality,AD_Form_UU) VALUES (800004,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:42','YYYY-MM-DD HH24:MI:SS'),100,'Emitir MDF-e (LBR)','Emissao do Manifesto Eletronico de Documentos Fiscais (modelo 58)','Monta o MDF-e do rascunho ao encerramento: municipios de carregamento e descarregamento, condutores, reboques, chaves de NF-e, transmissao e eventos.','1','org.idempierelbr.mdfe.apps.form.WMDFeEmissao','LBR','N','01a082c6-f5b2-7e89-897a-e12bf552b95a')
;

-- 8 de set. de 2026 14:00:49 BRT

INSERT INTO AD_Menu (AD_Menu_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsSummary,IsSOTrx,IsReadOnly,Action,AD_Form_ID,EntityType,AD_Menu_UU) VALUES (800075,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:49','YYYY-MM-DD HH24:MI:SS'),100,'Emitir MDF-e (LBR)','Emissao do Manifesto Eletronico de Documentos Fiscais (modelo 58)','N','Y','N','X',800004,'LBR','01a082c6-f5b2-7dc3-b40d-95dd8bcd675a')
;

-- 8 de set. de 2026 14:00:56 BRT

INSERT INTO AD_TreeNodeMM (AD_Tree_ID,Node_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Parent_ID,SeqNo,AD_TreeNodeMM_UU) VALUES (10,800075,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:56','YYYY-MM-DD HH24:MI:SS'),100,1000016,23,'01a082c6-f5b2-74e3-b7b0-4a867f0bbb49')
;
