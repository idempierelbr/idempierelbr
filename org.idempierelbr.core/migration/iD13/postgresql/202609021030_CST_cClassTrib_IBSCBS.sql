-- 
SELECT register_migration_script('202609021030_CST_cClassTrib_IBSCBS.sql') FROM dual;

-- ============================================================================
-- CST-IBS/CBS e cClassTrib (Reforma Tributaria - IBS/CBS)
-- Fonte: CST_cClassTribPublicacao_20250618.xlsx (publicacao de 18/06/2025)
--   aba "CST"    -> LBR_CST_IBSCBS       (17 registros)
--   aba "cClass" -> LBR_ClassTrib_IBSCBS (132 registros)
--
-- Os dados sao gravados como dados de sistema (AD_Client_ID=0 / AD_Org_ID=0),
-- no mesmo padrao de LBR_NCM e LBR_CFOP, para ficarem disponiveis a todos os tenants.
--
-- Convencoes de conversao:
--   ind_* (0/1)      -> LBR_CSTGroupIndicator (lista 800060): "0"/"1"; "?" e vazio -> NULL
--   Sim/Nao          -> _YesNo (lista 319): "Y"/"N"
--   ind_RedutorBC    -> "S"->"Y", "N"->"N", "N/A" e vazio -> NULL
--   pRedIBS/pRedCBS  -> percentual; "N/A" e vazio -> 0
--   Description      -> truncada em 255 caracteres (35 registros truncados)
--
-- O script e re-executavel: atualiza o que ja existe (chave AD_Client_ID=0 + Value)
-- e insere apenas o que falta.
-- ============================================================================

-- ----------------------------------------------------------------------------
-- 1) AccessLevel = 6 (System+Client), necessario para que registros com
--    AD_Client_ID=0 sejam visiveis pelos tenants (MRole.getClientWhere).
--    Mesmo AccessLevel usado por LBR_NCM e LBR_CFOP.
-- ----------------------------------------------------------------------------

UPDATE AD_Table SET AccessLevel='6', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE TableName IN ('LBR_CST_IBSCBS','LBR_ClassTrib_IBSCBS') AND AccessLevel<>'6'
;

-- ----------------------------------------------------------------------------
-- 2) Migra os registros de teste ja existentes no tenant 1000001 para AD_Client_ID=0.
--    Os IDs sao preservados, portanto as FKs em LBR_TaxLine e LBR_DocLine_IBSCBS
--    continuam validas.
-- ----------------------------------------------------------------------------

UPDATE LBR_CST_IBSCBS SET AD_Client_ID=0, AD_Org_ID=0, Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID<>0
  AND Value='000'
  AND NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS c WHERE c.AD_Client_ID=0 AND c.Value=LBR_CST_IBSCBS.Value)
;

UPDATE LBR_ClassTrib_IBSCBS SET AD_Client_ID=0, AD_Org_ID=0, Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID<>0
  AND Value='000001'
  AND NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS c WHERE c.AD_Client_ID=0 AND c.Value=LBR_ClassTrib_IBSCBS.Value)
;

-- ----------------------------------------------------------------------------
-- 3) LBR_CST_IBSCBS (aba "CST")
-- ----------------------------------------------------------------------------

-- CST 000 - Tributação integral
UPDATE LBR_CST_IBSCBS SET Name='Tributação integral',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='Y', LBR_IBSCBSIndNFCe='Y', LBR_IBSCBSIndCTe='Y', LBR_IBSCBSIndCteOS='Y',
  LBR_IBSCBSIndBPe='Y', LBR_IBSCBSIndBPeTM='Y', LBR_IBSCBSIndNF3e='Y', LBR_IBSCBSIndNFCom='Y',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='000'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000000,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'000','Tributação integral',
       '1','0','0','0','0',
       'Y','Y','Y','Y','Y','Y','Y','Y','Y',
       'eec4ac99-488a-5524-9f7b-2346b303e6b2'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000')
;

-- CST 010 - Tributação com alíquotas uniformes
UPDATE LBR_CST_IBSCBS SET Name='Tributação com alíquotas uniformes',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='010'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000001,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'010','Tributação com alíquotas uniformes',
       '0','0','0','0','0',
       'N','N','N','N','N','N','N','N','N',
       '751f3138-60ef-505a-abd0-9d5339b3cf2e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='010')
;

-- CST 011 - Tributação com alíquotas uniformes reduzidas
UPDATE LBR_CST_IBSCBS SET Name='Tributação com alíquotas uniformes reduzidas',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='011'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000002,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'011','Tributação com alíquotas uniformes reduzidas',
       '0','0','0','0','0',
       'N','N','N','N','N','N','N','N','N',
       'af9520aa-ec36-58fe-a4cc-0fa1d6d9cff2'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011')
;

-- CST 200 - Alíquota reduzida
UPDATE LBR_CST_IBSCBS SET Name='Alíquota reduzida',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='1', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='Y', LBR_IBSCBSIndNFCe='Y', LBR_IBSCBSIndCTe='Y', LBR_IBSCBSIndCteOS='Y',
  LBR_IBSCBSIndBPe='Y', LBR_IBSCBSIndBPeTM='Y', LBR_IBSCBSIndNF3e='Y', LBR_IBSCBSIndNFCom='Y',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000003,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'200','Alíquota reduzida',
       '1','0','1','0','0',
       'Y','Y','Y','Y','Y','Y','Y','Y','Y',
       '0a292565-570e-5807-bde3-49ee42ca7b8e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200')
;

-- CST 210 - Redução de alíquota com redutor de base de cálculo
UPDATE LBR_CST_IBSCBS SET Name='Redução de alíquota com redutor de base de cálculo',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='210'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000004,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'210','Redução de alíquota com redutor de base de cálculo',
       '1','0','0','0','0',
       'N','N','N','N','N','N','N','N','Y',
       '1566f890-6b81-5030-8a83-58b68efb4c2e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='210')
;

-- CST 220 - Alíquota fixa
UPDATE LBR_CST_IBSCBS SET Name='Alíquota fixa',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='220'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000005,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'220','Alíquota fixa',
       '1','0','0','0','0',
       'N','N','N','N','N','N','N','N','N',
       '7d9e1265-bc3b-51a2-b20d-a598aa35835e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='220')
;

-- CST 222 - Redução de base de cálculo
UPDATE LBR_CST_IBSCBS SET Name='Redução de base de cálculo',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='222'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000006,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'222','Redução de base de cálculo',
       '1','0','0','0','0',
       'N','N','N','N','N','N','N','N','N',
       '531bfd1b-3a94-556c-8001-7aabdee27bac'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='222')
;

-- CST 221 - Alíquota fixa proporcional
UPDATE LBR_CST_IBSCBS SET Name='Alíquota fixa proporcional',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='221'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000007,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'221','Alíquota fixa proporcional',
       '0','0','0','0','0',
       'N','N','N','N','N','N','N','N','Y',
       '40458d56-2d9a-590e-bfd6-f10d198b3f3a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='221')
;

-- CST 400 - Isenção
UPDATE LBR_CST_IBSCBS SET Name='Isenção',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='Y', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='400'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000008,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'400','Isenção',
       '0','0','0','0','0',
       'N','N','N','N','N','Y','N','N','Y',
       '202e8822-ca4d-5493-b395-0cac7a70c002'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='400')
;

-- CST 410 - Imunidade e não incidência
UPDATE LBR_CST_IBSCBS SET Name='Imunidade e não incidência',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='Y', LBR_IBSCBSIndNFCe='Y', LBR_IBSCBSIndCTe='Y', LBR_IBSCBSIndCteOS='Y',
  LBR_IBSCBSIndBPe='Y', LBR_IBSCBSIndBPeTM='Y', LBR_IBSCBSIndNF3e='Y', LBR_IBSCBSIndNFCom='Y',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000009,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'410','Imunidade e não incidência',
       '0','0','0','0','0',
       'Y','Y','Y','Y','Y','Y','Y','Y','Y',
       '1a44c007-afd3-5ca5-9a3d-0caad74b226b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410')
;

-- CST 510 - Diferimento
UPDATE LBR_CST_IBSCBS SET Name='Diferimento',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='1',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='Y', LBR_IBSCBSIndNFCe='Y', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='Y', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='510'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000010,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'510','Diferimento',
       '1','0','0','1','0',
       'Y','Y','N','N','N','N','Y','N','Y',
       '7ced3c58-8a61-51e4-ade2-a211e53cc029'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='510')
;

-- CST 550 - Suspensão
UPDATE LBR_CST_IBSCBS SET Name='Suspensão',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='Y', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='Y', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000011,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'550','Suspensão',
       '1','0','0','0','0',
       'Y','N','N','N','N','N','Y','N','Y',
       'dd5c60f5-dda2-509b-a278-11f21d124d0b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550')
;

-- CST 620 - Tributação monofásica
UPDATE LBR_CST_IBSCBS SET Name='Tributação monofásica',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='1', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='Y', LBR_IBSCBSIndNFCe='Y', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='620'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000012,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'620','Tributação monofásica',
       '0','1','0','0','0',
       'Y','Y','N','N','N','N','N','N','N',
       '9d7fbfff-83d5-58d4-ace9-e77e01246dbc'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620')
;

-- CST 800 - Transferência de crédito
UPDATE LBR_CST_IBSCBS SET Name='Transferência de crédito',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='1',
  LBR_IBSCBSIndNFe='Y', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='800'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000013,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'800','Transferência de crédito',
       '0','0','0','0','1',
       'Y','N','N','N','N','N','N','N','N',
       '2e3615be-ef89-5643-a4e5-935ffae7917b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='800')
;

-- CST 810 - Ajustes
UPDATE LBR_CST_IBSCBS SET Name='Ajustes',
  LBR_IndgIBSCBS=NULL, LBR_IndgIBSCBSMono=NULL, LBR_IndgIBSCBSRed=NULL, LBR_IndgIBSCBSDif=NULL,
  LBR_IndgIBSCBSTransfCred=NULL,
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='810'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000014,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'810','Ajustes',
       NULL,NULL,NULL,NULL,NULL,
       'N','N','N','N','N','N','N','N','N',
       'fd702f14-8d8f-5869-8cd2-05e7663c6f82'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='810')
;

-- CST 820 - Tributação em declaração de regime específico
UPDATE LBR_CST_IBSCBS SET Name='Tributação em declaração de regime específico',
  LBR_IndgIBSCBS='0', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='N', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='Y', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='820'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000015,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'820','Tributação em declaração de regime específico',
       '0','0','0','0','0',
       'N','N','N','N','N','N','N','N','Y',
       'c681881a-a64c-5220-b86b-5a9fde2dc57a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820')
;

-- CST 830 - Exclusão de base de cálculo
UPDATE LBR_CST_IBSCBS SET Name='Exclusão de base de cálculo',
  LBR_IndgIBSCBS='1', LBR_IndgIBSCBSMono='0', LBR_IndgIBSCBSRed='0', LBR_IndgIBSCBSDif='0',
  LBR_IndgIBSCBSTransfCred='0',
  LBR_IBSCBSIndNFe='N', LBR_IBSCBSIndNFCe='N', LBR_IBSCBSIndCTe='N', LBR_IBSCBSIndCteOS='N',
  LBR_IBSCBSIndBPe='N', LBR_IBSCBSIndBPeTM='N', LBR_IBSCBSIndNF3e='Y', LBR_IBSCBSIndNFCom='N',
  LBR_IBSCBSIndNFSe='N', IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='830'
;
INSERT INTO LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_IndgIBSCBS,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSRed,LBR_IndgIBSCBSDif,LBR_IndgIBSCBSTransfCred,LBR_IBSCBSIndNFe,LBR_IBSCBSIndNFCe,LBR_IBSCBSIndCTe,LBR_IBSCBSIndCteOS,LBR_IBSCBSIndBPe,LBR_IBSCBSIndBPeTM,LBR_IBSCBSIndNF3e,LBR_IBSCBSIndNFCom,LBR_IBSCBSIndNFSe,LBR_CST_IBSCBS_UU)
SELECT 1000016,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,'830','Exclusão de base de cálculo',
       '1','0','0','0','0',
       'N','N','N','N','N','N','Y','N','N',
       '65288c83-c5ec-55b1-a39c-8b2ebd86e62b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='830')
;

-- ----------------------------------------------------------------------------
-- 4) LBR_ClassTrib_IBSCBS (aba "cClass")
-- ----------------------------------------------------------------------------

-- cClassTrib 000001 (CST 000) - Situações tributadas integralmente pelo IBS e CBS.
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
  Name='Situações tributadas integralmente pelo IBS e CBS.',
  Description='Situações tributadas integralmente pelo IBS e CBS.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='000001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000001,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
       '000001','Situações tributadas integralmente pelo IBS e CBS.','Situações tributadas integralmente pelo IBS e CBS.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '08811aa5-c381-59ec-a5ea-880bb04b3104'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='000001')
