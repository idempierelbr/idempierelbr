-- Unicidade do numero do MDF-e por emitente e serie.
SELECT register_migration_script('202609091200_LBRMDFeNumeroUnico.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

DECLARE
   v_count NUMBER;
BEGIN
   SELECT COUNT(*) INTO v_count FROM USER_INDEXES WHERE INDEX_NAME = 'KR_MDFE_NATURAL_IDX';
   IF v_count = 0 THEN
      EXECUTE IMMEDIATE '
         CREATE UNIQUE INDEX kr_mdfe_natural_idx ON LBR_MDFe (
               CASE WHEN REGEXP_LIKE(DocumentNo, ''^[0-9]+$'') THEN AD_Client_ID END,
               CASE WHEN REGEXP_LIKE(DocumentNo, ''^[0-9]+$'') THEN AD_Org_ID END,
               CASE WHEN REGEXP_LIKE(DocumentNo, ''^[0-9]+$'') THEN LBR_Serie END,
               CASE WHEN REGEXP_LIKE(DocumentNo, ''^[0-9]+$'') THEN DocumentNo END)';
   END IF;
END;
/
