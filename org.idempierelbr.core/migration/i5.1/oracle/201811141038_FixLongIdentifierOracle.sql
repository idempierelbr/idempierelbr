-- ALTER TABLE LBR_FiscalGroup_BPartner DROP CONSTRAINT LBR_FiscalGroup_BPartner_UU_uu_idx
-- ;

ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT LBR_FiscalGroup_BPartne_uu_idx UNIQUE (LBR_FiscalGroup_BPartner_UU)
;

-- ALTER TABLE LBR_TaxConfig_ProductGroup DROP CONSTRAINT LBR_TaxConfig_ProductGroup__uu_idx
-- ;

ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT LBR_TaxConfig_ProductGr_uu_idx UNIQUE (LBR_TaxConfig_ProductGroup_UU)
;

-- ALTER TABLE LBR_BankAccount_Convenio DROP CONSTRAINT LBR_BankAccount_Convenio_UU_uu_idx
-- ;

ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT LBR_BankAccount_Conveni_uu_idx UNIQUE (LBR_BankAccount_Convenio_UU)
;

-- ALTER TABLE LBR_BankAccount_Carteira DROP CONSTRAINT LBR_BankAccount_Carteira_UU_uu_idx
-- ;

ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT LBR_BankAccount_Carteir_uu_idx UNIQUE (LBR_BankAccount_Carteira_UU)
;

-- Nov 14, 2018 11:43:23 AM BRST
-- DROP INDEX lbr_docline_details_invoiceline
-- ;

-- Nov 14, 2018 11:43:32 AM BRST
UPDATE AD_TableIndex SET Name='lbr_docline_details_invoicelin',Updated=TO_DATE('2018-11-14 11:43:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_TableIndex_ID=800077
;

-- Nov 14, 2018 11:43:33 AM BRST
CREATE INDEX lbr_docline_details_invoicelin ON LBR_DocLine_Details (C_InvoiceLine_ID)
;

-- Nov 14, 2018 11:44:02 AM BRST
-- DROP INDEX lbr_bankaccount_carteira_convenio
-- ;

-- Nov 14, 2018 11:44:11 AM BRST
UPDATE AD_TableIndex SET Name='lbr_bankaccount_carteira_conve',Updated=TO_DATE('2018-11-14 11:44:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_TableIndex_ID=800081
;

-- Nov 14, 2018 11:44:12 AM BRST
CREATE INDEX lbr_bankaccount_carteira_conve ON LBR_BankAccount_Carteira (LBR_BankAccount_Convenio_ID)
;

-- Nov 14, 2018 11:44:41 AM BRST
-- DROP INDEX lbr_taxconfig_bpartner_bpartner
-- ;

-- Nov 14, 2018 11:44:49 AM BRST
UPDATE AD_TableIndex SET Name='lbr_taxconfig_bpartner_bpartne',Updated=TO_DATE('2018-11-14 11:44:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_TableIndex_ID=800145
;

-- Nov 14, 2018 11:44:51 AM BRST
CREATE INDEX lbr_taxconfig_bpartner_bpartne ON LBR_TaxConfig_BPartner (C_BPartner_ID)
;

SELECT register_migration_script('201811141038_FixLongIdentifierOracle.sql') FROM dual
;

