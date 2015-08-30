
CREATE OR REPLACE FUNCTION BOLETOJUROS (
   p_Boleto          IN INTEGER,
   p_PaymentDate     IN TIMESTAMP WITH LOCAL TIME ZONE)
   RETURN NUMBER
AS
  v_interest NUMBER;
BEGIN

BEGIN
 SELECT	
 CASE 
 /* detecta atraso */
 WHEN daysBetween( p_PaymentDate , NextBusinessDay(COALESCE(bd.LBR_InterestDate,b.DueDate),b.ad_client_id) ) > 0 THEN 
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
    * daysBetween( p_PaymentDate , NextBusinessDay(COALESCE(bd.LBR_InterestDate,b.DueDate),b.ad_client_id) )
 ELSE 0
 END

 INTO v_interest

FROM lbr_boleto b LEFT JOIN lbr_boletodetails bd ON b.lbr_boleto_id = bd.lbr_boleto_id WHERE b.lbr_boleto_id=p_Boleto;
 
EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         RETURN 0;
END;

  RETURN v_interest;
	
END BOLETOJUROS;
/


CREATE OR REPLACE FUNCTION BOLETOMULTA 
(
  p_Boleto IN INTEGER 
, p_PaymentDate IN TIMESTAMP WITH LOCAL TIME ZONE
) RETURN NUMBER AS 

  v_Fine NUMBER;

BEGIN

BEGIN
SELECT 
 CASE 
 /* detecta atraso */
 WHEN daysBetween( p_PaymentDate , NextBusinessDay(COALESCE(bd.LBR_LatePaymentPenaltyDate,b.dueDate),b.ad_client_id) ) > 0 THEN 
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
 END

INTO v_Fine

FROM lbr_boleto b LEFT JOIN lbr_boletodetails bd ON b.lbr_boleto_id = bd.lbr_boleto_id WHERE b.lbr_boleto_id=p_Boleto;

EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         RETURN 0;
END;

  RETURN v_Fine;
	
END BOLETOMULTA;
/


SELECT lbr_register_migration_script('201508292120.sql') FROM dual;
