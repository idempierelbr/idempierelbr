-- Sped EFD

CREATE OR REPLACE VIEW LBR_FactFiscal_InvoiceTax AS
SELECT it.c_invoice_id,
    t.name LBR_Tax_Name,
    it.taxamt,
    it.taxbaseamt
   FROM c_invoicetax it
     JOIN c_tax t ON it.c_tax_id = t.c_tax_id
  WHERE it.isactive = 'Y'::bpchar AND it.processed = 'Y'::bpchar;
  
SELECT lbr_register_migration_script('201603311327-Sped-055-LBR_FactFiscal_InvoiceTax.sql') FROM dual;
