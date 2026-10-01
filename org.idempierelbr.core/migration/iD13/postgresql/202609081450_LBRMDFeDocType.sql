-- Tipo de documento do MDF-e, com sequencia de numeracao propria
SELECT register_migration_script('202609081450_LBRMDFeDocType.sql') FROM dual;

-- 8 de set. de 2026 16:00:00 BRT
INSERT INTO AD_Sequence (AD_Sequence_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,Description,IsAutoSequence,IncrementNo,StartNo,CurrentNext,
       CurrentNextSys,IsAudited,IsTableID,StartNewYear,StartNewMonth,IsOrgLevelSequence,
       AD_Sequence_UU)
SELECT 800725,11,0,'Y',TO_TIMESTAMP('2026-09-08 16:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 16:00:00','YYYY-MM-DD HH24:MI:SS'),100,
       'Manifesto Eletronico','Numeracao do documento MDF-e',
       'Y',1,1000,1000,900,'N','N','N','N','N','01a08333-24bd-7a8d-9c3a-03d6210ba268'
 WHERE NOT EXISTS (SELECT 1 FROM AD_Sequence WHERE AD_Sequence_ID=800725)
;

-- 8 de set. de 2026 16:00:09 BRT
INSERT INTO C_DocType (C_DocType_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,PrintName,Description,DocBaseType,IsSOTrx,IsDocNoControlled,
       DocNoSequence_ID,GL_Category_ID,HasCharges,IsDefault,DocumentCopies,
       IsDefaultCounterDoc,IsShipConfirm,IsPickQAConfirm,IsInTransit,IsSplitWhenDifference,
       IsCreateCounter,IsIndexed,IsPrepareSplitDocument,LBR_IsDocIssuedByOrg,LBR_IsRPS,
       IsAutoGenerateInOut,IsAutoGenerateInvoice,IsCanBeReactivated,IsAlwaysPosted,
       C_DocType_UU)
SELECT 800000,11,0,'Y',TO_TIMESTAMP('2026-09-08 16:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 16:00:00','YYYY-MM-DD HH24:MI:SS'),100,
       'Manifesto Eletronico','Manifesto Eletronico',
       'Manifesto Eletronico de Documentos Fiscais, modelo 58',
       'MDF','Y','Y',800725,
       (SELECT GL_Category_ID FROM GL_Category WHERE AD_Client_ID=11 AND IsDefault='Y'
         ORDER BY GL_Category_ID LIMIT 1),
       'N','Y',0,'N','N','N','N','N','N','Y','N','Y','N','N','N','N','N','01a08333-24bd-74d1-a239-e4befb8a04a2'
 WHERE NOT EXISTS (SELECT 1 FROM C_DocType WHERE AD_Client_ID=11 AND DocBaseType='MDF')
;