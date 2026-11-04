-- LBR_RTCFiscoRequest.LBR_ErrorCode: 20 -> 40 caracteres. O codigo que a
-- Receita devolve para tiquete perdido (SOLICITACAO_NAO_ENCONTRADA) tem 26.
SELECT register_migration_script('202611040720_RTCFiscoErrorCode.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 4 de nov. de 2026 07:20:00 BRT
UPDATE AD_Column
   SET FieldLength = 40,
       Updated = TO_TIMESTAMP('2026-11-04 07:20:00','YYYY-MM-DD HH24:MI:SS'),
       UpdatedBy = 100
 WHERE AD_Column_ID = 802731
;

-- 4 de nov. de 2026 07:20:00 BRT
ALTER TABLE LBR_RTCFiscoRequest MODIFY LBR_ErrorCode VARCHAR2(40 CHAR) DEFAULT NULL 
;