;

-- cClassTrib 000002 (CST 000) - Exploração de via
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
  Name='Exploração de via',
  Description='Exploração de via, observado o art. 11 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='000002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000002,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
       '000002','Exploração de via','Exploração de via, observado o art. 11 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'fdd7ed6f-a721-5e2b-83ce-b9f40d0b9192'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='000002')
;

-- cClassTrib 000003 (CST 000) - Regime automotivo - projetos incentivados (art. 311)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
  Name='Regime automotivo - projetos incentivados (art. 311)',
  Description='Regime automotivo - projetos incentivados, observado o art. 311 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='000003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000003,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
       '000003','Regime automotivo - projetos incentivados (art. 311)','Regime automotivo - projetos incentivados, observado o art. 311 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '8c72598d-4756-5b00-90a4-128873fb71f1'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='000003')
;

-- cClassTrib 000004 (CST 000) - Regime automotivo - projetos incentivados (art. 312)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
  Name='Regime automotivo - projetos incentivados (art. 312)',
  Description='Regime automotivo - projetos incentivados, observado o art. 312 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='000004'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000004,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='000'),
       '000004','Regime automotivo - projetos incentivados (art. 312)','Regime automotivo - projetos incentivados, observado o art. 312 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'cafab39f-0d8f-5d5d-bc08-c6699ea0467b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='000004')
;

-- cClassTrib 010001 (CST 010) - Operações do FGTS não realizadas pela Caixa Econômica Federal
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='010'),
  Name='Operações do FGTS não realizadas pela Caixa Econômica Federal',
  Description='Operações do FGTS não realizadas pela Caixa Econômica Federal, observado o art. 212 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='010001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000005,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='010'),
       '010001','Operações do FGTS não realizadas pela Caixa Econômica Federal','Operações do FGTS não realizadas pela Caixa Econômica Federal, observado o art. 212 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '5493257c-f3c5-50bc-aead-3bf2f9fad41e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='010001')
;

-- cClassTrib 010002 (CST 010) - Operações do serviço financeiro
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='010'),
  Name='Operações do serviço financeiro',
  Description='Operações do serviço financeiro',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='010002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000006,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='010'),
       '010002','Operações do serviço financeiro','Operações do serviço financeiro',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       'd64ae0dd-d9ab-502c-948c-55d76e365fe2'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='010002')
;

-- cClassTrib 011001 (CST 011) - Planos de assistência funerária.
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
  Name='Planos de assistência funerária.',
  Description='Planos de assistência funerária, observado o art. 236 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='011001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000007,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
       '011001','Planos de assistência funerária.','Planos de assistência funerária, observado o art. 236 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '863c99da-61cc-55bf-acd1-b9ea70a08114'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='011001')
;

-- cClassTrib 011002 (CST 011) - Planos de assistência à saúde
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
  Name='Planos de assistência à saúde',
  Description='Planos de assistência à saúde, observado o art. 237 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='011002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000008,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
       '011002','Planos de assistência à saúde','Planos de assistência à saúde, observado o art. 237 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'a50659e1-f735-5d84-b914-0586bc6d4835'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='011002')
;

-- cClassTrib 011003 (CST 011) - Intermediação de planos de assistência à saúde
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
  Name='Intermediação de planos de assistência à saúde',
  Description='Intermediação de planos de assistência à saúde, observado o art. 240 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='011003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000009,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
       '011003','Intermediação de planos de assistência à saúde','Intermediação de planos de assistência à saúde, observado o art. 240 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'dfc4cbd0-ad54-533d-9be3-ebae52894ec3'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='011003')
;

-- cClassTrib 011004 (CST 011) - Concursos e prognósticos
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
  Name='Concursos e prognósticos',
  Description='Concursos e prognósticos, observado o art. 246 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='011004'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000010,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
       '011004','Concursos e prognósticos','Concursos e prognósticos, observado o art. 246 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '823fd7fc-bd97-53b5-9bd7-b90f5f9432f9'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='011004')
;

-- cClassTrib 011005 (CST 011) - Planos de assistência à saúde de animais domésticos
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
  Name='Planos de assistência à saúde de animais domésticos',
  Description='Planos de assistência à saúde de animais domésticos, observado o art. 243 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=30, LBR_PRedCBS=30, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='011005'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000011,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='011'),
       '011005','Planos de assistência à saúde de animais domésticos','Planos de assistência à saúde de animais domésticos, observado o art. 243 da Lei Complementar nº 214, de 2025.',
       30,30,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'd0186522-ccd4-5927-b7be-c384461f07a9'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='011005')
;

-- cClassTrib 200001 (CST 200) - Aquisições realizadas entre empresas autorizadas a operar em zonas de processame
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Aquisições realizadas entre empresas autorizadas a operar em zonas de processamento de exportação',
  Description='Aquisições de máquinas, de aparelhos, de instrumentos, de equipamentos, de matérias-primas, de produtos intermediários e de materiais de embalagem realizadas entre empresas autorizadas a operar em zonas de processamento de exportação, observado o art....',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000012,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200001','Aquisições realizadas entre empresas autorizadas a operar em zonas de processamento de exportação','Aquisições de máquinas, de aparelhos, de instrumentos, de equipamentos, de matérias-primas, de produtos intermediários e de materiais de embalagem realizadas entre empresas autorizadas a operar em zonas de processamento de exportação, observado o art....',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'dc775e25-10f5-5cf9-979a-2d34cb505ef9'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200001')
;

-- cClassTrib 200002 (CST 200) - Fornecimento ou importação para produtor rural não contribuinte ou TAC
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento ou importação para produtor rural não contribuinte ou TAC',
  Description='Fornecimento ou importação de tratores, máquinas e implementos agrícolas, destinados a produtor rural não contribuinte, e de veículos de transporte de carga destinados a transportador autônomo de carga pessoa física não contribuinte, observado o art. 1...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000013,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200002','Fornecimento ou importação para produtor rural não contribuinte ou TAC','Fornecimento ou importação de tratores, máquinas e implementos agrícolas, destinados a produtor rural não contribuinte, e de veículos de transporte de carga destinados a transportador autônomo de carga pessoa física não contribuinte, observado o art. 1...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'ab255ac8-dc82-564a-aab9-a17e8432e8f1'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200002')
;

-- cClassTrib 200003 (CST 200) - Vendas de produtos destinados à alimentação humana (Anexo I)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Vendas de produtos destinados à alimentação humana (Anexo I)',
  Description='Vendas de produtos destinados à alimentação humana relacionados no Anexo I da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, que compõem a Cesta Básica Nacional de Alimentos, criada nos termos do art. 8º...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000014,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200003','Vendas de produtos destinados à alimentação humana (Anexo I)','Vendas de produtos destinados à alimentação humana relacionados no Anexo I da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, que compõem a Cesta Básica Nacional de Alimentos, criada nos termos do art. 8º...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '1dcac279-4c5f-576d-8d4e-eca05e05bc8b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200003')
;

-- cClassTrib 200004 (CST 200) - Venda de dispositivos médicos (Anexo XII)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Venda de dispositivos médicos (Anexo XII)',
  Description='Venda de dispositivos médicos com a especificação das respectivas classificações da NCM/SH previstas no Anexo XII da Lei Complementar nº 214, de 2025, observado o art. 144 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200004'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000015,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200004','Venda de dispositivos médicos (Anexo XII)','Venda de dispositivos médicos com a especificação das respectivas classificações da NCM/SH previstas no Anexo XII da Lei Complementar nº 214, de 2025, observado o art. 144 da Lei Complementar nº 214, de 2025.',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '99a56c55-83e9-5dd1-91a9-41ee99535a72'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200004')
;

-- cClassTrib 200005 (CST 200) - Venda de dispositivos médicos adquiridos por órgãos da administração pública (An
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Venda de dispositivos médicos adquiridos por órgãos da administração pública (Anexo IV)',
  Description='Venda de dispositivos médicos com a especificação das respectivas classificações da NCM/SH previstas no Anexo IV da Lei Complementar nº 214, de 2025, quando adquiridos por órgãos da administração pública direta, autarquias e fundações públicas, observa...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200005'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000016,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200005','Venda de dispositivos médicos adquiridos por órgãos da administração pública (Anexo IV)','Venda de dispositivos médicos com a especificação das respectivas classificações da NCM/SH previstas no Anexo IV da Lei Complementar nº 214, de 2025, quando adquiridos por órgãos da administração pública direta, autarquias e fundações públicas, observa...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '96a23452-921b-5a89-9c64-825c963c4e40'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200005')
;

-- cClassTrib 200006 (CST 200) - Situação de emergência de saúde pública reconhecida pelo Poder público (Anexo XI
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Situação de emergência de saúde pública reconhecida pelo Poder público (Anexo XII)',
  Description='Situação de emergência de saúde pública reconhecida pelo Poder Legislativo federal, estadual, distrital ou municipal competente, ato conjunto do Ministro da Fazenda e do Comitê Gestor do IBS poderá ser editado, a qualquer momento, para incluir disposit...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200006'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000017,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200006','Situação de emergência de saúde pública reconhecida pelo Poder público (Anexo XII)','Situação de emergência de saúde pública reconhecida pelo Poder Legislativo federal, estadual, distrital ou municipal competente, ato conjunto do Ministro da Fazenda e do Comitê Gestor do IBS poderá ser editado, a qualquer momento, para incluir disposit...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'e68dd2aa-b77f-5e1d-a208-a09572ca3bb5'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200006')
;

-- cClassTrib 200007 (CST 200) - Fornecimento dos dispositivos de acessibilidade próprios para pessoas com defici
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência (Anexo XIII)',
  Description='Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência relacionados no Anexo XIII da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 145 da Lei Complementar...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200007'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000018,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200007','Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência (Anexo XIII)','Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência relacionados no Anexo XIII da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 145 da Lei Complementar...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '7bbad3b2-5445-5793-a509-e2fbaa82f00e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200007')
;

-- cClassTrib 200008 (CST 200) - Fornecimento dos dispositivos de acessibilidade próprios para pessoas com defici
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência adquiridos por órgãos da administração pública (Anexo V)',
  Description='Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência relacionados no Anexo V da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, quando adquiridos por órgãos da administraç...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200008'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000019,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200008','Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência adquiridos por órgãos da administração pública (Anexo V)','Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência relacionados no Anexo V da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, quando adquiridos por órgãos da administraç...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'e9c1e6b4-3040-5ee1-ad85-0f08c3746e33'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200008')
;

-- cClassTrib 200009 (CST 200) - Fornecimento de medicamentos (Anexo XIV)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento de medicamentos (Anexo XIV)',
  Description='Fornecimento dos medicamentos relacionados no Anexo XIV da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 146 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200009'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000020,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200009','Fornecimento de medicamentos (Anexo XIV)','Fornecimento dos medicamentos relacionados no Anexo XIV da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 146 da Lei Complementar nº 214, de 2025.',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'ce51bcf8-a03b-5e07-865d-8af35fd234f9'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200009')
;

-- cClassTrib 200010 (CST 200) - Fornecimento dos medicamentos registrados na Anvisa, adquiridos por órgãos da ad
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos medicamentos registrados na Anvisa, adquiridos por órgãos da administração pública',
  Description='Fornecimento dos medicamentos registrados na Anvisa, quando adquiridos por órgãos da administração pública direta, autarquias, fundações públicas e entidades imunes, observado o art. 146 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200010'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000021,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200010','Fornecimento dos medicamentos registrados na Anvisa, adquiridos por órgãos da administração pública','Fornecimento dos medicamentos registrados na Anvisa, quando adquiridos por órgãos da administração pública direta, autarquias, fundações públicas e entidades imunes, observado o art. 146 da Lei Complementar nº 214, de 2025.',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '55eac2f3-f67c-5323-b7a7-d985258fd538'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200010')
;

-- cClassTrib 200011 (CST 200) - Fornecimento das composições para nutrição enteral e parenteral quando adquirida
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento das composições para nutrição enteral e parenteral quando adquiridas por órgãos da administração pública (Anexo VI)',
  Description='Fornecimento das composições para nutrição enteral e parenteral, composições especiais e fórmulas nutricionais destinadas às pessoas com erros inatos do metabolismo relacionadas no Anexo VI da Lei Complementar nº 214, de 2025, com a especificação das r...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200011'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000022,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200011','Fornecimento das composições para nutrição enteral e parenteral quando adquiridas por órgãos da administração pública (Anexo VI)','Fornecimento das composições para nutrição enteral e parenteral, composições especiais e fórmulas nutricionais destinadas às pessoas com erros inatos do metabolismo relacionadas no Anexo VI da Lei Complementar nº 214, de 2025, com a especificação das r...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '666cce0f-84c3-5b1c-9bc7-30126f4f2fd5'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200011')
;

