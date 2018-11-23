-- Sped EFD
-- This script was generated for a postgresql DB. It should be tested in a oracle DB.
-- DROP VIEW LBR_FactFiscal;
-- DROP VIEW LBR_FactFiscal_NotaFiscalTax;
-- DROP VIEW LBR_FactFiscal_NFLineTax;
-- DROP VIEW LBR_FactFiscal_InvoiceTax;
-- DROP VIEW LBR_FactFiscal_InvoiceLineTax;

SELECT lbr_register_migration_script('201603311324-Sped-000-removeviews.sql') FROM dual;
