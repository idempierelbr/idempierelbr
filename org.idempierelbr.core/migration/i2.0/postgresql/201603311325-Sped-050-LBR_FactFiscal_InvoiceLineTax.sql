-- Sped EFD

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
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0::NUMERIC ) < 0::NUMERIC OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0::NUMERIC ) < 0::NUMERIC THEN 0::NUMERIC
                       ELSE COALESCE( IMPOSTOS.LBR_TAXBASEAMT, 0::NUMERIC )
                     END ), 4 ) AS LBR_TAXBASEAMT,
         ROUND( SUM( CASE
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0::NUMERIC ) < 0::NUMERIC OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0::NUMERIC ) < 0::NUMERIC THEN 0::NUMERIC
                       ELSE COALESCE( IMPOSTOS.LBR_TAXBASE, 0::NUMERIC )
                     END ), 4 ) AS LBR_TAXBASE,
         ROUND( MAX( CASE
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0::NUMERIC ) < 0::NUMERIC OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0::NUMERIC ) < 0::NUMERIC THEN 0::NUMERIC
                       ELSE COALESCE( IMPOSTOS.LBR_TAXRATE, 0::NUMERIC )
                     END ), 4 ) AS LBR_TAXRATE,
         ROUND( SUM( CASE
                       WHEN COALESCE( IMPOSTOS.LBR_TAXRATE, 0::NUMERIC ) < 0::NUMERIC OR COALESCE( IMPOSTOS.LBR_TAXAMT, 0::NUMERIC ) < 0::NUMERIC THEN 0::NUMERIC
                       ELSE COALESCE( IMPOSTOS.LBR_TAXAMT, 0::NUMERIC )
                     END ), 4 ) AS LBR_TAXAMT,
         CASE
           WHEN IMPOSTOS.LBR_TAXSTATUSTN::TEXT = ANY ( ARRAY [ '101' ::CHARACTER VARYING::TEXT, '102' ::CHARACTER VARYING::TEXT, '103' ::CHARACTER VARYING::TEXT, '201' ::CHARACTER VARYING::TEXT, '202' ::CHARACTER VARYING::TEXT, '203' ::CHARACTER VARYING::TEXT, '300' ::CHARACTER VARYING::TEXT, '400' ::CHARACTER VARYING::TEXT, '500' ::CHARACTER
            VARYING::TEXT, '900' ::CHARACTER VARYING::TEXT ] ) THEN '90' ::CHARACTER VARYING
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
                          'ICMSPROD'                          ::TEXT AS TIPIMPOSTO
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
                          'ICMSST'                          ::TEXT AS TIPIMPOSTO
                   FROM C_InvoiceLine IL
                        LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                        JOIN LBR_DOCLINE_ICMS DLICMSST ON DLICMSST.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
                 )
                 UNION ALL
                 SELECT IL.C_Invoice_ID,
                        IL.C_InvoiceLine_ID,
                        DLPIS.LBR_TAXBASEAMT,
                        0::NUMERIC AS LBR_TAXBASE,
                        DLPIS.LBR_TAXRATE,
                        DLPIS.LBR_TAXAMT,
                        DLPIS.LBR_PIS_TAXSTATUS AS LBR_TAXSTATUSTN,
                        'PISPROD'                        ::TEXT AS TIPIMPOSTO
                 FROM C_InvoiceLine IL
                      LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                      JOIN LBR_DOCLINE_PIS DLPIS ON DLPIS.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
               )
               UNION ALL
               SELECT IL.C_Invoice_ID,
                      IL.C_InvoiceLine_ID,
                      DLCOFINS.LBR_TAXBASEAMT,
                      0::NUMERIC AS LBR_TAXBASE,
                      DLCOFINS.LBR_TAXRATE,
                      DLCOFINS.LBR_TAXAMT,
                      DLCOFINS.LBR_COF_TAXSTATUS AS LBR_TAXSTATUSTN,
                      'COFINSPROD'                      ::TEXT AS TIPIMPOSTO
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
                    'IPI'                    ::TEXT AS TIPIMPOSTO
             FROM C_InvoiceLine IL
                  LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                  JOIN LBR_DOCLINE_IPI DLIPI ON DLIPI.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
           )
           UNION ALL
           SELECT IL.C_Invoice_ID,
                  IL.C_InvoiceLine_ID,
                  DLISSQN.LBR_TAXBASEAMT,
                  0::NUMERIC AS LBR_TAXBASE,
                  DLISSQN.LBR_TAXRATE,
                  DLISSQN.LBR_TAXAMT,
                  '00'                  ::TEXT AS LBR_TAXSTATUSTN,
                  'ISS'                  ::TEXT AS TIPIMPOSTO
           FROM C_InvoiceLine IL
                LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = IL.C_InvoiceLine_ID
                JOIN LBR_DOCLINE_ISSQN DLISSQN ON DLISSQN.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
         )
         UNION ALL
         SELECT IL.C_Invoice_ID,
                IL.C_InvoiceLine_ID,
                DLIMP.LBR_TAXBASEAMT,
                0::NUMERIC AS LBR_TAXBASE,
                DLIMP.LBR_TAXBASEAMT * DLIMP.LBR_TAXAMT AS LBR_TAXRATE,
                DLIMP.LBR_TAXAMT,
                0::TEXT AS LBR_TAXSTATUSTN,
                'II'                ::TEXT AS TIPIMPOSTO
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
          