-- cClassTrib 200012 (CST 200) - Situação de emergência de saúde pública reconhecida pelo Poder público (Anexo XI
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Situação de emergência de saúde pública reconhecida pelo Poder público (Anexo XIV)',
  Description='Situação de emergência de saúde pública reconhecida pelo Poder Legislativo federal, estadual, distrital ou municipal competente, ato conjunto do Ministro da Fazenda e do Comitê Gestor do IBS poderá ser editado, a qualquer momento, para incluir disposit...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200012'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000023,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200012','Situação de emergência de saúde pública reconhecida pelo Poder público (Anexo XIV)','Situação de emergência de saúde pública reconhecida pelo Poder Legislativo federal, estadual, distrital ou municipal competente, ato conjunto do Ministro da Fazenda e do Comitê Gestor do IBS poderá ser editado, a qualquer momento, para incluir disposit...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'fa241f7e-0263-5f15-9a9d-6d02f2e5c9eb'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200012')
;

-- cClassTrib 200013 (CST 200) - Fornecimento de tampões higiênicos, absorventes higiênicos internos ou externos
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento de tampões higiênicos, absorventes higiênicos internos ou externos',
  Description='Fornecimento de tampões higiênicos, absorventes higiênicos internos ou externos, descartáveis ou reutilizáveis, calcinhas absorventes e coletores menstruais, observado o art. 147 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200013'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000024,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200013','Fornecimento de tampões higiênicos, absorventes higiênicos internos ou externos','Fornecimento de tampões higiênicos, absorventes higiênicos internos ou externos, descartáveis ou reutilizáveis, calcinhas absorventes e coletores menstruais, observado o art. 147 da Lei Complementar nº 214, de 2025.',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '8ccb1292-f729-59e2-ae49-5ccc3d174f45'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200013')
;

-- cClassTrib 200014 (CST 200) - Fornecimento dos produtos hortícolas, frutas e ovos (Anexo XV)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos produtos hortícolas, frutas e ovos (Anexo XV)',
  Description='Fornecimento dos produtos hortícolas, frutas e ovos, relacionados no Anexo XV da Lei Complementar nº 214 , de 2025, com a especificação das respectivas classificações da NCM/SH e desde que não cozidos, observado o art. 148 da Lei Complementar nº 214, d...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200014'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000025,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200014','Fornecimento dos produtos hortícolas, frutas e ovos (Anexo XV)','Fornecimento dos produtos hortícolas, frutas e ovos, relacionados no Anexo XV da Lei Complementar nº 214 , de 2025, com a especificação das respectivas classificações da NCM/SH e desde que não cozidos, observado o art. 148 da Lei Complementar nº 214, d...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '2c502945-00cd-5d31-9757-103bb1053c27'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200014')
;

-- cClassTrib 200015 (CST 200) - Venda de automóveis de passageiros de fabricação nacional adquiridos por motoris
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Venda de automóveis de passageiros de fabricação nacional adquiridos por motoristas profissionais ou pessoas com deficiência',
  Description='Venda de automóveis de passageiros de fabricação nacional de, no mínimo, 4 (quatro) portas, inclusive a de acesso ao bagageiro, quando adquiridos por motoristas profissionais que exerçam, comprovadamente, em automóvel de sua propriedade, atividade de c...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200015'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000026,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200015','Venda de automóveis de passageiros de fabricação nacional adquiridos por motoristas profissionais ou pessoas com deficiência','Venda de automóveis de passageiros de fabricação nacional de, no mínimo, 4 (quatro) portas, inclusive a de acesso ao bagageiro, quando adquiridos por motoristas profissionais que exerçam, comprovadamente, em automóvel de sua propriedade, atividade de c...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '88988609-d088-500d-9f39-2a2b6f12de58'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200015')
;

-- cClassTrib 200016 (CST 200) - Prestação de serviços de pesquisa e desenvolvimento por Instituição Científica, 
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Prestação de serviços de pesquisa e desenvolvimento por Instituição Científica, Tecnológica e de Inovação (ICT)',
  Description='Prestação de serviços de pesquisa e desenvolvimento por Instituição Científica, Tecnológica e de Inovação (ICT) sem fins lucrativos para a administração pública direta, autarquias e fundações públicas ou para o contribuinte sujeito ao regime regular do...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200016'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000027,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200016','Prestação de serviços de pesquisa e desenvolvimento por Instituição Científica, Tecnológica e de Inovação (ICT)','Prestação de serviços de pesquisa e desenvolvimento por Instituição Científica, Tecnológica e de Inovação (ICT) sem fins lucrativos para a administração pública direta, autarquias e fundações públicas ou para o contribuinte sujeito ao regime regular do...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'ba1bc363-cdb2-581e-bc46-1ffa2c70cec9'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200016')
;

-- cClassTrib 200017 (CST 200) - Operações relacionadas ao FGTS
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operações relacionadas ao FGTS',
  Description='Operações relacionadas ao FGTS, considerando aquelas necessárias à aplicação da Lei nº 8.036, de 1990, realizadas pelo Conselho Curador ou Secretaria Executiva do FGTS, observado o art. 212 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200017'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000028,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200017','Operações relacionadas ao FGTS','Operações relacionadas ao FGTS, considerando aquelas necessárias à aplicação da Lei nº 8.036, de 1990, realizadas pelo Conselho Curador ou Secretaria Executiva do FGTS, observado o art. 212 da Lei Complementar nº 214, de 2025.',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '6163bb18-7cd9-5ebb-9640-d1f125fb05eb'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200017')
;

-- cClassTrib 200018 (CST 200) - Operações de resseguro e retrocessão
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operações de resseguro e retrocessão',
  Description='Operações de resseguro e retrocessão ficam sujeitas à incidência à alíquota zero, inclusive quando os prêmios de resseguro e retrocessão forem cedidos ao exterior, observado o art. 223 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200018'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000029,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200018','Operações de resseguro e retrocessão','Operações de resseguro e retrocessão ficam sujeitas à incidência à alíquota zero, inclusive quando os prêmios de resseguro e retrocessão forem cedidos ao exterior, observado o art. 223 da Lei Complementar nº 214, de 2025.',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'e1c849b6-cdae-5432-9cbb-478a1400d791'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200018')
;

-- cClassTrib 200019 (CST 200) - Importador dos serviços financeiros contribuinte
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Importador dos serviços financeiros contribuinte',
  Description='Importador dos serviços financeiros seja contribuinte que realize as operações de que tratam os incisos I a V do caput do art. 182, será aplicada alíquota zero na importação, sem prejuízo da manutenção do direito de dedução dessas despesas da base de c...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200019'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000030,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200019','Importador dos serviços financeiros contribuinte','Importador dos serviços financeiros seja contribuinte que realize as operações de que tratam os incisos I a V do caput do art. 182, será aplicada alíquota zero na importação, sem prejuízo da manutenção do direito de dedução dessas despesas da base de c...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '3a3fa647-c034-5dcf-934a-6821638e8500'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200019')
;

-- cClassTrib 200020 (CST 200) - Operação praticada por sociedades cooperativas optantes por regime específico do
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operação praticada por sociedades cooperativas optantes por regime específico do IBS e CBS',
  Description='Operação praticada por sociedades cooperativas optantes por regime específico do IBS e CBS, quando o associado destinar bem ou serviço à cooperativa de que participa, e a cooperativa fornecer bem ou serviço ao associado sujeito ao regime regular do IBS...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200020'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000031,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200020','Operação praticada por sociedades cooperativas optantes por regime específico do IBS e CBS','Operação praticada por sociedades cooperativas optantes por regime específico do IBS e CBS, quando o associado destinar bem ou serviço à cooperativa de que participa, e a cooperativa fornecer bem ou serviço ao associado sujeito ao regime regular do IBS...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '8b9b685f-bc74-591b-8314-7236359dc77b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200020')
;

-- cClassTrib 200021 (CST 200) - Serviços de transporte público coletivo de passageiros ferroviário e hidroviário
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Serviços de transporte público coletivo de passageiros ferroviário e hidroviário',
  Description='Serviços de transporte público coletivo de passageiros ferroviário e hidroviário urbanos, semiurbanos e metropolitanos, observado o art. 285 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200021'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000032,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200021','Serviços de transporte público coletivo de passageiros ferroviário e hidroviário','Serviços de transporte público coletivo de passageiros ferroviário e hidroviário urbanos, semiurbanos e metropolitanos, observado o art. 285 da Lei Complementar nº 214, de 2025.',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '25ba255a-8e87-5368-a397-95c1893c1307'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200021')
;

-- cClassTrib 200022 (CST 200) - Operação originada fora da ZFM que destine bem material industrializado a contri
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operação originada fora da ZFM que destine bem material industrializado a contribuinte estabelecido na ZFM',
  Description='Operação originada fora da Zona Franca de Manaus que destine bem material industrializado de origem nacional a contribuinte estabelecido na Zona Franca de Manaus que seja habilitado nos termos do art. 442 da Lei Complementar nº 214, de 2025, e sujeito...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200022'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000033,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200022','Operação originada fora da ZFM que destine bem material industrializado a contribuinte estabelecido na ZFM','Operação originada fora da Zona Franca de Manaus que destine bem material industrializado de origem nacional a contribuinte estabelecido na Zona Franca de Manaus que seja habilitado nos termos do art. 442 da Lei Complementar nº 214, de 2025, e sujeito...',
       100,100,NULL,'1','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '3859ce62-56cb-533d-be70-4ec917882d35'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200022')
;

-- cClassTrib 200023 (CST 200) - Operação realizada por indústria incentivada que destine bem material intermediá
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operação realizada por indústria incentivada que destine bem material intermediário para outra indústria incentivada na ZFM',
  Description='Operação realizada por indústria incentivada que destine bem material intermediário para outra indústria incentivada na Zona Franca de Manaus, desde que a entrega ou disponibilização dos bens ocorra dentro da referida área, observado o art. 448 da Lei...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200023'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000034,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200023','Operação realizada por indústria incentivada que destine bem material intermediário para outra indústria incentivada na ZFM','Operação realizada por indústria incentivada que destine bem material intermediário para outra indústria incentivada na Zona Franca de Manaus, desde que a entrega ou disponibilização dos bens ocorra dentro da referida área, observado o art. 448 da Lei...',
       100,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'ebaad6b9-f419-5983-8c8c-a485716dc514'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200023')
;

-- cClassTrib 200024 (CST 200) - Operação originada fora das Áreas de Livre Comércio destinadas a contribuinte es
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operação originada fora das Áreas de Livre Comércio destinadas a contribuinte estabelecido nas Áreas de Livre Comércio',
  Description='Operação originada fora das Áreas de Livre Comércio que destine bem material industrializado de origem nacional a contribuinte estabelecido nas Áreas de Livre Comércio que seja habilitado nos termos do art. 456 da Lei Complementar nº 214, de 2025, e su...',
  LBR_PRedIBS=100, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200024'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000035,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200024','Operação originada fora das Áreas de Livre Comércio destinadas a contribuinte estabelecido nas Áreas de Livre Comércio','Operação originada fora das Áreas de Livre Comércio que destine bem material industrializado de origem nacional a contribuinte estabelecido nas Áreas de Livre Comércio que seja habilitado nos termos do art. 456 da Lei Complementar nº 214, de 2025, e su...',
       100,100,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '34c18e44-76d8-52e7-b122-7d763c39e6a5'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200024')
;

-- cClassTrib 200025 (CST 200) - Fornecimento dos serviços de educação relacionados ao Programa Universidade para
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos serviços de educação relacionados ao Programa Universidade para Todos (Prouni)',
  Description='Fornecimento dos serviços de educação relacionados ao Programa Universidade para Todos (Prouni), instituído pela Lei nº 11.096, de 13 de janeiro de 2005, observado o art. 308 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=100, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200025'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000036,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200025','Fornecimento dos serviços de educação relacionados ao Programa Universidade para Todos (Prouni)','Fornecimento dos serviços de educação relacionados ao Programa Universidade para Todos (Prouni), instituído pela Lei nº 11.096, de 13 de janeiro de 2005, observado o art. 308 da Lei Complementar nº 214, de 2025.',
       60,100,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '06c9cd90-7b26-522a-a5f1-f8c9877956df'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200025')
;

-- cClassTrib 200026 (CST 200) - Locação de imóveis localizados nas zonas reabilitadas
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Locação de imóveis localizados nas zonas reabilitadas',
  Description='Locação de imóveis localizados nas zonas reabilitadas, pelo prazo de 5 (cinco) anos, contado da data de expedição do habite-se, e relacionados a projetos de reabilitação urbana de zonas históricas e de áreas críticas de recuperação e reconversão urbaní...',
  LBR_PRedIBS=80, LBR_PRedCBS=80, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200026'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000037,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200026','Locação de imóveis localizados nas zonas reabilitadas','Locação de imóveis localizados nas zonas reabilitadas, pelo prazo de 5 (cinco) anos, contado da data de expedição do habite-se, e relacionados a projetos de reabilitação urbana de zonas históricas e de áreas críticas de recuperação e reconversão urbaní...',
       80,80,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '0070b166-dde1-59fa-b353-168c4429143c'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200026')
