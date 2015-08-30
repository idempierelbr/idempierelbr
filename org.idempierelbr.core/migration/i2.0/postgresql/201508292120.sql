
-- Function: boletojuros(integer, timestamp with time zone)

-- DROP FUNCTION boletojuros(integer, timestamp with time zone);

CREATE OR REPLACE FUNCTION boletojuros("p_LBR_Boleto_ID" integer, "p_PaymentDate" timestamp with time zone)
  RETURNS numeric AS
$BODY$
SELECT 
 CASE 
 /* detecta atraso */
 WHEN daysBetween( $2 , NextBusinessDay(COALESCE(bd.LBR_InterestDate,b.DueDate),b.ad_client_id) ) > 0 THEN 
    CASE
    /* taxa mensal */
    WHEN bd.LBR_InterestCode='2' THEN 
       /* calcula valor diário e arredonda */
       ROUND(b.grandtotal*bd.LBR_InterestAP/30/100,2)
    /* valor por dia */
    WHEN bd.LBR_InterestCode='1' THEN 
       bd.LBR_InterestAP
    ELSE 0
    END 
    /* multiplica por dias de atraso */
    * daysBetween( $2 , NextBusinessDay(COALESCE(bd.LBR_InterestDate,b.DueDate),b.ad_client_id) )
 ELSE 0
 END interestvalue

FROM lbr_boleto b LEFT JOIN lbr_boletodetails bd ON b.lbr_boleto_id = bd.lbr_boleto_id WHERE b.lbr_boleto_id=$1

 $BODY$
  LANGUAGE sql VOLATILE
  COST 100;
COMMENT ON FUNCTION boletojuros(integer, timestamp with time zone) IS 'Obtém valor dos juros de um boleto';





-- Function: boletomulta(integer, timestamp with time zone)

-- DROP FUNCTION boletomulta(integer, timestamp with time zone);

CREATE OR REPLACE FUNCTION boletomulta("p_LBR_Boleto_ID" integer, "p_PaymentDate" timestamp with time zone)
  RETURNS numeric AS
$BODY$
SELECT 
 CASE 
 /* detecta atraso */
 WHEN daysBetween( $2 , NextBusinessDay(COALESCE(bd.LBR_LatePaymentPenaltyDate,b.dueDate),b.ad_client_id) ) > 0 THEN 
    CASE
    /* taxa percentual */
    WHEN bd.LBR_LatePaymentPenaltyCode='2' THEN 
       /* calcula e arredonda */
       ROUND(b.grandtotal*bd.LBR_LatePaymentPenaltyAP/100,2)
    /* valor fixo */
    WHEN bd.LBR_LatePaymentPenaltyCode='1' THEN 
       bd.LBR_LatePaymentPenaltyAP
    ELSE 0
    END
 ELSE 0
 END latepenaltyvalue 

FROM lbr_boleto b LEFT JOIN lbr_boletodetails bd ON b.lbr_boleto_id = bd.lbr_boleto_id WHERE b.lbr_boleto_id=$1$BODY$
  LANGUAGE sql VOLATILE
  COST 100;
COMMENT ON FUNCTION boletomulta(integer, timestamp with time zone) IS 'Obtém valor da multa de um boleto em uma data específica';


SELECT lbr_register_migration_script('201508292120.sql') FROM dual
;
