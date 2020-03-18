-- Postgres doesn't allow repeated constraint name anymore, so migration scripts may fail when applied in newer versions.
-- The below queries correct the errors generated in previous scripts.
-- Nov 9, 2018 11:56:01 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessageLBRTaxConfigBPG',Updated=TO_TIMESTAMP('2018-11-09 11:56:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000291
;

-- Nov 9, 2018 11:56:05 AM BRST
ALTER TABLE LBR_TaxConfig_BPGroup DROP CONSTRAINT lbrlegalmessage_lbrtaxconfigbp
;

-- Nov 9, 2018 11:56:05 AM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT LBRLegalMessageLBRTaxConfigBPG FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:08:22 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessageLBRTaxConfigPrG',Updated=TO_TIMESTAMP('2018-11-09 13:08:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000334
;

-- Nov 9, 2018 1:08:25 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup DROP CONSTRAINT lbrlegalmessage_lbrtaxconfigpr
;

-- Nov 9, 2018 1:08:25 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT LBRLegalMessageLBRTaxConfigPrG FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:08:54 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLicensePlateRegionLBRNotaFT',Updated=TO_TIMESTAMP('2018-11-09 13:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000701
;

-- Nov 9, 2018 1:08:55 PM BRST
ALTER TABLE LBR_NotaFiscalTransp DROP CONSTRAINT lbrlicenseplateregion_lbrnotaf
;

-- Nov 9, 2018 1:08:55 PM BRST
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT LBRLicensePlateRegionLBRNotaFT FOREIGN KEY (LBR_LicensePlateRegion_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:09:26 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalLinLBRNotaFiscaLC',Updated=TO_TIMESTAMP('2018-11-09 13:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800531
;

-- Nov 9, 2018 1:09:28 PM BRST
ALTER TABLE LBR_NotaFiscalLineComb DROP CONSTRAINT lbrnotafiscalline_lbrnotafisca
;

-- Nov 9, 2018 1:09:28 PM BRST
ALTER TABLE LBR_NotaFiscalLineComb ADD CONSTRAINT LBRNotaFiscalLinLBRNotaFiscaLC FOREIGN KEY (LBR_NotaFiscalLine_ID) REFERENCES lbr_notafiscalline(lbr_notafiscalline_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:09:52 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalTranspLBRNotaFisT',Updated=TO_TIMESTAMP('2018-11-09 13:09:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000714
;

-- Nov 9, 2018 1:09:54 PM BRST
ALTER TABLE LBR_NotaFiscalTrailer DROP CONSTRAINT lbrnotafiscaltransp_lbrnotafis
;

-- Nov 9, 2018 1:09:54 PM BRST
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT LBRNotaFiscalTranspLBRNotaFisT FOREIGN KEY (LBR_NotaFiscalTransp_ID) REFERENCES lbr_notafiscaltransp(lbr_notafiscaltransp_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:10:17 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRPRevenueReturnAcMProductPCA',Updated=TO_TIMESTAMP('2018-11-09 13:10:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801669
;

-- Nov 9, 2018 1:10:18 PM BRST
ALTER TABLE M_Product_Category_Acct DROP CONSTRAINT lbrprevenuereturnacct_mproduct
;

-- Nov 9, 2018 1:10:18 PM BRST
ALTER TABLE M_Product_Category_Acct ADD CONSTRAINT LBRPRevenueReturnAcMProductPCA FOREIGN KEY (LBR_P_RevenueReturn_Acct) REFERENCES c_validcombination(c_validcombination_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:10:39 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguratiLBRTaxConfBPG',Updated=TO_TIMESTAMP('2018-11-09 13:10:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000295
;

-- Nov 9, 2018 1:10:42 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup DROP CONSTRAINT lbrtaxconfiguration_lbrtaxconf
;

-- Nov 9, 2018 1:10:42 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT LBRTaxConfiguratiLBRTaxConfBPG FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:11:01 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguratioLBRTaxConfPr',Updated=TO_TIMESTAMP('2018-11-09 13:11:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000323
;

-- Nov 9, 2018 1:11:02 PM BRST
ALTER TABLE LBR_TaxConfig_Product DROP CONSTRAINT lbrtaxconfiguration_lbrtaxconf
;

-- Nov 9, 2018 1:11:02 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT LBRTaxConfiguratioLBRTaxConfPr FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:11:19 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguratioLBRTaxConfPG',Updated=TO_TIMESTAMP('2018-11-09 13:11:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000338
;

-- Nov 9, 2018 1:11:20 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup DROP CONSTRAINT lbrtaxconfiguration_lbrtaxconf
;

-- Nov 9, 2018 1:11:20 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT LBRTaxConfiguratioLBRTaxConfPG FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 9, 2018 1:11:37 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfigurationLBRTaxConfR',Updated=TO_TIMESTAMP('2018-11-09 13:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000309
;

-- Nov 9, 2018 1:11:39 PM BRST
ALTER TABLE LBR_TaxConfig_Region DROP CONSTRAINT lbrtaxconfiguration_lbrtaxconf
;

-- Nov 9, 2018 1:11:39 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT LBRTaxConfigurationLBRTaxConfR FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
;

SELECT lbr_register_migration_script('201811091305_FixFKs.sql') FROM dual
;