;

-- cClassTrib 200027 (CST 200) - Operações de locação, cessão onerosa e arrendamento de bens imóveis
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operações de locação, cessão onerosa e arrendamento de bens imóveis',
  Description='Operações de locação, cessão onerosa e arrendamento de bens imóveis, observado o art. 261 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=70, LBR_PRedCBS=70, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200027'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000038,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200027','Operações de locação, cessão onerosa e arrendamento de bens imóveis','Operações de locação, cessão onerosa e arrendamento de bens imóveis, observado o art. 261 da Lei Complementar nº 214, de 2025.',
       70,70,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '92a90832-7509-55aa-8d96-4423f2b0cab1'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200027')
;

-- cClassTrib 200028 (CST 200) - Fornecimento dos serviços de educação (Anexo II)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos serviços de educação (Anexo II)',
  Description='Fornecimento dos serviços de educação relacionados no Anexo II da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da Nomenclatura Brasileira de Serviços, Intangíveis e Outras Operações que Produzam Variações no Patr...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200028'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000039,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200028','Fornecimento dos serviços de educação (Anexo II)','Fornecimento dos serviços de educação relacionados no Anexo II da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da Nomenclatura Brasileira de Serviços, Intangíveis e Outras Operações que Produzam Variações no Patr...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '52b855e5-ebd8-5021-992b-5e855b16a15a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200028')
;

-- cClassTrib 200029 (CST 200) - Fornecimento dos serviços de saúde humana (Anexo III)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos serviços de saúde humana (Anexo III)',
  Description='Fornecimento dos serviços de saúde humana relacionados no Anexo III da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NBS, observado o art. 130 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200029'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000040,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200029','Fornecimento dos serviços de saúde humana (Anexo III)','Fornecimento dos serviços de saúde humana relacionados no Anexo III da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NBS, observado o art. 130 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'd53c05aa-362e-5bdd-beb9-3a29ba844f2b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200029')
;

-- cClassTrib 200030 (CST 200) - Venda dos dispositivos médicos (Anexo IV)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Venda dos dispositivos médicos (Anexo IV)',
  Description='Venda dos dispositivos médicos relacionados no Anexo IV da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 131 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200030'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000041,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200030','Venda dos dispositivos médicos (Anexo IV)','Venda dos dispositivos médicos relacionados no Anexo IV da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 131 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'dc722fca-d347-5639-a25d-697d1d415dac'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200030')
;

-- cClassTrib 200031 (CST 200) - Fornecimento dos dispositivos de acessibilidade próprios para pessoas com defici
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência (Anexo V)',
  Description='Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência relacionados no Anexo V da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 132 da Lei Complementar nº...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200031'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000042,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200031','Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência (Anexo V)','Fornecimento dos dispositivos de acessibilidade próprios para pessoas com deficiência relacionados no Anexo V da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 132 da Lei Complementar nº...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'dbfb1cdd-7f2d-5e62-bc40-c24659eb6cf6'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200031')
;

-- cClassTrib 200032 (CST 200) - Fornecimento dos medicamentos registrados na Anvisa ou produzidos por farmácias 
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos medicamentos registrados na Anvisa ou produzidos por farmácias de manipulação, ressalvados os medicamentos sujeitos à alíquota zero',
  Description='Fornecimento dos medicamentos registrados na Anvisa ou produzidos por farmácias de manipulação, ressalvados os medicamentos sujeitos à alíquota zero de que trata o art. 141 da Lei Complementar nº 214, de 2025, observado o art. 133 da Lei Complementar n...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200032'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000043,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200032','Fornecimento dos medicamentos registrados na Anvisa ou produzidos por farmácias de manipulação, ressalvados os medicamentos sujeitos à alíquota zero','Fornecimento dos medicamentos registrados na Anvisa ou produzidos por farmácias de manipulação, ressalvados os medicamentos sujeitos à alíquota zero de que trata o art. 141 da Lei Complementar nº 214, de 2025, observado o art. 133 da Lei Complementar n...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '0315e3ed-1c2d-506e-b753-27cb8de4cb64'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200032')
;

-- cClassTrib 200033 (CST 200) - Fornecimento das composições para nutrição enteral e parenteral (Anexo VI)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento das composições para nutrição enteral e parenteral (Anexo VI)',
  Description='Fornecimento das composições para nutrição enteral e parenteral, composições especiais e fórmulas nutricionais destinadas às pessoas com erros inatos do metabolismo relacionadas no Anexo VI da Lei Complementar nº 214, de 2025, com a especificação das r...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200033'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000044,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200033','Fornecimento das composições para nutrição enteral e parenteral (Anexo VI)','Fornecimento das composições para nutrição enteral e parenteral, composições especiais e fórmulas nutricionais destinadas às pessoas com erros inatos do metabolismo relacionadas no Anexo VI da Lei Complementar nº 214, de 2025, com a especificação das r...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'f7a457ea-465d-5a7f-93cb-bc2193ed1a56'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200033')
;

-- cClassTrib 200034 (CST 200) - Fornecimento dos alimentos destinados ao consumo humano (Anexo VII)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos alimentos destinados ao consumo humano (Anexo VII)',
  Description='Fornecimento dos alimentos destinados ao consumo humano relacionados no Anexo VII da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 135 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200034'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000045,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200034','Fornecimento dos alimentos destinados ao consumo humano (Anexo VII)','Fornecimento dos alimentos destinados ao consumo humano relacionados no Anexo VII da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 135 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'f4b5ff8a-d1f2-57ba-93f0-c56ed5b756e9'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200034')
;

-- cClassTrib 200035 (CST 200) - Fornecimento dos produtos de higiene pessoal e limpeza (Anexo VIII)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos produtos de higiene pessoal e limpeza (Anexo VIII)',
  Description='Fornecimento dos produtos de higiene pessoal e limpeza relacionados no Anexo VIII da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 136 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200035'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000046,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200035','Fornecimento dos produtos de higiene pessoal e limpeza (Anexo VIII)','Fornecimento dos produtos de higiene pessoal e limpeza relacionados no Anexo VIII da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH, observado o art. 136 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '00f67bc8-9383-5bd0-8b85-8ea5c42daef8'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200035')
;

-- cClassTrib 200036 (CST 200) - Fornecimento de produtos agropecuários, aquícolas, pesqueiros, florestais e extr
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento de produtos agropecuários, aquícolas, pesqueiros, florestais e extrativistas vegetais in natura',
  Description='Fornecimento de produtos agropecuários, aquícolas, pesqueiros, florestais e extrativistas vegetais in natura, observado o art. 137 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200036'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000047,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200036','Fornecimento de produtos agropecuários, aquícolas, pesqueiros, florestais e extrativistas vegetais in natura','Fornecimento de produtos agropecuários, aquícolas, pesqueiros, florestais e extrativistas vegetais in natura, observado o art. 137 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '3e52c821-0888-5c82-8bc1-aba685ed29d2'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200036')
;

-- cClassTrib 200037 (CST 200) - Fornecimento de serviços ambientais de conservação ou recuperação da vegetação n
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento de serviços ambientais de conservação ou recuperação da vegetação nativa',
  Description='Fornecimento de serviços ambientais de conservação ou recuperação da vegetação nativa, mesmo que fornecidos sob a forma de manejo sustentável de sistemas agrícolas, agroflorestais e agrossilvopastoris, em conformidade com as definições e requisitos da...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200037'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000048,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200037','Fornecimento de serviços ambientais de conservação ou recuperação da vegetação nativa','Fornecimento de serviços ambientais de conservação ou recuperação da vegetação nativa, mesmo que fornecidos sob a forma de manejo sustentável de sistemas agrícolas, agroflorestais e agrossilvopastoris, em conformidade com as definições e requisitos da...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '39a7e976-2044-5fbc-9ce8-62a67da3ca64'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200037')
;

-- cClassTrib 200038 (CST 200) - Fornecimento dos insumos agropecuários e aquícolas (Anexo IX)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos insumos agropecuários e aquícolas (Anexo IX)',
  Description='Fornecimento dos insumos agropecuários e aquícolas relacionados no Anexo IX da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH e da NBS, observado o art. 138 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200038'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000049,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200038','Fornecimento dos insumos agropecuários e aquícolas (Anexo IX)','Fornecimento dos insumos agropecuários e aquícolas relacionados no Anexo IX da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NCM/SH e da NBS, observado o art. 138 da Lei Complementar nº 214, de 2025.',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '7695a856-6669-5c82-acf8-0500fcc474a5'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200038')
;

-- cClassTrib 200039 (CST 200) - Fornecimento dos serviços e o licenciamento ou cessão dos direitos destinados às
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento dos serviços e o licenciamento ou cessão dos direitos destinados às produções nacionais artísticas (Anexo X)',
  Description='Fornecimento dos serviços e o licenciamento ou cessão dos direitos relacionados no Anexo X da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NBS, quando destinados às seguintes produções nacionais artísticas, cu...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200039'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000050,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200039','Fornecimento dos serviços e o licenciamento ou cessão dos direitos destinados às produções nacionais artísticas (Anexo X)','Fornecimento dos serviços e o licenciamento ou cessão dos direitos relacionados no Anexo X da Lei Complementar nº 214, de 2025, com a especificação das respectivas classificações da NBS, quando destinados às seguintes produções nacionais artísticas, cu...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '11dab809-c5e6-50ef-8f4c-c05f337d16f0'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200039')
;

-- cClassTrib 200040 (CST 200) - Fornecimento de serviços de comunicação institucional à administração pública
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento de serviços de comunicação institucional à administração pública',
  Description='Fornecimento dos seguintes serviços de comunicação institucional à administração pública direta, autarquias e fundações públicas: serviços direcionados ao planejamento, criação, programação e manutenção de páginas eletrônicas da administração pública,...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200040'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000051,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200040','Fornecimento de serviços de comunicação institucional à administração pública','Fornecimento dos seguintes serviços de comunicação institucional à administração pública direta, autarquias e fundações públicas: serviços direcionados ao planejamento, criação, programação e manutenção de páginas eletrônicas da administração pública,...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '0be196b4-2504-5e05-88ed-4d4a53206ce7'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200040')
;

-- cClassTrib 200041 (CST 200) - Fornecimento de serviço de educação desportiva (art. 141. I)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento de serviço de educação desportiva (art. 141. I)',
  Description='Operações relacionadas às seguintes atividades desportivas: fornecimento de serviço de educação desportiva, classificado no código 1.2205.12.00 da NBS, e gestão e exploração do desporto por associações e clubes esportivos filiados ao órgão estadual ou...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200041'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000052,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200041','Fornecimento de serviço de educação desportiva (art. 141. I)','Operações relacionadas às seguintes atividades desportivas: fornecimento de serviço de educação desportiva, classificado no código 1.2205.12.00 da NBS, e gestão e exploração do desporto por associações e clubes esportivos filiados ao órgão estadual ou...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '697d1387-5172-5dd0-aee5-d75d44519979'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200041')
;

-- cClassTrib 200042 (CST 200) - Fornecimento de serviço de educação desportiva (art. 141. II)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento de serviço de educação desportiva (art. 141. II)',
  Description='Operações relacionadas ao fornecimento de serviço de educação desportiva, classificado no código 1.2205.12.00 da NBS, observado o art. 141 da Lei Complementar nº 214, de 2025. Operações relacionadas às seguintes atividades desportivas: operações e pres...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200042'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000053,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200042','Fornecimento de serviço de educação desportiva (art. 141. II)','Operações relacionadas ao fornecimento de serviço de educação desportiva, classificado no código 1.2205.12.00 da NBS, observado o art. 141 da Lei Complementar nº 214, de 2025. Operações relacionadas às seguintes atividades desportivas: operações e pres...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'ddc4d492-5bf4-5779-a21c-bf04335330ef'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200042')
;

-- cClassTrib 200043 (CST 200) - Fornecimento à administração pública dos serviços e dos bens relativos à soberan
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Fornecimento à administração pública dos serviços e dos bens relativos à soberania (Anexo XI)',
  Description='Fornecimento à administração pública direta, autarquias e fundações púbicas dos serviços e dos bens relativos à soberania e à segurança nacional, à segurança da informação e à segurança cibernética relacionados no Anexo XI da Lei Complementar nº 214, d...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200043'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000054,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200043','Fornecimento à administração pública dos serviços e dos bens relativos à soberania (Anexo XI)','Fornecimento à administração pública direta, autarquias e fundações púbicas dos serviços e dos bens relativos à soberania e à segurança nacional, à segurança da informação e à segurança cibernética relacionados no Anexo XI da Lei Complementar nº 214, d...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '3aaf9c56-43c2-5e55-aec5-8c22a108db4c'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200043')
