-- Sped EFD
-- This script was generated for a postgresql DB. It should be tested in a oracle DB.
CREATE OR REPLACE FUNCTION getCurrentCost (p_AD_Client_ID IN NUMBER,p_M_Product_ID IN NUMBER,p_C_Period_ID IN NUMBER) RETURN NUMBER AS

    v_CurrentCost      NUMBER;
    v_C_Period_ID      NUMBER;
    v_StartDate        DATE;
    v_OldDate          DATE;
        
BEGIN

  v_CurrentCost := 0;
  v_C_Period_ID := p_C_Period_ID; 
       
  IF p_AD_Client_ID IS NULL  OR p_M_Product_ID IS NULL THEN
    
      RETURN v_CurrentCost;
        
  END IF;
     
  BEGIN
        
        IF v_C_Period_ID <= 0 THEN
          SELECT CurrentCostPrice INTO v_CurrentCost FROM M_Cost c 
          WHERE c.M_Product_ID = p_M_Product_ID AND c.C_AcctSchema_ID = p_AD_Client_ID AND c.AD_Org_ID = 0;
          
          RETURN v_CurrentCost;
        END IF;
      
        SELECT p.StartDate INTO v_StartDate FROM C_Period p WHERE p.C_Period_ID = v_C_Period_ID;
        v_OldDate := TRUNC(ADDDays(v_StartDate,-1),'MM');
        v_C_Period_ID := getPeriod(p_AD_Client_ID,v_OldDate);
        v_CurrentCost := getCurrentCost(p_AD_Client_ID,p_M_Product_ID,v_C_Period_ID);
                
        EXCEPTION
               WHEN NO_DATA_FOUND THEN v_CurrentCost := 0;
               
  END;

  IF v_CurrentCost IS NULL THEN
    v_CurrentCost := 0;
  END IF;
        
  RETURN v_CurrentCost;
    
END getCurrentCost;
/

SELECT lbr_register_migration_script('201603311329-Sped-090-getCurrentCost.sql') FROM dual;
