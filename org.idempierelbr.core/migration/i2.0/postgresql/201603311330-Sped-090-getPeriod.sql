-- Sped EFD

CREATE OR REPLACE FUNCTION getPeriod ( p_AD_Client_ID NUMERIC, p_StartDate DATE ) RETURNS NUMERIC
AS

$BODY$

DECLARE
        v_Period      NUMERIC;
        
BEGIN

    v_Period := 0;

    IF p_AD_Client_ID IS NULL  OR p_StartDate IS NULL THEN
    
        RETURN v_Period;
        
    END IF;
    
    BEGIN
      SELECT MAX(C_Period_ID) INTO v_Period
      FROM C_Period WHERE AD_Client_ID = p_AD_Client_ID AND StartDate = TRUNC(p_StartDate,'MM');
      
      EXCEPTION
        WHEN NO_DATA_FOUND THEN v_Period := 0;
    END;

        
    RETURN v_Period;
    
END;


$BODY$
  LANGUAGE 'plpgsql';

 ALTER FUNCTION getPeriod(numeric, date) OWNER TO adempiere;
 
 SELECT lbr_register_migration_script('201603311330-Sped-090-getPeriod.sql') FROM dual;
 