;

-- cClassTrib 200044 (CST 200) - Operações e prestações de serviços de segurança da informação e segurança cibern
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operações e prestações de serviços de segurança da informação e segurança cibernética desenvolvidos por sociedade que tenha sócio brasileiro (Anexo XI)',
  Description='Operações e prestações de serviços de segurança da informação e segurança cibernética desenvolvidos por sociedade que tenha sócio brasileiro com o mínimo de 20% (vinte por cento) do seu capital social, relacionados no Anexo XI da Lei Complementar nº 21...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200044'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000055,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200044','Operações e prestações de serviços de segurança da informação e segurança cibernética desenvolvidos por sociedade que tenha sócio brasileiro (Anexo XI)','Operações e prestações de serviços de segurança da informação e segurança cibernética desenvolvidos por sociedade que tenha sócio brasileiro com o mínimo de 20% (vinte por cento) do seu capital social, relacionados no Anexo XI da Lei Complementar nº 21...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'f50987cf-7cfa-574b-a5d7-5bd8bffab52c'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200044')
;

-- cClassTrib 200045 (CST 200) - Operações relacionadas a projetos de reabilitação urbana de zonas históricas e d
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operações relacionadas a projetos de reabilitação urbana de zonas históricas e de áreas críticas de recuperação e reconversão urbanística',
  Description='Operações relacionadas a projetos de reabilitação urbana de zonas históricas e de áreas críticas de recuperação e reconversão urbanística dos Municípios ou do Distrito Federal, a serem delimitadas por lei municipal ou distrital, observado o art. 158 da...',
  LBR_PRedIBS=60, LBR_PRedCBS=60, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200045'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000056,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200045','Operações relacionadas a projetos de reabilitação urbana de zonas históricas e de áreas críticas de recuperação e reconversão urbanística','Operações relacionadas a projetos de reabilitação urbana de zonas históricas e de áreas críticas de recuperação e reconversão urbanística dos Municípios ou do Distrito Federal, a serem delimitadas por lei municipal ou distrital, observado o art. 158 da...',
       60,60,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'a9ec776e-25e4-58b3-842c-a272095db76b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200045')
;

-- cClassTrib 200046 (CST 200) - Operações com bens imóveis
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Operações com bens imóveis',
  Description='Operações com bens imóveis, observado o art. 261 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=50, LBR_PRedCBS=50, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200046'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000057,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200046','Operações com bens imóveis','Operações com bens imóveis, observado o art. 261 da Lei Complementar nº 214, de 2025.',
       50,50,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '7e092e0b-c0ad-5e8d-a767-98992c513d8c'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200046')
;

-- cClassTrib 200047 (CST 200) - Bares e Restaurantes
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Bares e Restaurantes',
  Description='Bares e Restaurantes, observado o art. 275 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=40, LBR_PRedCBS=40, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200047'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000058,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200047','Bares e Restaurantes','Bares e Restaurantes, observado o art. 275 da Lei Complementar nº 214, de 2025.',
       40,40,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '25b8993b-6b24-5958-96ab-2fd7d5614838'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200047')
;

-- cClassTrib 200048 (CST 200) - Hotelaria, Parques de Diversão e Parques Temáticos
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Hotelaria, Parques de Diversão e Parques Temáticos',
  Description='Hotelaria, Parques de Diversão e Parques Temáticos, observado o art. 281 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=40, LBR_PRedCBS=40, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200048'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000059,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200048','Hotelaria, Parques de Diversão e Parques Temáticos','Hotelaria, Parques de Diversão e Parques Temáticos, observado o art. 281 da Lei Complementar nº 214, de 2025.',
       40,40,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'e6647f27-e4d8-574a-8403-51fdd8299b54'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200048')
;

-- cClassTrib 200049 (CST 200) - Transporte coletivo de passageiros rodoviário, ferroviário e hidroviário
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Transporte coletivo de passageiros rodoviário, ferroviário e hidroviário',
  Description='Transporte coletivo de passageiros rodoviário, ferroviário e hidroviário intermunicipais e interestaduais, observado o art. 286 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=40, LBR_PRedCBS=40, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200049'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000060,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200049','Transporte coletivo de passageiros rodoviário, ferroviário e hidroviário','Transporte coletivo de passageiros rodoviário, ferroviário e hidroviário intermunicipais e interestaduais, observado o art. 286 da Lei Complementar nº 214, de 2025.',
       40,40,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '96e0f098-8a49-5a01-90fe-a5db09b6912a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200049')
;

-- cClassTrib 200450 (CST 200) - Serviços de transporte aéreo regional coletivo de passageiros ou de carga
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Serviços de transporte aéreo regional coletivo de passageiros ou de carga',
  Description='Serviços de transporte aéreo regional coletivo de passageiros ou de carga, observado o art. 287 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=40, LBR_PRedCBS=40, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200450'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000061,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200450','Serviços de transporte aéreo regional coletivo de passageiros ou de carga','Serviços de transporte aéreo regional coletivo de passageiros ou de carga, observado o art. 287 da Lei Complementar nº 214, de 2025.',
       40,40,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'fff34ae7-51ca-5a90-9abf-e5193530f355'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200450')
;

-- cClassTrib 200051 (CST 200) - Agências de Turismo
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Agências de Turismo',
  Description='Agências de Turismo, observado o art. 289 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=40, LBR_PRedCBS=40, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200051'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000062,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200051','Agências de Turismo','Agências de Turismo, observado o art. 289 da Lei Complementar nº 214, de 2025.',
       40,40,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'bd1bcaa7-288a-50d7-8ca5-577c11c37d5e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200051')
;

-- cClassTrib 200052 (CST 200) - Prestação de serviços de profissões intelectuais
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
  Name='Prestação de serviços de profissões intelectuais',
  Description='Prestação de serviços das seguintes profissões intelectuais de natureza científica, literária ou artística, submetidas à fiscalização por conselho profissional: administradores, advogados, arquitetos e urbanistas, assistentes sociais, bibliotecários, b...',
  LBR_PRedIBS=30, LBR_PRedCBS=30, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='200052'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000063,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='200'),
       '200052','Prestação de serviços de profissões intelectuais','Prestação de serviços das seguintes profissões intelectuais de natureza científica, literária ou artística, submetidas à fiscalização por conselho profissional: administradores, advogados, arquitetos e urbanistas, assistentes sociais, bibliotecários, b...',
       30,30,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'bbcc59fd-f428-5138-8c15-84e9942d74bb'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='200052')
;

-- cClassTrib 210001 (CST 210) - Redutor social aplicado uma única vez na alienação de bem imóvel residencial nov
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='210'),
  Name='Redutor social aplicado uma única vez na alienação de bem imóvel residencial novo',
  Description='Redutor social aplicado uma única vez na alienação de bem imóvel residencial novo, observado o art. 259 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=50, LBR_PRedCBS=50, LBR_IndIBSCBSRedBC='Y',
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='210001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000064,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='210'),
       '210001','Redutor social aplicado uma única vez na alienação de bem imóvel residencial novo','Redutor social aplicado uma única vez na alienação de bem imóvel residencial novo, observado o art. 259 da Lei Complementar nº 214, de 2025.',
       50,50,'Y','0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '7ec41ff9-d2fa-51a5-98d7-a7f62ba633e3'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='210001')
;

-- cClassTrib 210002 (CST 210) - Redutor social aplicado uma única vez na alienação de lote residencial
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='210'),
  Name='Redutor social aplicado uma única vez na alienação de lote residencial',
  Description='Redutor social aplicado uma única vez na alienação de lote residencial, observado o art. 259 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=50, LBR_PRedCBS=50, LBR_IndIBSCBSRedBC='Y',
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='210002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000065,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='210'),
       '210002','Redutor social aplicado uma única vez na alienação de lote residencial','Redutor social aplicado uma única vez na alienação de lote residencial, observado o art. 259 da Lei Complementar nº 214, de 2025.',
       50,50,'Y','0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'eaa947ef-da7c-56da-beec-b90177aeea13'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='210002')
;

-- cClassTrib 210003 (CST 210) - Redutor social em operações de locação, cessão onerosa e arrendamento de bens im
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='210'),
  Name='Redutor social em operações de locação, cessão onerosa e arrendamento de bens imóveis de uso residencial',
  Description='Redutor social em operações de locação, cessão onerosa e arrendamento de bens imóveis de uso residencial, observado o art. 260 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=70, LBR_PRedCBS=70, LBR_IndIBSCBSRedBC='Y',
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='210003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000066,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='210'),
       '210003','Redutor social em operações de locação, cessão onerosa e arrendamento de bens imóveis de uso residencial','Redutor social em operações de locação, cessão onerosa e arrendamento de bens imóveis de uso residencial, observado o art. 260 da Lei Complementar nº 214, de 2025.',
       70,70,'Y','0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'e2a09c08-efd5-52cc-83e5-05fc3a767aba'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='210003')
;

-- cClassTrib 220001 (CST 220) - Incorporação imobiliária submetida ao regime especial de tributação
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='220'),
  Name='Incorporação imobiliária submetida ao regime especial de tributação',
  Description='Incorporação imobiliária submetida ao regime especial de tributação, observado o art. 485 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='220001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000067,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='220'),
       '220001','Incorporação imobiliária submetida ao regime especial de tributação','Incorporação imobiliária submetida ao regime especial de tributação, observado o art. 485 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '57de0240-28e0-570c-a0f0-48153b44f30d'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='220001')
;

-- cClassTrib 220002 (CST 220) - Incorporação imobiliária submetida ao regime especial de tributação
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='220'),
  Name='Incorporação imobiliária submetida ao regime especial de tributação',
  Description='Incorporação imobiliária submetida ao regime especial de tributação, observado o art. 485 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='220002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000068,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='220'),
       '220002','Incorporação imobiliária submetida ao regime especial de tributação','Incorporação imobiliária submetida ao regime especial de tributação, observado o art. 485 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'c8c291af-dcd6-57d1-a5b3-a5ad7e3d8b59'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='220002')
;

-- cClassTrib 220003 (CST 220) - Alienação de imóvel decorrente de parcelamento do solo
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='220'),
  Name='Alienação de imóvel decorrente de parcelamento do solo',
  Description='Alienação de imóvel decorrente de parcelamento do solo, observado o art. 486 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='220003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000069,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='220'),
       '220003','Alienação de imóvel decorrente de parcelamento do solo','Alienação de imóvel decorrente de parcelamento do solo, observado o art. 486 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '9dc45ccb-aec6-5c64-b841-c57c9270caea'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='220003')
;

-- cClassTrib 221001 (CST 221) - Locação, cessão onerosa ou arrendamento de bem imóvel com alíquota sobre a recei
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='221'),
  Name='Locação, cessão onerosa ou arrendamento de bem imóvel com alíquota sobre a receita bruta',
  Description='Locação, cessão onerosa ou arrendamento de bem imóvel com alíquota sobre a receita bruta, observado o art. 487 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='221001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000070,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='221'),
       '221001','Locação, cessão onerosa ou arrendamento de bem imóvel com alíquota sobre a receita bruta','Locação, cessão onerosa ou arrendamento de bem imóvel com alíquota sobre a receita bruta, observado o art. 487 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '254f22ff-9268-532b-a91b-dc6286e4d87a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='221001')
;

-- cClassTrib 222001 (CST 222) - Transporte internacional de passageiros, caso os trechos de ida e volta sejam ve
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='222'),
  Name='Transporte internacional de passageiros, caso os trechos de ida e volta sejam vendidos em conjunto',
  Description='Transporte internacional de passageiros, caso os trechos de ida e volta sejam vendidos em conjunto, a base de cálculo será a metade do valor cobrado, observado o Art. 12 § 8º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC='Y',
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='222001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000071,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='222'),
       '222001','Transporte internacional de passageiros, caso os trechos de ida e volta sejam vendidos em conjunto','Transporte internacional de passageiros, caso os trechos de ida e volta sejam vendidos em conjunto, a base de cálculo será a metade do valor cobrado, observado o Art. 12 § 8º da Lei Complementar nº 214, de 2025.',
       0,0,'Y','0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '0401985e-b0ba-5c8f-9089-6ca942232844'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='222001')
;

-- cClassTrib 400001 (CST 400) - Fornecimento de serviços de transporte público coletivo de passageiros rodoviári
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='400'),
  Name='Fornecimento de serviços de transporte público coletivo de passageiros rodoviário e metroviário',
  Description='Fornecimento de serviços de transporte público coletivo de passageiros rodoviário e metroviário de caráter urbano, semiurbano e metropolitano, sob regime de autorização, permissão ou concessão pública, observado o art. 157 da Lei Complementar nº 214, d...',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='400001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000072,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='400'),
       '400001','Fornecimento de serviços de transporte público coletivo de passageiros rodoviário e metroviário','Fornecimento de serviços de transporte público coletivo de passageiros rodoviário e metroviário de caráter urbano, semiurbano e metropolitano, sob regime de autorização, permissão ou concessão pública, observado o art. 157 da Lei Complementar nº 214, d...',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '4d3606d3-426d-5c41-844a-2a51edbcefb5'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='400001')
