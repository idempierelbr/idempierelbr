-- IBS/CBS: UU oficial na CST 000 e na cClassTrib 000001, antes da carga da Calculadora RTC
SELECT register_migration_script('202611230905_IBSCBSUUOficial.sql') FROM dual;

-- A 202609021030 aproveita a CST 000 e a cClassTrib 000001 que o tenant tenha criado antes
-- dela (passa as duas para System), mas mantém o UU de origem. A 202611230908 localiza as
-- duas pelo UU oficial: sem esta correção, as reduções da 000001 ficam sem cClassTrib e a
-- carga falha. Este script tem timestamp anterior ao da 202611230908 de propósito, para rodar
-- antes dela no SyncDB. Onde as duas já têm o UU oficial, nada muda.

UPDATE LBR_CST_IBSCBS SET LBR_CST_IBSCBS_UU='eec4ac99-488a-5524-9f7b-2346b303e6b2', Updated=TO_TIMESTAMP('2026-11-23 09:05:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0
  AND Value='000'
  AND (LBR_CST_IBSCBS_UU IS NULL OR LBR_CST_IBSCBS_UU<>'eec4ac99-488a-5524-9f7b-2346b303e6b2')
  AND NOT EXISTS (SELECT 1 FROM LBR_CST_IBSCBS c WHERE c.LBR_CST_IBSCBS_UU='eec4ac99-488a-5524-9f7b-2346b303e6b2')
;

UPDATE LBR_ClassTrib_IBSCBS SET LBR_ClassTrib_IBSCBS_UU='08811aa5-c381-59ec-a5ea-880bb04b3104', Updated=TO_TIMESTAMP('2026-11-23 09:05:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
WHERE AD_Client_ID=0
  AND Value='000001'
  AND (LBR_ClassTrib_IBSCBS_UU IS NULL OR LBR_ClassTrib_IBSCBS_UU<>'08811aa5-c381-59ec-a5ea-880bb04b3104')
  AND NOT EXISTS (SELECT 1 FROM LBR_ClassTrib_IBSCBS c WHERE c.LBR_ClassTrib_IBSCBS_UU='08811aa5-c381-59ec-a5ea-880bb04b3104')
;

