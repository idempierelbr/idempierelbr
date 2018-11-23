-- Sped EFD
-- This script was generated for a postgresql DB. It should be tested in a oracle DB.

-- view para agregar dados de impostos para a criação dos registros do SPED
-- @author Claudemir Todo Bom
-- Baseado na lbr_factfiscal_nflinetax_v de @author Arthur Melo e Pablo Boff

CREATE OR REPLACE VIEW lbr_factfiscal_invoicelinetax(
    c_invoice_id,
    c_invoiceline_id,
    lbr_taxbaseamt,
    lbr_taxbase,
    lbr_taxrate,
    lbr_taxamt,
    lbr_taxstatustn,
    tipimposto )
AS
  SELECT IMPOSTOS.C_Invoice_ID,
         IMPOSTOS.C_InvoiceLINE_ID,
         ROUND( SUM( CASE
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0 ) < 0 OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0 ) < 0 THEN 0
                       ELSE COALESCE( IMPOSTOS.LBR_TAXBASEAMT, 0 )
                     END ), 4 ) AS LBR_TAXBASEAMT,
         ROUND( SUM( CASE
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0 ) < 0 OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0 ) < 0 THEN 0
                       ELSE COALESCE( IMPOSTOS.LBR_TAXBASE, 0 )
                     END ), 4 ) AS LBR_TAXBASE,
         ROUND( MAX( CASE
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0 ) < 0 OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0 ) < 0 THEN 0
                       ELSE COALESCE( IMPOSTOS.LBR_TAXRATE, 0 )
                     END ), 4 ) AS LBR_TAXRATE,
         ROUND( SUM( CASE
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0 ) < 0 OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0 ) < 0 THEN 0
                       ELSE COALESCE( IMPOSTOS.LBR_TAXAMT, 0 )
                     END ), 4 ) AS LBR_TAXAMT,
         CASE
           WHEN IMPOSTOS.LBR_TAXSTATUSTN IN ( TO_NCHAR('101') , TO_NCHAR('102') , TO_NCHAR('103') , TO_NCHAR('201') , TO_NCHAR('202') , TO_NCHAR('203') , TO_NCHAR('300') , TO_NCHAR('400') , TO_NCHAR('500') , TO_NCHAR('900')  ) THEN TO_NCHAR('90') 
           ELSE IMPOSTOS.LBR_TAXSTATUSTN
         END AS LBR_TAXSTATUSTN,
         IMPOSTOS.TIPIMPOSTO
  FROM ( ( ( ( ( (
                   SELECT IL.C_Invoice_ID,
                          IL.C_InvoiceLine_ID,
                          DLICMSST.LBR_TAXBASEAMT,
                          DLICMSST.LBR_TAXBASE,
                          DLICMSST.LBR_TAXRATE,
                          DLICMSST.LBR_TAXAMT,
                          DLICMSST.LBR_ICMS_TAXSTATUSTN AS LBR_TAXSTATUSTN,
                          'ICMSPROD'                           AS TIPIMPOSTO
                   FROM C_InvoiceLine IL
                        LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.C_InvoiceLine_ID = IL.C_InvoiceLine_ID
                        JOIN LBR_DOCLINE_ICMS DLICMSST ON DLICMSST.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
                   UNION ALL
                   SELECT IL.C_Invoice_ID,
                          IL.C_InvoiceLine_ID,
                          DLICMSST.LBR_ICMSST_TAXBASEAMT AS LBR_TAXBASEAMT,
                          DLICMSST.LBR_ICMSST_TAXBASE AS LBR_TAXBASE,
                          DLICMSST.LBR_ICMSST_TAXRATE AS LBR_TAXRATE,
                          DLICMSST.LBR_ICMSST_TAXAMT AS LBR_TAXAMT,
                          DLICMSST.LBR_ICMS_TAXSTATUSTN AS LBR_TAXSTATUSTN,
                          'ICMSST'                           AS TIPIMPOSTO
                   FROM C_InvoiceLine IL
                        LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                        JOIN LBR_DOCLINE_ICMS DLICMSST ON DLICMSST.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
                 )
                 UNION ALL
                 SELECT IL.C_Invoice_ID,
                        IL.C_InvoiceLine_ID,
                        DLPIS.LBR_TAXBASEAMT,
                        0 AS LBR_TAXBASE,
                        DLPIS.LBR_TAXRATE,
                        DLPIS.LBR_TAXAMT,
                        DLPIS.LBR_PIS_TAXSTATUS AS LBR_TAXSTATUSTN,
                        'PISPROD'                         AS TIPIMPOSTO
                 FROM C_InvoiceLine IL
                      LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                      JOIN LBR_DOCLINE_PIS DLPIS ON DLPIS.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
               )
               UNION ALL
               SELECT IL.C_Invoice_ID,
                      IL.C_InvoiceLine_ID,
                      DLCOFINS.LBR_TAXBASEAMT,
                      0 AS LBR_TAXBASE,
                      DLCOFINS.LBR_TAXRATE,
                      DLCOFINS.LBR_TAXAMT,
                      DLCOFINS.LBR_COF_TAXSTATUS AS LBR_TAXSTATUSTN,
                      'COFINSPROD'                       AS TIPIMPOSTO
               FROM C_InvoiceLine IL
                    LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                    JOIN LBR_DOCLINE_COFINS DLCOFINS ON DLCOFINS.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
             )
             UNION ALL
             SELECT IL.C_Invoice_ID,
                    IL.C_InvoiceLine_ID,
                    DLIPI.LBR_TAXBASEAMT,
                    DLIPI.LBR_TAXRATE AS LBR_TAXBASE,
                    DLIPI.LBR_TAXRATE,
                    DLIPI.LBR_TAXAMT,
                    DLIPI.LBR_IPI_TAXSTATUS AS LBR_TAXSTATUSTN,
                    'IPI'                     AS TIPIMPOSTO
             FROM C_InvoiceLine IL
                  LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                  JOIN LBR_DOCLINE_IPI DLIPI ON DLIPI.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
           )
           UNION ALL
           SELECT IL.C_Invoice_ID,
                  IL.C_InvoiceLine_ID,
                  DLISSQN.LBR_TAXBASEAMT,
                  0 AS LBR_TAXBASE,
                  DLISSQN.LBR_TAXRATE,
                  DLISSQN.LBR_TAXAMT,
                  TO_NCHAR('00')                   AS LBR_TAXSTATUSTN,
                  'ISS'                   AS TIPIMPOSTO
           FROM C_InvoiceLine IL
                LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                JOIN LBR_DOCLINE_ISSQN DLISSQN ON DLISSQN.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
         )
         UNION ALL
         SELECT IL.C_Invoice_ID,
                IL.C_InvoiceLine_ID,
                DLIMP.LBR_TAXBASEAMT,
                0 AS LBR_TAXBASE,
                DLIMP.LBR_TAXBASEAMT * DLIMP.LBR_TAXAMT AS LBR_TAXRATE,
                DLIMP.LBR_TAXAMT,
                TO_NCHAR('0') AS LBR_TAXSTATUSTN,
                'II'                 AS TIPIMPOSTO
         FROM C_InvoiceLine IL
              LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
              JOIN LBR_DOCLINE_IMPORTTAX DLIMP ON DLIMP.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
       ) IMPOSTOS
  GROUP BY IMPOSTOS.C_Invoice_ID,
           IMPOSTOS.C_InvoiceLine_ID,
           IMPOSTOS.LBR_TAXSTATUSTN,
           IMPOSTOS.TIPIMPOSTO
  ORDER BY IMPOSTOS.C_Invoice_ID,
           IMPOSTOS.C_InvoiceLine_ID,
           IMPOSTOS.TIPIMPOSTO;

SELECT lbr_register_migration_script('201603311325-Sped-050-LBR_FactFiscal_InvoiceLineTax.sql') FROM dual;