;

-- cClassTrib 410001 (CST 410) - Fornecimento de bonificações quando constem no documento fiscal e que não depend
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimento de bonificações quando constem no documento fiscal e que não dependam de evento posterior',
  Description='Fornecimento de bonificações quando constem do respectivo documento fiscal e que não dependam de evento posterior, observado o art. 5º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000073,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410001','Fornecimento de bonificações quando constem no documento fiscal e que não dependam de evento posterior','Fornecimento de bonificações quando constem do respectivo documento fiscal e que não dependam de evento posterior, observado o art. 5º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '5732a85d-b556-5b06-b455-3b3c6aa35589'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410001')
;

-- cClassTrib 410002 (CST 410) - Transferências entre estabelecimentos pertencentes ao mesmo contribuinte
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Transferências entre estabelecimentos pertencentes ao mesmo contribuinte',
  Description='Transferências entre estabelecimentos pertencentes ao mesmo contribuinte, observado o art. 6º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000074,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410002','Transferências entre estabelecimentos pertencentes ao mesmo contribuinte','Transferências entre estabelecimentos pertencentes ao mesmo contribuinte, observado o art. 6º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '20fde24e-0a65-5d94-9595-c3babccb5899'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410002')
;

-- cClassTrib 410003 (CST 410) - Doações sem contraprestação em benefício do doador
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Doações sem contraprestação em benefício do doador',
  Description='Doações, observado o art. 6º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000075,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410003','Doações sem contraprestação em benefício do doador','Doações, observado o art. 6º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'bb8dce44-655b-568b-819e-85abe076d227'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410003')
;

-- cClassTrib 410004 (CST 410) - Exportações de bens e serviços
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Exportações de bens e serviços',
  Description='Exportações de bens e serviços, observado o art. 8º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410004'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000076,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410004','Exportações de bens e serviços','Exportações de bens e serviços, observado o art. 8º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'f0c74891-d73b-53da-99bf-094acb98f17a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410004')
;

-- cClassTrib 410005 (CST 410) - Fornecimentos realizados pela União, pelos Estados, pelo Distrito Federal e pelo
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimentos realizados pela União, pelos Estados, pelo Distrito Federal e pelos Municípios',
  Description='Fornecimentos realizados pela União, pelos Estados, pelo Distrito Federal e pelos Municípios, observado o art. 9º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410005'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000077,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410005','Fornecimentos realizados pela União, pelos Estados, pelo Distrito Federal e pelos Municípios','Fornecimentos realizados pela União, pelos Estados, pelo Distrito Federal e pelos Municípios, observado o art. 9º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '52ef8835-8657-5ccb-866d-ddd8c0e088a9'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410005')
;

-- cClassTrib 410006 (CST 410) - Fornecimentos realizados por entidades religiosas e templos de qualquer culto
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimentos realizados por entidades religiosas e templos de qualquer culto',
  Description='Fornecimentos realizados por entidades religiosas e templos de qualquer culto, inclusive suas organizações assistenciais e beneficentes, observado o art. 9º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410006'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000078,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410006','Fornecimentos realizados por entidades religiosas e templos de qualquer culto','Fornecimentos realizados por entidades religiosas e templos de qualquer culto, inclusive suas organizações assistenciais e beneficentes, observado o art. 9º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'fe334bc4-2faa-5370-8852-ccac606da286'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410006')
;

-- cClassTrib 410007 (CST 410) - Fornecimentos realizados por partidos políticos
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimentos realizados por partidos políticos',
  Description='Fornecimentos realizados por partidos políticos, inclusive suas fundações, entidades sindicais dos trabalhadores e instituições de educação e de assistência social, sem fins lucrativos, observado o art. 9º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410007'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000079,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410007','Fornecimentos realizados por partidos políticos','Fornecimentos realizados por partidos políticos, inclusive suas fundações, entidades sindicais dos trabalhadores e instituições de educação e de assistência social, sem fins lucrativos, observado o art. 9º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '8fcfe39b-694e-5833-9e84-4e312aa8f7d3'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410007')
;

-- cClassTrib 410008 (CST 410) - Fornecimentos de livros, jornais, periódicos e do papel destinado a sua impressã
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimentos de livros, jornais, periódicos e do papel destinado a sua impressão',
  Description='Fornecimentos de livros, jornais, periódicos e do papel destinado a sua impressão, observado o art. 9º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410008'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000080,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410008','Fornecimentos de livros, jornais, periódicos e do papel destinado a sua impressão','Fornecimentos de livros, jornais, periódicos e do papel destinado a sua impressão, observado o art. 9º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '82e38966-f86a-5372-a6d3-9c769360748c'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410008')
;

-- cClassTrib 410009 (CST 410) - Fornecimentos de fonogramas e videofonogramas musicais produzidos no Brasil
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimentos de fonogramas e videofonogramas musicais produzidos no Brasil',
  Description='Fornecimentos de fonogramas e videofonogramas musicais produzidos no Brasil contendo obras musicais ou literomusicais de autores brasileiros e/ou obras em geral interpretadas por artistas brasileiros, bem como os suportes materiais ou arquivos digitais...',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410009'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000081,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410009','Fornecimentos de fonogramas e videofonogramas musicais produzidos no Brasil','Fornecimentos de fonogramas e videofonogramas musicais produzidos no Brasil contendo obras musicais ou literomusicais de autores brasileiros e/ou obras em geral interpretadas por artistas brasileiros, bem como os suportes materiais ou arquivos digitais...',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'e2aebbea-207c-52ff-96fe-e40fdfb42c89'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410009')
;

-- cClassTrib 410010 (CST 410) - Fornecimentos de serviço de comunicação nas modalidades de radiodifusão sonora e
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimentos de serviço de comunicação nas modalidades de radiodifusão sonora e de sons e imagens de recepção livre e gratuita',
  Description='Fornecimentos de serviço de comunicação nas modalidades de radiodifusão sonora e de sons e imagens de recepção livre e gratuita, observado o art. 9º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410010'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000082,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410010','Fornecimentos de serviço de comunicação nas modalidades de radiodifusão sonora e de sons e imagens de recepção livre e gratuita','Fornecimentos de serviço de comunicação nas modalidades de radiodifusão sonora e de sons e imagens de recepção livre e gratuita, observado o art. 9º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '036365fb-232b-5c80-800a-c7aaf0a8de6a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410010')
;

-- cClassTrib 410011 (CST 410) - Fornecimentos de ouro, quando definido em lei como ativo financeiro ou instrumen
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimentos de ouro, quando definido em lei como ativo financeiro ou instrumento cambial',
  Description='Fornecimentos de ouro, quando definido em lei como ativo financeiro ou instrumento cambial, observado o art. 9º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410011'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000083,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410011','Fornecimentos de ouro, quando definido em lei como ativo financeiro ou instrumento cambial','Fornecimentos de ouro, quando definido em lei como ativo financeiro ou instrumento cambial, observado o art. 9º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '21522ff7-d45f-5e70-82f9-6a4d0b43383a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410011')
;

-- cClassTrib 410012 (CST 410) - Fornecimento de condomínio edilício não optante pelo regime regular
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimento de condomínio edilício não optante pelo regime regular',
  Description='Fornecimento de condomínio edilício não optante pelo regime regular, observado o art. 26 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410012'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000084,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410012','Fornecimento de condomínio edilício não optante pelo regime regular','Fornecimento de condomínio edilício não optante pelo regime regular, observado o art. 26 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '48335418-ab7b-5550-a695-f3363ff65577'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410012')
;

-- cClassTrib 410013 (CST 410) - Exportações de combustíveis
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Exportações de combustíveis',
  Description='Exportações de combustíveis, observado o art. 98 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410013'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000085,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410013','Exportações de combustíveis','Exportações de combustíveis, observado o art. 98 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'd62c54b4-e0ac-5743-82c9-f7698406660f'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410013')
;

-- cClassTrib 410014 (CST 410) - Fornecimento de produtor rural não contribuinte
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimento de produtor rural não contribuinte',
  Description='Fornecimento de produtor rural não contribuinte, observado o art. 164 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410014'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000086,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410014','Fornecimento de produtor rural não contribuinte','Fornecimento de produtor rural não contribuinte, observado o art. 164 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '62713f32-9b48-5129-82fb-7492ee44dedc'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410014')
;

-- cClassTrib 410015 (CST 410) - Fornecimento por transportador autônomo não contribuinte
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimento por transportador autônomo não contribuinte',
  Description='Fornecimento por transportador autônomo não contribuinte, observado o art. 169 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410015'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000087,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410015','Fornecimento por transportador autônomo não contribuinte','Fornecimento por transportador autônomo não contribuinte, observado o art. 169 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '6c4ce6ab-32f6-5d3c-871e-7ede79d5bc63'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410015')
;

-- cClassTrib 410016 (CST 410) - Fornecimento ou aquisição de resíduos sólidos
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Fornecimento ou aquisição de resíduos sólidos',
  Description='Fornecimento ou aquisição de resíduos sólidos, observado o art. 170 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410016'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000088,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410016','Fornecimento ou aquisição de resíduos sólidos','Fornecimento ou aquisição de resíduos sólidos, observado o art. 170 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '66c5b198-32b9-5195-b1ea-71e2a6312b1d'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410016')
;

-- cClassTrib 410017 (CST 410) - Aquisição de bem móvel com crédito presumido sob condição de revenda realizada
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Aquisição de bem móvel com crédito presumido sob condição de revenda realizada',
  Description='Aquisição de bem móvel com crédito presumido sob condição de revenda realizada, observado o art. 171 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410017'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000089,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410017','Aquisição de bem móvel com crédito presumido sob condição de revenda realizada','Aquisição de bem móvel com crédito presumido sob condição de revenda realizada, observado o art. 171 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'acbdcf36-bef0-5e88-b96b-4de212388fb6'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410017')
;

-- cClassTrib 410018 (CST 410) - Operações relacionadas aos fundos garantidores e executores de políticas pública
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Operações relacionadas aos fundos garantidores e executores de políticas públicas',
  Description='Operações relacionadas aos fundos garantidores e executores de políticas públicas, inclusive de habitação, previstos em lei, assim entendidas os serviços prestados ao fundo pelo seu agente operador e por entidade encarregada da sua administração, obser...',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410018'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000090,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410018','Operações relacionadas aos fundos garantidores e executores de políticas públicas','Operações relacionadas aos fundos garantidores e executores de políticas públicas, inclusive de habitação, previstos em lei, assim entendidas os serviços prestados ao fundo pelo seu agente operador e por entidade encarregada da sua administração, obser...',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '8403f90c-6ad6-5cc7-b8a8-e167494224d1'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410018')
;

-- cClassTrib 410019 (CST 410) - Exclusão da gorjeta na base de cálculo no fornecimento de alimentação
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Exclusão da gorjeta na base de cálculo no fornecimento de alimentação',
  Description='Exclusão da gorjeta na base de cálculo no fornecimento de alimentação, observado o art. 274 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410019'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000091,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410019','Exclusão da gorjeta na base de cálculo no fornecimento de alimentação','Exclusão da gorjeta na base de cálculo no fornecimento de alimentação, observado o art. 274 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '7e1fc0e2-bd45-5816-ab64-8c903970cd12'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410019')
;

-- cClassTrib 410020 (CST 410) - Exclusão do valor de intermediação na base de cálculo no fornecimento de aliment
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Exclusão do valor de intermediação na base de cálculo no fornecimento de alimentação',
  Description='Exclusão do valor de intermediação na base de cálculo no fornecimento de alimentação, observado o art. 274 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410020'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000092,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410020','Exclusão do valor de intermediação na base de cálculo no fornecimento de alimentação','Exclusão do valor de intermediação na base de cálculo no fornecimento de alimentação, observado o art. 274 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '4066d60b-deec-5e22-8cb7-ecd77925fe6d'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410020')
;

-- cClassTrib 410021 (CST 410) - Contribuição de que trata o art. 149-A da Constituição Federal
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Contribuição de que trata o art. 149-A da Constituição Federal',
  Description='Contribuição de que trata o art. 149-A da Constituição Federal, observado o art. 12 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular=NULL, LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410021'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000093,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410021','Contribuição de que trata o art. 149-A da Constituição Federal','Contribuição de que trata o art. 149-A da Constituição Federal, observado o art. 12 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '79c0fb28-0d57-5f38-946e-9da00a7a20ea'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410021')
;

