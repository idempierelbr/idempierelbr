-- Add_NFe_Distribuicao_DFe_LBR_NFeWebService
SELECT register_migration_script('202606251733_AddHomologNFeDistribuicaoNFeWebService.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jun 25, 2026, 5:33:03 PM BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,URL) VALUES ('55',0,0,TO_TIMESTAMP('2026-06-25 17:33:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-06-25 17:33:03','YYYY-MM-DD HH24:MI:SS'),10,nextidfunc(1000057,'N'),'7078e5bf-834e-4294-8ce4-053f2084aab2','Y','NFeDistribuicaoDFe','1.00','2','https://hom1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx')
;

