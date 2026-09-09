-- Acoes de documento do MDF-e: Preparar, Completar, Fechar e Anular.
SELECT register_migration_script('202609091500_LBRMDFeAcoesDocumento.sql') FROM dual;

-- ---------------------------------------------------------------- workflow
INSERT INTO AD_Workflow (AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Name,Description,AccessLevel,EntityType,DurationUnit,Version,Priority,"limit",
       Duration,Cost,WorkingTime,WaitingTime,PublishStatus,Value,IsDefault,AD_Table_ID,
       ValidateWorkflow,WorkflowType,IsValid,SetupTime,MovingTime,DocumentNo,QtyBatchSize,
       QueuingTime,IsBetaFunctionality,Yield,UnitsCycles,OverlapUnits,AD_Workflow_UU)
VALUES (800004,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        'Process_MDFe','(Standard Process MDFe)','1','LBR','D',0,0,0,0,0,0,0,'R',
        'Process_MDFe','N',(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFe'),
        'N','P','Y',0,0,'10000000',1,0,'N',100,0,0,'01a08a10-0001-7000-9000-000000000001')
;

-- ------------------------------------------------------------------- nos
-- (Start) e o no inicial; Action 'Z' = inicio. Os demais sao Action 'D'
-- (acao de documento) e cada um carrega o DocAction que dispara.
INSERT INTO AD_WF_Node (AD_WF_Node_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Value,Name,Description,AD_Workflow_ID,IsCentrallyMaintained,Action,DocAction,
       EntityType,XPosition,YPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,
       JoinElement,SplitElement,IsAttachedDocumentToEmail,AD_WF_Node_UU)
VALUES (800020,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        '(Start)','(Start)','(Standard Node)',800004,'Y','Z','CO','LBR',1,1,0,0,0,0,0,
        'X','X','N','01a08a10-0002-7000-9000-000000000002')
;

INSERT INTO AD_WF_Node (AD_WF_Node_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Value,Name,Description,AD_Workflow_ID,IsCentrallyMaintained,Action,DocAction,
       EntityType,XPosition,YPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,
       JoinElement,SplitElement,IsAttachedDocumentToEmail,AD_WF_Node_UU)
VALUES (800021,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        '(DocAuto)','(DocAuto)','(Standard Node)',800004,'Y','D','--','LBR',1,3,0,0,0,0,0,
        'X','X','N','01a08a10-0003-7000-9000-000000000003')
;

INSERT INTO AD_WF_Node (AD_WF_Node_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Value,Name,Description,AD_Workflow_ID,IsCentrallyMaintained,Action,DocAction,
       EntityType,XPosition,YPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,
       JoinElement,SplitElement,IsAttachedDocumentToEmail,AD_WF_Node_UU)
VALUES (800022,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        '(DocPrepare)','(DocPrepare)','(Standard Node)',800004,'Y','D','PR','LBR',3,1,0,0,0,0,0,
        'X','X','N','01a08a10-0004-7000-9000-000000000004')
;

INSERT INTO AD_WF_Node (AD_WF_Node_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Value,Name,Description,AD_Workflow_ID,IsCentrallyMaintained,Action,DocAction,
       EntityType,XPosition,YPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,
       JoinElement,SplitElement,IsAttachedDocumentToEmail,AD_WF_Node_UU)
VALUES (800023,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        '(DocComplete)','(DocComplete)','(Standard Node)',800004,'Y','D','CO','LBR',3,3,0,0,0,0,0,
        'X','X','N','01a08a10-0005-7000-9000-000000000005')
;

-- o no inicial so pode ser apontado depois que ele existe
UPDATE AD_Workflow SET AD_WF_Node_ID=800020,
       Updated=TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Workflow_ID=800004
;

-- ------------------------------------------------------------- transicoes
-- (Start) -> (DocPrepare) e o caminho com aprovacao (SeqNo 10, IsStdUserWorkflow);
-- (Start) -> (DocAuto) e o caminho direto (SeqNo 100).
INSERT INTO AD_WF_NodeNext (AD_WF_NodeNext_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,AD_WF_Node_ID,AD_WF_Next_ID,SeqNo,Description,IsStdUserWorkflow,
       EntityType,AD_WF_NodeNext_UU)
VALUES (800014,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        800020,800022,10,'(Standard Approval)','Y','LBR','01a08a10-0006-7000-9000-000000000006')
;

INSERT INTO AD_WF_NodeNext (AD_WF_NodeNext_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,AD_WF_Node_ID,AD_WF_Next_ID,SeqNo,Description,IsStdUserWorkflow,
       EntityType,AD_WF_NodeNext_UU)
VALUES (800015,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        800020,800021,100,'(Standard Approval)','N','LBR','01a08a10-0007-7000-9000-000000000007')
;

INSERT INTO AD_WF_NodeNext (AD_WF_NodeNext_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,AD_WF_Node_ID,AD_WF_Next_ID,SeqNo,Description,IsStdUserWorkflow,
       EntityType,AD_WF_NodeNext_UU)
VALUES (800016,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        800022,800023,100,'(Standard Transition)','N','LBR','01a08a10-0008-7000-9000-000000000008')
;

-- --------------------------------------------------------------- processo
-- Sem Classname de proposito: quem executa e o DocumentEngine, chamado pelo
-- workflow. AccessLevel 3 (cliente e organizacao), como o Processar NFS.
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Value,Name,AccessLevel,EntityType,IsReport,IsDirectPrint,Statistic_Count,
       Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,
       CopyFromProcess,AllowMultipleExecution,AD_Process_UU)
VALUES (800113,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'),100,
        'LBR_MDFe_ProcessarDocumento','Processar MDF-e','3','LBR','N','N',0,0,800004,
        'N','N','Y','N','Y','01a08a10-0009-7000-9000-000000000009')
;

-- ------------------------------------------- amarra o botao DocAction ao processo
UPDATE AD_Column SET AD_Process_ID=800113,
       Updated=TO_TIMESTAMP('2026-09-09 15:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE ColumnName='DocAction'
   AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFe')
;