-- cClassTrib 410999 (CST 410) - Operações não onerosas sem previsão de tributação, não especificadas anteriormen
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
  Name='Operações não onerosas sem previsão de tributação, não especificadas anteriormente',
  Description='Operações não onerosas sem previsão de tributação, não especificadas anteriormente, observado o art. 4º da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='410999'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000094,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='410'),
       '410999','Operações não onerosas sem previsão de tributação, não especificadas anteriormente','Operações não onerosas sem previsão de tributação, não especificadas anteriormente, observado o art. 4º da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       'b017e02a-b4cf-5350-81f1-7679f31ac434'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='410999')
;

-- cClassTrib 510001 (CST 510) - Operações, sujeitas a diferimento, com energia elétrica, relativas à geração, co
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='510'),
  Name='Operações, sujeitas a diferimento, com energia elétrica, relativas à geração, comercialização, distribuição e transmissão',
  Description='Operações, sujeitas a diferimento, com energia elétrica ou com direitos a ela relacionados, relativas à geração, comercialização, distribuição e transmissão, observado o art. 28 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='510001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000095,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='510'),
       '510001','Operações, sujeitas a diferimento, com energia elétrica, relativas à geração, comercialização, distribuição e transmissão','Operações, sujeitas a diferimento, com energia elétrica ou com direitos a ela relacionados, relativas à geração, comercialização, distribuição e transmissão, observado o art. 28 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '89526811-323c-5ff0-900a-9b631a46c97f'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='510001')
;

-- cClassTrib 510002 (CST 510) - Operações, sujeitas a diferimento, com insumos agropecuários e aquícolas destina
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='510'),
  Name='Operações, sujeitas a diferimento, com insumos agropecuários e aquícolas destinados a produtor rural contribuinte (Anexo IX)',
  Description='Operações, sujeitas a diferimento, com insumos agropecuários e aquícolas destinados a produtor rural contribuinte, observado o art. 138 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='510002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000096,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='510'),
       '510002','Operações, sujeitas a diferimento, com insumos agropecuários e aquícolas destinados a produtor rural contribuinte (Anexo IX)','Operações, sujeitas a diferimento, com insumos agropecuários e aquícolas destinados a produtor rural contribuinte, observado o art. 138 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'a1d4fe16-14ff-5081-91c5-0f4aab6be808'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='510002')
;

-- cClassTrib 550001 (CST 550) - Exportações de bens materiais
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Exportações de bens materiais',
  Description='Exportações de bens materiais, observado o art. 82 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000097,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550001','Exportações de bens materiais','Exportações de bens materiais, observado o art. 82 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '195a53d2-858d-5485-8fd3-e5e629937fc6'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550001')
;

-- cClassTrib 550002 (CST 550) - Regime de Trânsito
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regime de Trânsito',
  Description='Regime de Trânsito, observado o art. 84 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000098,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550002','Regime de Trânsito','Regime de Trânsito, observado o art. 84 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '6d516c21-d62d-50ee-9161-10b7dfb3efa0'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550002')
;

-- cClassTrib 550003 (CST 550) - Regimes de Depósito (art. 85)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regimes de Depósito (art. 85)',
  Description='Regimes de Depósito, observado o art. 85 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000099,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550003','Regimes de Depósito (art. 85)','Regimes de Depósito, observado o art. 85 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'cb2dac39-d1c2-5b3b-bb0d-a70dc57f51b3'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550003')
;

-- cClassTrib 550004 (CST 550) - Regimes de Depósito (art. 87)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regimes de Depósito (art. 87)',
  Description='Regimes de Depósito, observado o art. 87 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550004'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000100,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550004','Regimes de Depósito (art. 87)','Regimes de Depósito, observado o art. 87 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'c5f6093a-b76c-5261-bc7e-a780701e12fd'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550004')
;

-- cClassTrib 550005 (CST 550) - Regimes de Depósito (art. 87, Parágrafo único)
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regimes de Depósito (art. 87, Parágrafo único)',
  Description='Regimes de Depósito, observado o art. 87 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550005'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000101,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550005','Regimes de Depósito (art. 87, Parágrafo único)','Regimes de Depósito, observado o art. 87 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '4690bf4e-13b7-569a-928e-4e9199d41413'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550005')
;

-- cClassTrib 550006 (CST 550) - Regimes de Permanência Temporária
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regimes de Permanência Temporária',
  Description='Regimes de Permanência Temporária, observado o art. 88 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550006'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000102,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550006','Regimes de Permanência Temporária','Regimes de Permanência Temporária, observado o art. 88 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'bd55d21b-ddaa-58a9-8d4b-c35093f66541'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550006')
;

-- cClassTrib 550007 (CST 550) - Regimes de Aperfeiçoamento
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regimes de Aperfeiçoamento',
  Description='Regimes de Aperfeiçoamento, observado o art. 90 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550007'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000103,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550007','Regimes de Aperfeiçoamento','Regimes de Aperfeiçoamento, observado o art. 90 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'f43a6ff8-1979-50d3-8cc7-919c9ff7b215'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550007')
;

-- cClassTrib 550008 (CST 550) - Importação de bens para o Regime de Repetro-Temporário
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Importação de bens para o Regime de Repetro-Temporário',
  Description='Importação de bens para o Regime de Repetro-Temporário, de que tratam o inciso I do art. 93 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550008'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000104,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550008','Importação de bens para o Regime de Repetro-Temporário','Importação de bens para o Regime de Repetro-Temporário, de que tratam o inciso I do art. 93 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'a478f59e-9f43-5f58-8474-6d0b727f72d0'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550008')
;

-- cClassTrib 550009 (CST 550) - GNL-Temporário
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='GNL-Temporário',
  Description='GNL-Temporário, de que trata o inciso II do art. 93 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550009'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000105,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550009','GNL-Temporário','GNL-Temporário, de que trata o inciso II do art. 93 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'b84c7b45-dc0a-5b43-8d87-857a782cbb47'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550009')
;

-- cClassTrib 550010 (CST 550) - Repetro-Permanente
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Repetro-Permanente',
  Description='Repetro-Permanente, de que trata o inciso III do art. 93 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550010'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000106,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550010','Repetro-Permanente','Repetro-Permanente, de que trata o inciso III do art. 93 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '9a6ab483-2b58-56e2-9d3f-2423e8a3abf5'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550010')
;

-- cClassTrib 550011 (CST 550) - Repetro-Industrialização
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Repetro-Industrialização',
  Description='Repetro-Industrialização, de que trata o inciso IV do art. 93 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550011'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000107,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550011','Repetro-Industrialização','Repetro-Industrialização, de que trata o inciso IV do art. 93 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '3fe10061-ee6a-5fb0-9656-ca9bc1290b00'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550011')
;

-- cClassTrib 550012 (CST 550) - Repetro-Nacional
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Repetro-Nacional',
  Description='Repetro-Nacional, de que trata o inciso V do art. 93 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550012'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000108,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550012','Repetro-Nacional','Repetro-Nacional, de que trata o inciso V do art. 93 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '0a13a9f1-e393-5206-9ce5-dfbf08f4e0f0'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550012')
;

-- cClassTrib 550013 (CST 550) - Repetro-Entreposto
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Repetro-Entreposto',
  Description='Repetro-Entreposto, de que trata o inciso VI do art. 93 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550013'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000109,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550013','Repetro-Entreposto','Repetro-Entreposto, de que trata o inciso VI do art. 93 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'd53aab2b-3dbd-5a11-a7bf-fd5d3191733e'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550013')
;

-- cClassTrib 550014 (CST 550) - Zona de Processamento de Exportação
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Zona de Processamento de Exportação',
  Description='Zona de Processamento de Exportação, observado os arts. 99, 100 e 102 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550014'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000110,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550014','Zona de Processamento de Exportação','Zona de Processamento de Exportação, observado os arts. 99, 100 e 102 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '0c2d0a9d-c11e-579b-9b34-7efdf0419d70'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550014')
;

-- cClassTrib 550015 (CST 550) - Regime Tributário para Incentivo à Modernização e à Ampliação da Estrutura Portu
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regime Tributário para Incentivo à Modernização e à Ampliação da Estrutura Portuária',
  Description='Regime Tributário para Incentivo à Modernização e à Ampliação da Estrutura Portuária - Reporto, observado o art. 105 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550015'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000111,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550015','Regime Tributário para Incentivo à Modernização e à Ampliação da Estrutura Portuária','Regime Tributário para Incentivo à Modernização e à Ampliação da Estrutura Portuária - Reporto, observado o art. 105 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'd9c0ef64-d904-5280-ae48-6314a89b494a'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550015')
;

-- cClassTrib 550016 (CST 550) - Regime Especial de Incentivos para o Desenvolvimento da Infraestrutura
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regime Especial de Incentivos para o Desenvolvimento da Infraestrutura',
  Description='Regime Especial de Incentivos para o Desenvolvimento da Infraestrutura - Reidi, observado o art. 106 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550016'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000112,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550016','Regime Especial de Incentivos para o Desenvolvimento da Infraestrutura','Regime Especial de Incentivos para o Desenvolvimento da Infraestrutura - Reidi, observado o art. 106 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '838197ff-340c-5095-8032-f73fd969158d'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550016')
;

-- cClassTrib 550017 (CST 550) - Regime Tributário para Incentivo à Atividade Econômica Naval
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Regime Tributário para Incentivo à Atividade Econômica Naval',
  Description='Regime Tributário para Incentivo à Atividade Econômica Naval – Renaval, observado o art. 107 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550017'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000113,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550017','Regime Tributário para Incentivo à Atividade Econômica Naval','Regime Tributário para Incentivo à Atividade Econômica Naval – Renaval, observado o art. 107 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '08b4de5c-6b6f-5c30-a954-647423cb8d9b'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550017')
;

-- cClassTrib 550018 (CST 550) - Desoneração da aquisição de bens de capital
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Desoneração da aquisição de bens de capital',
  Description='Desoneração da aquisição de bens de capital, observado o art. 109 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550018'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000114,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550018','Desoneração da aquisição de bens de capital','Desoneração da aquisição de bens de capital, observado o art. 109 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'aaca23e3-0fd9-5fb3-92df-becba5e0adf5'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550018')
;

-- cClassTrib 550019 (CST 550) - Importação de bem material por indústria incentivada para utilização na ZFM
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Importação de bem material por indústria incentivada para utilização na ZFM',
  Description='Importação de bem material por indústria incentivada para utilização na Zona Franca de Manaus, observado o art. 443 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550019'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000115,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550019','Importação de bem material por indústria incentivada para utilização na ZFM','Importação de bem material por indústria incentivada para utilização na Zona Franca de Manaus, observado o art. 443 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '4953229a-6fa2-5e1a-bd55-d81cf9e5da34'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550019')
;

-- cClassTrib 550020 (CST 550) - Áreas de livre comércio
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
  Name='Áreas de livre comércio',
  Description='Áreas de livre comércio, observado o art. 461 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='1', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='550020'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000116,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='550'),
       '550020','Áreas de livre comércio','Áreas de livre comércio, observado o art. 461 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'1',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '1d096b94-8334-5e9c-948e-4d49a8b78870'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='550020')
;

-- cClassTrib 620001 (CST 620) - Tributação monofásica sobre combustíveis
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
  Name='Tributação monofásica sobre combustíveis',
  Description='Tributação monofásica sobre combustíveis, observados os art. 172 e art. 179 I da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono='1',
  LBR_IndgIBSCBSMonoReten='0', LBR_IndgIBSCBSMonoRet='0', LBR_IndgIBSCBSMonoDif='0',
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='620001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000117,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
       '620001','Tributação monofásica sobre combustíveis','Tributação monofásica sobre combustíveis, observados os art. 172 e art. 179 I da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,'1','0','0','0',
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '5387cbfc-44d5-5b80-aca8-11b466e7ebf0'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='620001')
;

-- cClassTrib 620002 (CST 620) - Tributação monofásica com responsabilidade pela retenção sobre combustíveis
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
  Name='Tributação monofásica com responsabilidade pela retenção sobre combustíveis',
  Description='Tributação monofásica com responsabilidade pela retenção sobre combustíveis, observado o art. 178 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono='1',
  LBR_IndgIBSCBSMonoReten='1', LBR_IndgIBSCBSMonoRet='0', LBR_IndgIBSCBSMonoDif='0',
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='620002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000118,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
       '620002','Tributação monofásica com responsabilidade pela retenção sobre combustíveis','Tributação monofásica com responsabilidade pela retenção sobre combustíveis, observado o art. 178 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,'1','1','0','0',
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '5dbdfa3c-1c70-585c-941a-22c18da501b1'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='620002')
;

