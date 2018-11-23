-- Sped EFD
-- This script was generated for a postgresql DB. It should be tested in a oracle DB.

-- view para agregar dados de impostos para a criação dos registros do SPED
-- @author Arthur Melo e Pablo Boff

CREATE OR REPLACE VIEW lbr_factfiscal_nflinetax(
    lbr_notafiscal_id,
    lbr_notafiscalline_id,
    lbr_taxbaseamt,
    lbr_taxbase,
    lbr_taxrate,
    lbr_taxamt,
    lbr_taxstatustn,
    tipimposto,
    LBR_OwnTaxStatus)
AS
  SELECT IMPOSTOS.LBR_NOTAFISCAL_ID,
         IMPOSTOS.LBR_NOTAFISCALLINE_ID,
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
         IMPOSTOS.TIPIMPOSTO,
         IMPOSTOS.LBR_OwnTaxStatus
  FROM ( ( ( ( ( (
                   SELECT NFL.LBR_NOTAFISCAL_ID,
                          NFL.LBR_NOTAFISCALLINE_ID,
                          DLICMSST.LBR_TAXBASEAMT,
                          DLICMSST.LBR_TAXBASE,
                          DLICMSST.LBR_TAXRATE,
                          DLICMSST.LBR_TAXAMT,
                          DLICMSST.LBR_ICMS_TAXSTATUSTN AS LBR_TAXSTATUSTN,
                          'ICMSPROD'                           AS TIPIMPOSTO,
                          DLICMSST.LBR_ICMS_OwnTaxStatus AS LBR_OwnTaxStatus
                   FROM LBR_NOTAFISCALLINE NFL
                        LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID
                        JOIN LBR_DOCLINE_ICMS DLICMSST ON DLICMSST.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
                   UNION ALL
                   SELECT NFL.LBR_NOTAFISCAL_ID,
                          NFL.LBR_NOTAFISCALLINE_ID,
                          DLICMSST.LBR_ICMSST_TAXBASEAMT AS LBR_TAXBASEAMT,
                          DLICMSST.LBR_ICMSST_TAXBASE AS LBR_TAXBASE,
                          DLICMSST.LBR_ICMSST_TAXRATE AS LBR_TAXRATE,
                          DLICMSST.LBR_ICMSST_TAXAMT AS LBR_TAXAMT,
                          DLICMSST.LBR_ICMS_TAXSTATUSTN AS LBR_TAXSTATUSTN,
                          'ICMSST'                           AS TIPIMPOSTO,
                          DLICMSST.LBR_ICMS_OwnTaxStatus AS LBR_OwnTaxStatus
                   FROM LBR_NOTAFISCALLINE NFL
                        LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID
                        JOIN LBR_DOCLINE_ICMS DLICMSST ON DLICMSST.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
                 )
                 UNION ALL
                 SELECT NFL.LBR_NOTAFISCAL_ID,
                        NFL.LBR_NOTAFISCALLINE_ID,
                        DLPIS.LBR_TAXBASEAMT,
                        0 AS LBR_TAXBASE,
                        DLPIS.LBR_TAXRATE,
                        DLPIS.LBR_TAXAMT,
                        DLPIS.LBR_PIS_TAXSTATUS AS LBR_TAXSTATUSTN,
                        'PISPROD'                         AS TIPIMPOSTO,
                        DLPIS.LBR_PIS_OwnTaxStatus AS LBR_OwnTaxStatus
                 FROM LBR_NOTAFISCALLINE NFL
                      LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID
                      JOIN LBR_DOCLINE_PIS DLPIS ON DLPIS.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
               )
               UNION ALL
               SELECT NFL.LBR_NOTAFISCAL_ID,
                      NFL.LBR_NOTAFISCALLINE_ID,
                      DLCOFINS.LBR_TAXBASEAMT,
                      0 AS LBR_TAXBASE,
                      DLCOFINS.LBR_TAXRATE,
                      DLCOFINS.LBR_TAXAMT,
                      DLCOFINS.LBR_COF_TAXSTATUS AS LBR_TAXSTATUSTN,
                      'COFINSPROD'                       AS TIPIMPOSTO,
                      DLCOFINS.LBR_COF_OwnTaxStatus AS LBR_OwnTaxStatus
               FROM LBR_NOTAFISCALLINE NFL
                    LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID
                    JOIN LBR_DOCLINE_COFINS DLCOFINS ON DLCOFINS.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
             )
             UNION ALL
             SELECT NFL.LBR_NOTAFISCAL_ID,
                    NFL.LBR_NOTAFISCALLINE_ID,
                    DLIPI.LBR_TAXBASEAMT,
                    DLIPI.LBR_TAXRATE AS LBR_TAXBASE,
                    DLIPI.LBR_TAXRATE,
                    DLIPI.LBR_TAXAMT,
                    DLIPI.LBR_IPI_TAXSTATUS AS LBR_TAXSTATUSTN,
                    'IPI'                     AS TIPIMPOSTO,
                    DLIPI.LBR_IPI_OwnTaxStatus AS LBR_OwnTaxStatus
             FROM LBR_NOTAFISCALLINE NFL
                  LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID
                  JOIN LBR_DOCLINE_IPI DLIPI ON DLIPI.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
           )
           UNION ALL
           SELECT NFL.LBR_NOTAFISCAL_ID,
                  NFL.LBR_NOTAFISCALLINE_ID,
                  DLISSQN.LBR_TAXBASEAMT,
                  0 AS LBR_TAXBASE,
                  DLISSQN.LBR_TAXRATE,
                  DLISSQN.LBR_TAXAMT,
                  TO_NCHAR('00')                   AS LBR_TAXSTATUSTN,
                  'ISS'                   AS TIPIMPOSTO,
                  NULL AS LBR_OwnTaxStatus
           FROM LBR_NOTAFISCALLINE NFL
                LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID
                JOIN LBR_DOCLINE_ISSQN DLISSQN ON DLISSQN.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
         )
         UNION ALL
         SELECT NFL.LBR_NOTAFISCAL_ID,
                NFL.LBR_NOTAFISCALLINE_ID,
                DLIMP.LBR_TAXBASEAMT,
                0 AS LBR_TAXBASE,
                DLIMP.LBR_TAXBASEAMT * DLIMP.LBR_TAXAMT AS LBR_TAXRATE,
                DLIMP.LBR_TAXAMT,
                TO_NCHAR('0') AS LBR_TAXSTATUSTN,
                'II'                 AS TIPIMPOSTO,
                NULL AS LBR_OwnTaxStatus
         FROM LBR_NOTAFISCALLINE NFL
              LEFT JOIN LBR_DOCLINE_DETAILS DLD ON DLD.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID
              JOIN LBR_DOCLINE_IMPORTTAX DLIMP ON DLIMP.LBR_DOCLINE_DETAILS_ID = DLD.LBR_DOCLINE_DETAILS_ID
       ) IMPOSTOS
  GROUP BY IMPOSTOS.LBR_NOTAFISCAL_ID,
           IMPOSTOS.LBR_NOTAFISCALLINE_ID,
           IMPOSTOS.LBR_TAXSTATUSTN,
           IMPOSTOS.TIPIMPOSTO,
           IMPOSTOS.LBR_OwnTaxStatus
  ORDER BY IMPOSTOS.LBR_NOTAFISCAL_ID,
           IMPOSTOS.LBR_NOTAFISCALLINE_ID,
           IMPOSTOS.TIPIMPOSTO;

SELECT lbr_register_migration_script('201603311326-Sped-050-LBR_FactFiscal_NFLineTax.sql') FROM dual;
