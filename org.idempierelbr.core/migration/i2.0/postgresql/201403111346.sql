-- 11/03/2014 13h43min9s BRT
-- iDempiereLBR Default Tax Provider Configuration
INSERT INTO C_TaxProviderCfg (Created,C_TaxProviderCfg_ID,C_TaxProviderCfg_UU,CreatedBy,Description,IsActive,Name,Updated,TaxProviderClass,AD_Client_ID,AD_Org_ID,UpdatedBy) VALUES (TO_TIMESTAMP('2014-03-11 13:43:09','YYYY-MM-DD HH24:MI:SS'),1000000,'42256009-ccf0-49f0-8c5e-4c833c5d345b',0,'Default tax calculation provider for brazilian companies','Y','iDempiereLBR Tax Provider',TO_TIMESTAMP('2014-03-11 13:43:09','YYYY-MM-DD HH24:MI:SS'),'org.idempierelbr.tax.DefaultTaxProvider',0,0,0)
;

SELECT lbr_register_migration_script('201403111346.sql') FROM dual
;