-- cClassTrib 620003 (CST 620) - Tributação monofásica com tributos retidos por responsabilidade sobre combustíve
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
  Name='Tributação monofásica com tributos retidos por responsabilidade sobre combustíveis',
  Description='Tributação monofásica com tributos retidos por responsabilidade sobre combustíveis, observado o art. 178 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono='0',
  LBR_IndgIBSCBSMonoReten='0', LBR_IndgIBSCBSMonoRet='0', LBR_IndgIBSCBSMonoDif='1',
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='620003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000119,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
       '620003','Tributação monofásica com tributos retidos por responsabilidade sobre combustíveis','Tributação monofásica com tributos retidos por responsabilidade sobre combustíveis, observado o art. 178 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,'0','0','0','1',
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '69547e6d-6ef3-5f30-871f-4350a7ba8389'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='620003')
;

-- cClassTrib 620004 (CST 620) - Tributação monofásica sobre mistura de EAC com gasolina A em percentual superior
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
  Name='Tributação monofásica sobre mistura de EAC com gasolina A em percentual superior ao obrigatório',
  Description='Tributação monofásica sobre mistura de EAC com gasolina A em percentual superior ou inferior ao obrigatório, observado o art. 179 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono='1',
  LBR_IndgIBSCBSMonoReten='0', LBR_IndgIBSCBSMonoRet='1', LBR_IndgIBSCBSMonoDif='0',
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='620004'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000120,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
       '620004','Tributação monofásica sobre mistura de EAC com gasolina A em percentual superior ao obrigatório','Tributação monofásica sobre mistura de EAC com gasolina A em percentual superior ou inferior ao obrigatório, observado o art. 179 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,'1','0','1','0',
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '5ae27dc5-3001-59a2-ac76-df89d0fe1af3'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='620004')
;

-- cClassTrib 620005 (CST 620) - Tributação monofásica sobre mistura de EAC com gasolina A em percentual inferior
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
  Name='Tributação monofásica sobre mistura de EAC com gasolina A em percentual inferior ao obrigatório',
  Description='Tributação monofásica sobre mistura de EAC com gasolina A em percentual superior ou inferior ao obrigatório, observado o art. 179 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono='0',
  LBR_IndgIBSCBSMonoReten='0', LBR_IndgIBSCBSMonoRet='1', LBR_IndgIBSCBSMonoDif='0',
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='620005'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000121,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
       '620005','Tributação monofásica sobre mistura de EAC com gasolina A em percentual inferior ao obrigatório','Tributação monofásica sobre mistura de EAC com gasolina A em percentual superior ou inferior ao obrigatório, observado o art. 179 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,'0','0','1','0',
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '5cf714e4-b621-5fdc-ad24-9f319d79d738'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='620005')
;

-- cClassTrib 620006 (CST 620) - Tributação monofásica sobre combustíveis cobrada anteriormente
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
  Name='Tributação monofásica sobre combustíveis cobrada anteriormente',
  Description='Tributação monofásica sobre combustíveis cobrada anteriormente, observador o art. 180 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono='0',
  LBR_IndgIBSCBSMonoReten='0', LBR_IndgIBSCBSMonoRet='1', LBR_IndgIBSCBSMonoDif='0',
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='620006'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000122,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='620'),
       '620006','Tributação monofásica sobre combustíveis cobrada anteriormente','Tributação monofásica sobre combustíveis cobrada anteriormente, observador o art. 180 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,'0','0','1','0',
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '5fc382f2-ecd5-50b5-b61f-146a9bc3da83'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='620006')
;

-- cClassTrib 800001 (CST 800) - Fusão, cisão ou incorporação
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='800'),
  Name='Fusão, cisão ou incorporação',
  Description='Fusão, cisão ou incorporação, observado o art. 55 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='800001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000123,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='800'),
       '800001','Fusão, cisão ou incorporação','Fusão, cisão ou incorporação, observado o art. 55 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '61246e8a-4d06-5ea6-9b2c-c230bedbf6ae'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='800001')
;

-- cClassTrib 800002 (CST 800) - Transferência de crédito do associado, inclusive as cooperativas singulares
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='800'),
  Name='Transferência de crédito do associado, inclusive as cooperativas singulares',
  Description='Transferência de crédito do associado, inclusive as cooperativas singulares, para cooperativa de que participa das operações antecedentes às operações em que fornece bens e serviços e os créditos presumidos, observado o art. 272 da Lei Complementar nº...',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='800002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000124,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='800'),
       '800002','Transferência de crédito do associado, inclusive as cooperativas singulares','Transferência de crédito do associado, inclusive as cooperativas singulares, para cooperativa de que participa das operações antecedentes às operações em que fornece bens e serviços e os créditos presumidos, observado o art. 272 da Lei Complementar nº...',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '67ef706d-8d7e-5039-93af-5aa997da7657'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='800002')
;

-- cClassTrib 810001 (CST 810) - Crédito presumido sobre o valor apurado nos fornecimentos a partir da ZFM
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='810'),
  Name='Crédito presumido sobre o valor apurado nos fornecimentos a partir da ZFM',
  Description='Crédito presumido sobre o valor apurado nos fornecimentos a partir da Zona Franca de Manaus, observado o art. 450 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC='N',
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres='1', LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='810001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000125,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='810'),
       '810001','Crédito presumido sobre o valor apurado nos fornecimentos a partir da ZFM','Crédito presumido sobre o valor apurado nos fornecimentos a partir da Zona Franca de Manaus, observado o art. 450 da Lei Complementar nº 214, de 2025.',
       0,0,'N','0','1',NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'dcbf1e07-bf72-5ee3-a976-76c8bc87d617'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='810001')
;

-- cClassTrib 820001 (CST 820) - Documento com informações de fornecimento de serviços de planos de assistência à
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
  Name='Documento com informações de fornecimento de serviços de planos de assistência à saúde',
  Description='Documento com informações de fornecimento de serviços de planos de assinstência à saúde, mas com tributação realizada por outro meio, observado o art. 235 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='820001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000126,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
       '820001','Documento com informações de fornecimento de serviços de planos de assistência à saúde','Documento com informações de fornecimento de serviços de planos de assinstência à saúde, mas com tributação realizada por outro meio, observado o art. 235 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'efa5cc4c-efeb-5945-acc7-2c6196ef8ae0'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='820001')
;

-- cClassTrib 820002 (CST 820) - Documento com informações de fornecimento de serviços de planos de assistência f
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
  Name='Documento com informações de fornecimento de serviços de planos de assistência funerária',
  Description='Documento com informações de fornecimento de serviços de planos de assinstência funerária, mas com tributação realizada por outro meio, observado o art. 236 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='820002'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000127,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
       '820002','Documento com informações de fornecimento de serviços de planos de assistência funerária','Documento com informações de fornecimento de serviços de planos de assinstência funerária, mas com tributação realizada por outro meio, observado o art. 236 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'b91983db-3b9c-5cd9-b1f1-07e5862ed006'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='820002')
;

-- cClassTrib 820003 (CST 820) - Documento com informações de fornecimento de serviços de planos de assistência à
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
  Name='Documento com informações de fornecimento de serviços de planos de assistência à saúde de animais domésticos',
  Description='Documento com informações de fornecimento de serviços de planos de assinstência à saúde de animais domésticos, mas com tributação realizada por outro meio, observado o art. 243 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='820003'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000128,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
       '820003','Documento com informações de fornecimento de serviços de planos de assistência à saúde de animais domésticos','Documento com informações de fornecimento de serviços de planos de assinstência à saúde de animais domésticos, mas com tributação realizada por outro meio, observado o art. 243 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '295fbc19-4623-58c8-9f5a-d94de4a1256d'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='820003')
;

-- cClassTrib 820004 (CST 820) - Documento com informações de prestação de serviços de consursos de prognósticos
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
  Name='Documento com informações de prestação de serviços de consursos de prognósticos',
  Description='Documento com informações de prestação de serviços de consursos de prognósticos, mas com tributação realizada por outro meio, observado o art. 248 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='820004'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000129,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
       '820004','Documento com informações de prestação de serviços de consursos de prognósticos','Documento com informações de prestação de serviços de consursos de prognósticos, mas com tributação realizada por outro meio, observado o art. 248 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       '4032d0fa-0d77-5fbb-aecb-382bca09eeaa'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='820004')
;

-- cClassTrib 820005 (CST 820) - Documento com informações de alienação de bens imóveis
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
  Name='Documento com informações de alienação de bens imóveis',
  Description='Documento com informações de alienação de bens imóveis, mas com tributação realizada por outro meio,, observado o art. 254 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular='0', LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-05-19','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='820005'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000130,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
       '820005','Documento com informações de alienação de bens imóveis','Documento com informações de alienação de bens imóveis, mas com tributação realizada por outro meio,, observado o art. 254 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,'0',NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-05-19','YYYY-MM-DD'),
       'f9427675-62d1-506f-a3b2-4c2ccbd963ef'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='820005')
;

-- cClassTrib 820006 (CST 820) - Documento com informações de fornecimento de serviços de exploração de via
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
  Name='Documento com informações de fornecimento de serviços de exploração de via',
  Description='Documento com informações de fornecimento de serviços de exploração de via, mas com tributação realizada por outro meio, observado o art. 11 da Lei Complementar nº 214, de 2025.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular=NULL, LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='820006'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000131,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='820'),
       '820006','Documento com informações de fornecimento de serviços de exploração de via','Documento com informações de fornecimento de serviços de exploração de via, mas com tributação realizada por outro meio, observado o art. 11 da Lei Complementar nº 214, de 2025.',
       0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       'cca6bb6b-18e6-5501-b9de-0686b7d6f103'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='820006')
;

-- cClassTrib 830001 (CST 830) - Documento com exclusão da BC da CBS e do IBS de energia elétrica fornecida pela 
UPDATE LBR_ClassTrib_IBSCBS SET LBR_CST_IBSCBS_ID=(SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='830'),
  Name='Documento com exclusão da BC da CBS e do IBS de energia elétrica fornecida pela distribuidora à UC',
  Description='Documento com exclusão da base de cálculo da CBS e do IBS refrente à energia elétrica fornecida pela distribuidora à unidade consumidora, conforme Art 28, parágrafos 3° e 4°.',
  LBR_PRedIBS=0, LBR_PRedCBS=0, LBR_IndIBSCBSRedBC=NULL,
  LBR_IndgIBSCBSTribRegular=NULL, LBR_IndgIBSCBSCredPres=NULL, LBR_IndgIBSCBSMono=NULL,
  LBR_IndgIBSCBSMonoReten=NULL, LBR_IndgIBSCBSMonoRet=NULL, LBR_IndgIBSCBSMonoDif=NULL,
  DateFrom=NULL, DateTo=NULL, UpdatedDate=TO_DATE('2025-06-11','YYYY-MM-DD'),
  IsActive='Y', Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0 AND Value='830001'
;
INSERT INTO LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_CST_IBSCBS_ID,Value,Name,Description,LBR_PRedIBS,LBR_PRedCBS,LBR_IndIBSCBSRedBC,LBR_IndgIBSCBSTribRegular,LBR_IndgIBSCBSCredPres,LBR_IndgIBSCBSMono,LBR_IndgIBSCBSMonoReten,LBR_IndgIBSCBSMonoRet,LBR_IndgIBSCBSMonoDif,DateFrom,DateTo,UpdatedDate,LBR_ClassTrib_IBSCBS_UU)
SELECT 1000132,0,0,'Y',TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'),100,
       (SELECT LBR_CST_IBSCBS_ID FROM LBR_CST_IBSCBS WHERE AD_Client_ID=0 AND Value='830'),
       '830001','Documento com exclusão da BC da CBS e do IBS de energia elétrica fornecida pela distribuidora à UC','Documento com exclusão da base de cálculo da CBS e do IBS refrente à energia elétrica fornecida pela distribuidora à unidade consumidora, conforme Art 28, parágrafos 3° e 4°.',
       0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
       NULL,NULL,TO_DATE('2025-06-11','YYYY-MM-DD'),
       '5e75f3df-be22-5e11-813a-9a4e298965ad'
  FROM dual
 WHERE NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS WHERE AD_Client_ID=0 AND Value='830001')
;

-- ----------------------------------------------------------------------------
-- 5) Ajusta as sequencias das tabelas para depois dos IDs consumidos aqui.
-- ----------------------------------------------------------------------------

UPDATE AD_Sequence s SET CurrentNext=(SELECT MAX(LBR_CST_IBSCBS_ID)+1 FROM LBR_CST_IBSCBS),
  Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE s.Name='LBR_CST_IBSCBS'
  AND s.CurrentNext <= (SELECT MAX(LBR_CST_IBSCBS_ID) FROM LBR_CST_IBSCBS)
;

UPDATE AD_Sequence s SET CurrentNext=(SELECT MAX(LBR_ClassTrib_IBSCBS_ID)+1 FROM LBR_ClassTrib_IBSCBS),
  Updated=TO_TIMESTAMP('2026-09-02 10:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE s.Name='LBR_ClassTrib_IBSCBS'
  AND s.CurrentNext <= (SELECT MAX(LBR_ClassTrib_IBSCBS_ID) FROM LBR_ClassTrib_IBSCBS)
;

