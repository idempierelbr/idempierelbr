-- LBR_NFeXML.LBR_NFeModel: usar a lista de modelos de NF-e (55 e 65).
-- A coluna foi criada apontando para a lista de modelos do SPED (LBR_FiscalDoc_Model),
-- que nao tem 55 nem 65, e a validacao recusava a gravacao do DF-e recebido.
SELECT register_migration_script('202610041047_DFeModeloNFe.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

UPDATE AD_Column
   SET AD_Reference_Value_ID = (SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '84b4ec5f-53f1-4d1b-b084-06784a7069f7'),
       Updated = TO_TIMESTAMP('2026-10-04 10:47:00','YYYY-MM-DD HH24:MI:SS'),
       UpdatedBy = 100
 WHERE AD_Column_ID = 802121
   AND AD_Reference_Value_ID = 800019
;
