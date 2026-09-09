-- Unicidade do numero do MDF-e por emitente e serie.
SELECT register_migration_script('202609091200_LBRMDFeNumeroUnico.sql') FROM dual;

CREATE UNIQUE INDEX IF NOT EXISTS kr_mdfe_natural_idx
    ON LBR_MDFe (AD_Client_ID, AD_Org_ID, LBR_Serie, DocumentNo)
 WHERE DocumentNo ~ '^[0-9]+$'
;
