-- Sped EFD
-- This script was generated for a postgresql DB. It should be tested in a oracle DB.

-- view para agregar dados das notas fiscais aos
-- dados de impostos para a criação dos registros do SPED
-- @author Arthur Melo
-- @author Pablo Boff
-- @author Claudemir Todo Bom

CREATE OR REPLACE VIEW lbr_factfiscal (
    ad_client_id,
    ad_org_id,
    created,
    createdby,
    updated,
    updatedby,
    isactive,
    lbr_factfiscal_id,
    lbr_notafiscal_id,
    documentno,
    lbr_lotsendingprot,
    lbr_nfeid,
    c_invoice_id,
    c_order_id,
    c_bpartner_id,
    datedoc,
    datedelivered,
    lbr_nfeserie,
    grandtotal,
    totallines,
    freightamt,
    lbr_nfemodel,
    lbr_icms_nftaxbaseamt,
    lbr_icms_nftaxamt,
    lbr_icmsst_nftaxbaseamt,
    lbr_icmsst_nftaxamt,
    lbr_cofins_nftaxamt,
    lbr_pis_nftaxamt,
    lbr_ipi_nftaxamt,
    lbr_bpempresa_cnpj,
    lbr_bpempresa_ie,
    lbr_org_address1,
    lbr_org_address2,
    lbr_org_address3,
    lbr_org_address4,
    lbr_org_city_name,
    lbr_org_postal,
    lbr_org_regionname,
    lbr_org_name,
    lbr_bpempresa_ccm,
    lbr_org_location_id,
    lbr_org_phone,
    lbr_org_citycode,
    lbr_bpempresa_suframa,
    lbr_bpempresa_fantasia,
    lbr_org_cnae,
    lbr_org_email,
    lbr_cnpj,
    lbr_ie,
    address1,
    address2,
    address3,
    address4,
    lbr_city_name,
    lbr_postal,
    lbr_region_name,
    name,
    c_location_id,
    lbr_suframa,
    lbr_citycode,
    lbr_countrycode,
    line,
    lbr_notafiscalline_id,
    lbr_cfop_id,
    m_product_id,
    lbr_ncm_id,
    c_uom_id,
    productvalue,
    productname,
    uomsymbol,
    lbr_uom_name,
    upc,
    lbr_ncm_value,
    price,
    qty,
    linenetamt,
    lbr_icms_taxbaseamt,
    lbr_icms_taxbase,
    lbr_icms_taxrate,
    lbr_icms_taxamt,
    lbr_icms_taxstatus,
    lbr_pis_taxbaseamt,
    lbr_pis_taxbase,
    lbr_pis_taxrate,
    lbr_pis_taxamt,
    lbr_pis_taxstatus,
    lbr_cofins_taxbaseamt,
    lbr_cofins_taxbase,
    lbr_cofins_taxrate,
    lbr_cofins_taxamt,
    lbr_cofins_taxstatus,
    lbr_icmsst_taxbaseamt,
    lbr_icmsst_taxbase,
    lbr_icmsst_taxrate,
    lbr_icmsst_taxamt,
    lbr_icmsst_taxstatus,
    lbr_ipi_taxbaseamt,
    lbr_ipi_taxrate,
    lbr_ipi_taxamt,
    lbr_ipi_taxstatus,
    lbr_ii_taxbaseamt,
    lbr_ii_taxrate,
    lbr_ii_taxamt,
    
    lbr_nfe_operationtype,
    lbr_cfop_value,
    lbr_cfop_description,
    
    insuredamount,
    discountamt,
    surcharges,
    LBR_SISCOMEXAmt,
    
    lbr_isdocissuedbyorg,
    lbr_nfestatus,
    docstatus,
    
    lbr_nfemodshipping,
    
    producttype,
    isPurchased,
    isSold,
    c_charge_id,
    
    lbr_di_no,
    
    LBR_SPED_Activity
    
    )
AS
SELECT nf.ad_client_id,
            nf.ad_org_id,
            nf.created,
            nf.createdby,
            nf.updated,
            nf.updatedby,
            nf.isactive,
            nfl.lbr_notafiscalline_id ,
            nf.lbr_notafiscal_id,
            nf.documentno,
            nf.lbr_lotsendingprot,
            nf.lbr_nfeid,
            nf.c_invoice_id,
            nf.c_order_id,
            nf.c_bpartner_id,
            nf.datedoc,
            COALESCE(nf.datedelivered, nf.datedoc) ,
            nf.lbr_nfeserie,
            round(COALESCE(nf.grandtotal, 0::numeric), 2) ,
            round(COALESCE(nf.totallines, 0::numeric), 2) ,
            round(COALESCE(nft.chargeamt, 0::numeric), 2) ,
            nf.lbr_nfemodel,
            round(COALESCE(nficms.taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(nficms.taxamt, 0::numeric), 2) ,
            round(COALESCE(nficmsst.taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(nficmsst.taxamt, 0::numeric), 2) ,
            round(COALESCE(nfcofins.taxamt, 0::numeric), 2) ,
            round(COALESCE(nfpis.taxamt, 0::numeric), 2) ,
            round(COALESCE(nfipi.taxamt, 0::numeric), 2) ,
            bpempresa.lbr_cnpj ,
            bpempresa.lbr_ie ,
            orgloc.address1 ,
            orgloc.address2 ,
            orgloc.address3 ,
            orgloc.address4 ,
            orgcity.name ,
            orgloc.postal ,
            orgreg.name ,
            ado.name ,
            bpempresa.lbr_ccm ,
            orgloc.c_location_id ,
            oi.phone ,
            orgcity.lbr_citycode ,
            bpempresa.lbr_suframa ,
            bpempresa.name2 ,
            oi.lbr_cnae ,
            oi.email ,
            CASE WHEN bp.LBR_BPTypeBR = 'PF' THEN bp.LBR_CPF ELSE bp.LBR_CNPJ END ,
            bp.lbr_ie ,
            bploc.address1 ,
            bploc.address2 ,
            bploc.address3 ,
            bploc.address4 ,
            bpcity.name ,
            bploc.postal ,
            bpregion.name ,
            bp.name ,
            bpl.c_bpartner_location_id ,
            bp.lbr_suframa ,
            bpcity.lbr_citycode ,
            bpcountry.lbr_countrycode ,
            nfl.line,
            nfl.lbr_notafiscalline_id,
            dld.lbr_cfop_id,
            nfl.m_product_id,
            dld.lbr_ncm_id,
            nfl.c_uom_id,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN
	            dld.productvalue
	        ELSE
	            produ.value
	        END,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN
	            dld.productname
	        ELSE
	            produ.name
	        END,
            COALESCE( nfluomtrl.uomsymbol , nfluom.uomsymbol ),
            COALESCE( nfluomtrl.name , nfluom.name ),
            produ.upc,
            ncmp.value ,
            round(COALESCE(nfl.priceactual, 0::numeric), 2) ,
            round(COALESCE(nfl.qty, 0::numeric), 2) ,
            round(COALESCE(nfl.linenetamt, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxamt, 0::numeric), 2) ,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN 
                        COALESCE(produ.lbr_productsource, '0'::bpchar)::text || COALESCE(icms.lbr_taxstatustn, '00'::character varying)::text
                      ELSE
                        COALESCE(produ.lbr_productsource, '0'::bpchar)::text || COALESCE(icms.LBR_OwnTaxStatus,'00'::character varying)::text
                      END
                       ,
            round(COALESCE(pis.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(pis.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(pis.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(pis.lbr_taxamt, 0::numeric), 2) ,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN 
                        COALESCE(pis.lbr_taxstatustn, '01'::character varying)
                      ELSE
                        pis.lbr_OwnTaxStatus
                      END
                       ,
            round(COALESCE(cofins.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(cofins.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(cofins.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(cofins.lbr_taxamt, 0::numeric), 2) ,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN 
                        COALESCE(cofins.lbr_taxstatustn, '01'::character varying)
                      ELSE
                        cofins.LBR_OwnTaxStatus
                      END ,
            round(COALESCE(icmsst.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(icmsst.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(icmsst.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(icmsst.lbr_taxamt, 0::numeric), 2) ,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN 
                        COALESCE(produ.lbr_productsource, '0'::bpchar)::text || COALESCE(icmsst.lbr_taxstatustn, '00'::character varying)::text
                      ELSE
                        icmsst.LBR_OwnTaxStatus::text
                      END  
                         ,
            round(COALESCE(ipi.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(ipi.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(ipi.lbr_taxamt, 0::numeric), 2) ,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN 
                        COALESCE(ipi.lbr_taxstatustn, '00'::character varying)
                      ELSE
                        ipi.LBR_OwnTaxStatus
                      END
                         ,
            round(COALESCE(ii.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(ii.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(ii.lbr_taxamt, 0::numeric), 2) ,
            
            CASE WHEN nf.lbr_isdocissuedbyorg='Y'
                THEN nf.lbr_nfe_operationtype
                ELSE
                    CASE WHEN nf.lbr_nfe_operationtype='1' THEN '0'::bpchar ELSE '1'::bpchar END
                END ,
            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN cfop.value ELSE owncfop.value END,

            CASE WHEN nf.lbr_isdocissuedbyorg='Y' THEN cfop.Description ELSE owncfop.Description END,

            dld.insuredamount ,
          	dld.discountamt	,
          	dld.surcharges ,
          	dld.LBR_SISCOMEXAmt ,

            nf.lbr_isdocissuedbyorg ,
            nf.lbr_nfestatus ,
            nf.docstatus ,
            
            nft.lbr_nfemodshipping ,
            
            produ.producttype ,
            produ.isPurchased ,
            produ.isSold ,
			nfl.c_charge_id ,
			
			di.lbr_di_no ,
			
			spedop.LBR_SPED_Activity 
            
            
FROM lbr_notafiscalline nfl
      JOIN lbr_notafiscal nf ON nf.lbr_notafiscal_id = nfl.lbr_notafiscal_id
   JOIN lbr_docline_details dld ON dld.lbr_notafiscalline_id = nfl.lbr_notafiscalline_id
   JOIN c_bpartner bp ON bp.c_bpartner_id = nf.c_bpartner_id
   JOIN ad_org ado ON ado.ad_org_id = nf.ad_org_id
   JOIN c_bpartner bpempresa ON bpempresa.ad_orgbp_id = ado.ad_org_id
   JOIN ad_orginfo oi ON oi.ad_org_id = nf.ad_org_id
   LEFT JOIN c_invoice i ON nf.c_invoice_id = i.c_invoice_id
   LEFT JOIN c_doctype dt ON nf.c_doctype_id = dt.c_doctype_id
   LEFT JOIN c_doctype dti ON i.c_doctypetarget_id = dti.c_doctype_id
   LEFT JOIN c_invoiceline il ON nfl.c_invoiceline_id = il.c_invoiceline_id
   LEFT JOIN m_product produ ON produ.m_product_id = nfl.m_product_id
   LEFT JOIN c_uom nfluom ON nfluom.c_uom_id = nfl.c_uom_id
   LEFT JOIN c_uom_trl nfluomtrl ON nfluomtrl.c_uom_id = nfl.c_uom_id AND nfluomtrl.AD_Language='pt_BR'
   LEFT JOIN lbr_ncm ncmp ON ncmp.lbr_ncm_id = produ.lbr_ncm_id
   LEFT JOIN c_location orgloc ON orgloc.c_location_id = oi.c_location_id
   LEFT JOIN c_city orgcity ON orgcity.c_city_id = orgloc.c_city_id
   LEFT JOIN c_country orgcountry ON orgcountry.c_country_id = orgloc.c_country_id
   LEFT JOIN c_region orgreg ON orgreg.c_region_id = orgloc.c_region_id
   LEFT JOIN c_bpartner_location bpl ON bpl.c_bpartner_location_id = nf.c_bpartner_location_id
   LEFT JOIN c_location bploc ON bploc.c_location_id = bpl.c_location_id
   LEFT JOIN c_city bpcity ON bpcity.c_city_id = bploc.c_city_id
   LEFT JOIN c_country bpcountry ON bpcountry.c_country_id = bploc.c_country_id
   LEFT JOIN c_region bpregion ON bpregion.c_region_id = bploc.c_region_id
   LEFT JOIN lbr_cfop cfop ON dld.lbr_cfop_id = cfop.lbr_cfop_id
   LEFT JOIN lbr_cfop owncfop ON dld.lbr_owncfop_id = owncfop.lbr_cfop_id
   LEFT JOIN c_uom uom ON uom.c_uom_id = nfl.c_uom_id
   LEFT JOIN lbr_factfiscal_nflinetax icms ON nfl.lbr_notafiscalline_id = icms.lbr_notafiscalline_id AND icms.tipimposto = 'ICMSPROD'::text
   LEFT JOIN lbr_factfiscal_nflinetax pis ON nfl.lbr_notafiscalline_id = pis.lbr_notafiscalline_id AND pis.tipimposto = 'PISPROD'::text
   LEFT JOIN lbr_factfiscal_nflinetax cofins ON nfl.lbr_notafiscalline_id = cofins.lbr_notafiscalline_id AND cofins.tipimposto = 'COFINSPROD'::text
   LEFT JOIN lbr_factfiscal_nflinetax icmsst ON nfl.lbr_notafiscalline_id = icmsst.lbr_notafiscalline_id AND icmsst.tipimposto = 'ICMSST'::text
   LEFT JOIN lbr_factfiscal_nflinetax ipi ON nfl.lbr_notafiscalline_id = ipi.lbr_notafiscalline_id AND ipi.tipimposto = 'IPI'::text
   LEFT JOIN lbr_factfiscal_nflinetax ii ON nfl.lbr_notafiscalline_id = ii.lbr_notafiscalline_id AND ii.tipimposto = 'II'::text
   LEFT JOIN lbr_notafiscaltransp nft ON nft.lbr_notafiscal_id = nfl.lbr_notafiscal_id

   LEFT JOIN LBR_FactFiscal_NotaFiscalTax nfpis ON nf.lbr_notafiscal_id = nfpis.lbr_notafiscal_id AND nfpis.LBR_Tax_Name = 'PISPROD'
   LEFT JOIN LBR_FactFiscal_NotaFiscalTax nfcofins ON nf.lbr_notafiscal_id = nfcofins.lbr_notafiscal_id AND nfcofins.LBR_Tax_Name = 'COFINSPROD'
   LEFT JOIN LBR_FactFiscal_NotaFiscalTax nfipi ON nf.lbr_notafiscal_id = nfipi.lbr_notafiscal_id AND nfipi.LBR_Tax_Name = 'IPI'
   LEFT JOIN LBR_FactFiscal_NotaFiscalTax nficms ON nf.lbr_notafiscal_id = nficms.lbr_notafiscal_id AND nficms.LBR_Tax_Name = 'ICMSPROD'
   LEFT JOIN LBR_FactFiscal_NotaFiscalTax nficmsst ON nf.lbr_notafiscal_id = nficmsst.lbr_notafiscal_id AND nficmsst.LBR_Tax_Name = 'ICMSST'


   
   LEFT JOIN lbr_notafiscaldi nfldi ON nfldi.lbr_notafiscalline_id = nfl.lbr_notafiscalline_id
   LEFT JOIN lbr_di_addition diad ON diad.lbr_di_addition_id = nfldi.lbr_di_addition_id
   LEFT JOIN lbr_di di ON di.lbr_di_id = diad.lbr_di_id

   LEFT JOIN LBR_SPEDOptions spedop ON spedop.ad_org_id = nf.ad_org_id
   
   WHERE nf.DocStatus IN ('CO','CL') 
   
UNION
SELECT i.ad_client_id,
            i.ad_org_id,
            i.created,
            i.createdby,
            i.updated,
            i.updatedby,
            i.isactive,
            il.c_invoiceline_id ,
            NULL,
            fd.LBR_NFNo,
            NULL,
            fd.LBR_ChvCTe,
            i.c_invoice_id,
            i.c_order_id,
            i.c_bpartner_id,
            i.dateinvoiced,
            COALESCE(i.dateacct, i.dateinvoiced) ,
            fd.lbr_nfeserie,
            round(COALESCE(i.grandtotal, 0::numeric), 2) ,
            round(COALESCE(i.totallines, 0::numeric), 2) ,
            0 ,
            fd.lbr_nfemodel,
            round(COALESCE(nficms.taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(nficms.taxamt, 0::numeric), 2) ,
            round(COALESCE(nficmsst.taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(nficmsst.taxamt, 0::numeric), 2) ,
            round(COALESCE(nfcofins.taxamt, 0::numeric), 2) ,
            round(COALESCE(nfpis.taxamt, 0::numeric), 2) ,
            round(COALESCE(nfipi.taxamt, 0::numeric), 2) ,
            bpempresa.lbr_cnpj ,
            bpempresa.lbr_ie ,
            orgloc.address1 ,
            orgloc.address2 ,
            orgloc.address3 ,
            orgloc.address4 ,
            orgcity.name ,
            orgloc.postal ,
            orgreg.name ,
            ado.name ,
            bpempresa.lbr_ccm ,
            orgloc.c_location_id ,
            oi.phone ,
            orgcity.lbr_citycode ,
            bpempresa.lbr_suframa ,
            bpempresa.name2 ,
            oi.lbr_cnae ,
            oi.email ,
            CASE WHEN bp.LBR_BPTypeBR = 'PF' THEN bp.LBR_CPF ELSE bp.LBR_CNPJ END ,
            bp.lbr_ie ,
            bploc.address1 ,
            bploc.address2 ,
            bploc.address3 ,
            bploc.address4 ,
            bpcity.name ,
            bploc.postal ,
            bpregion.name ,
            bp.name ,
            bpl.c_bpartner_location_id ,
            bp.lbr_suframa ,
            bpcity.lbr_citycode ,
            bpcountry.lbr_countrycode ,
            il.line,
            il.C_InvoiceLine_ID,
            dld.lbr_cfop_id,
            il.m_product_id,
            dld.lbr_ncm_id,
            il.c_uom_id,
            dld.productvalue,
            dld.productname,
            COALESCE( nfluomtrl.uomsymbol , nfluom.uomsymbol ),
            COALESCE( nfluomtrl.name , nfluom.name ),
            produ.upc,
            ncmp.value ,
            round(COALESCE(il.priceactual, 0::numeric), 2) ,
            round(COALESCE(il.qtyinvoiced, 0::numeric), 2) ,
            round(COALESCE(il.linenetamt, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(icms.lbr_taxamt, 0::numeric), 2) ,

            COALESCE(produ.lbr_productsource, '0'::bpchar)::text || COALESCE(icms.LBR_TaxStatusTN,'00'::character varying)::text
                       ,

            round(COALESCE(pis.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(pis.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(pis.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(pis.lbr_taxamt, 0::numeric), 2) ,

            pis.lbr_TaxStatusTN
                       ,

            round(COALESCE(cofins.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(cofins.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(cofins.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(cofins.lbr_taxamt, 0::numeric), 2) ,

            cofins.LBR_TaxStatusTN
                       ,
            round(COALESCE(icmsst.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(icmsst.lbr_taxbase, 0::numeric), 2) ,
            round(COALESCE(icmsst.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(icmsst.lbr_taxamt, 0::numeric), 2) ,

            icmsst.LBR_TaxStatusTN
                         ,

            round(COALESCE(ipi.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(ipi.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(ipi.lbr_taxamt, 0::numeric), 2) ,

            ipi.LBR_TaxStatusTN
                         ,

            round(COALESCE(ii.lbr_taxbaseamt, 0::numeric), 2) ,
            round(COALESCE(ii.lbr_taxrate, 0::numeric), 2) ,
            round(COALESCE(ii.lbr_taxamt, 0::numeric), 2) ,
            
            '0'
                ,

            cfop.value,
            
            cfop.Description,

            dld.insuredamount ,
          	dld.discountamt	,
          	dld.surcharges ,
          	NULL ,

            'N' ,

            '100' ,
            i.docstatus ,
            
            '9' ,
            
            produ.producttype ,
            produ.isPurchased ,
            produ.isSold ,
			il.c_charge_id ,
			
			NULL ,
			
			spedop.LBR_SPED_Activity 
            
            
FROM C_InvoiceLine il
   JOIN LBR_FiscalDoc fd ON il.c_invoice_id = fd.c_invoice_id
   JOIN lbr_docline_details dld ON dld.C_InvoiceLine_ID = il.C_InvoiceLine_ID
   JOIN c_invoice i ON fd.c_invoice_id = i.c_invoice_id
   JOIN c_bpartner bp ON bp.c_bpartner_id = i.c_bpartner_id
   JOIN ad_org ado ON ado.ad_org_id = i.ad_org_id
   JOIN c_bpartner bpempresa ON bpempresa.ad_orgbp_id = ado.ad_org_id
   JOIN ad_orginfo oi ON oi.ad_org_id = i.ad_org_id
   LEFT JOIN m_product produ ON produ.m_product_id = il.m_product_id
   LEFT JOIN c_uom nfluom ON nfluom.c_uom_id = il.c_uom_id
   LEFT JOIN c_uom_trl nfluomtrl ON nfluomtrl.c_uom_id = il.c_uom_id AND nfluomtrl.AD_Language='pt_BR'
   LEFT JOIN lbr_ncm ncmp ON ncmp.lbr_ncm_id = produ.lbr_ncm_id
   LEFT JOIN c_location orgloc ON orgloc.c_location_id = oi.c_location_id
   LEFT JOIN c_city orgcity ON orgcity.c_city_id = orgloc.c_city_id
   LEFT JOIN c_country orgcountry ON orgcountry.c_country_id = orgloc.c_country_id
   LEFT JOIN c_region orgreg ON orgreg.c_region_id = orgloc.c_region_id
   LEFT JOIN c_bpartner_location bpl ON bpl.c_bpartner_location_id = i.c_bpartner_location_id
   LEFT JOIN c_location bploc ON bploc.c_location_id = bpl.c_location_id
   LEFT JOIN c_city bpcity ON bpcity.c_city_id = bploc.c_city_id
   LEFT JOIN c_country bpcountry ON bpcountry.c_country_id = bploc.c_country_id
   LEFT JOIN c_region bpregion ON bpregion.c_region_id = bploc.c_region_id
   LEFT JOIN lbr_cfop cfop ON dld.lbr_cfop_id = cfop.lbr_cfop_id
   LEFT JOIN c_uom uom ON uom.c_uom_id = il.c_uom_id
   LEFT JOIN lbr_factfiscal_invoicelinetax icms ON il.C_InvoiceLine_ID = icms.C_InvoiceLine_ID AND icms.tipimposto = 'ICMSPROD'::text
   LEFT JOIN lbr_factfiscal_invoicelinetax pis ON il.C_InvoiceLine_ID = pis.C_InvoiceLine_ID AND pis.tipimposto = 'PISPROD'::text
   LEFT JOIN lbr_factfiscal_invoicelinetax cofins ON il.C_InvoiceLine_ID = cofins.C_InvoiceLine_ID AND cofins.tipimposto = 'COFINSPROD'::text
   LEFT JOIN lbr_factfiscal_invoicelinetax icmsst ON il.C_InvoiceLine_ID = icmsst.C_InvoiceLine_ID AND icmsst.tipimposto = 'ICMSST'::text
   LEFT JOIN lbr_factfiscal_invoicelinetax ipi ON il.C_InvoiceLine_ID = ipi.C_InvoiceLine_ID AND ipi.tipimposto = 'IPI'::text
   LEFT JOIN lbr_factfiscal_invoicelinetax ii ON il.C_InvoiceLine_ID = ii.C_InvoiceLine_ID AND ii.tipimposto = 'II'::text

   LEFT JOIN LBR_FactFiscal_InvoiceTax nfpis ON i.C_Invoice_ID = nfpis.C_Invoice_ID AND nfpis.LBR_Tax_Name = 'PISPROD'
   LEFT JOIN LBR_FactFiscal_InvoiceTax nfcofins ON i.C_Invoice_ID = nfcofins.C_Invoice_ID AND nfcofins.LBR_Tax_Name = 'COFINSPROD'
   LEFT JOIN LBR_FactFiscal_InvoiceTax nfipi ON i.C_Invoice_ID = nfipi.C_Invoice_ID AND nfipi.LBR_Tax_Name = 'IPI'
   LEFT JOIN LBR_FactFiscal_InvoiceTax nficms ON i.C_Invoice_ID = nficms.C_Invoice_ID AND nficms.LBR_Tax_Name = 'ICMSPROD'
   LEFT JOIN LBR_FactFiscal_InvoiceTax nficmsst ON i.C_Invoice_ID = nficmsst.C_Invoice_ID AND nficmsst.LBR_Tax_Name = 'ICMSST'

   LEFT JOIN LBR_SPEDOptions spedop ON spedop.ad_org_id = i.ad_org_id
   
   WHERE i.DocStatus IN ('CO','CL') AND i.isSOTrx = 'N' 
   
UNION
SELECT bp.ad_client_id,
            bp.ad_org_id,
            bp.created,
            bp.createdby,
            bp.updated,
            bp.updatedby,
            bp.isactive,
            NULL::numeric ,
            NULL::numeric ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::numeric ,
            NULL::numeric ,
            bp.c_bpartner_id,
            NULL::timestamp without time zone ,
            NULL::timestamp without time zone ,
            NULL::character varying ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            '01'::character varying ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::numeric ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            bp.lbr_cnpj ,
            bp.lbr_ie ,
            bploc.address1 ,
            bploc.address2 ,
            bploc.address3 ,
            bploc.address4 ,
            bploc.city ,
            bploc.postal ,
            r.name ,
            bp.name ,
            bpl.c_bpartner_location_id ,
            bp.lbr_suframa ,
            bpcity.lbr_citycode ,
            bpcountry.lbr_countrycode ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            ''::character varying ,
            ''::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::character varying ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::text ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::character varying ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::character varying ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::text ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::character varying ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            
            NULL::text ,
            NULL::text ,
            NULL::character varying ,

            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,
            NULL::numeric ,

            NULL::text ,
            NULL::text ,
            NULL::text ,
            
            NULL::text ,
            NULL::text ,
            NULL::text ,
            NULL::text ,
            NULL::numeric ,
            
            NULL::text ,
            
            NULL::text 

            
FROM c_bpartner bp
      LEFT JOIN c_bpartner_location bpl ON bpl.c_bpartner_id = bp.c_bpartner_id
   LEFT JOIN c_location bploc ON bploc.c_location_id = bpl.c_location_id
   LEFT JOIN c_city bpcity ON bpcity.c_city_id = bploc.c_city_id
   LEFT JOIN c_country bpcountry ON bpcountry.c_country_id = bploc.c_country_id
   LEFT JOIN c_region r ON r.c_region_id = bploc.c_region_id
ORDER BY 9, 8;

SELECT lbr_register_migration_script('201603311331-Sped-999-LBR_FactFiscal.sql') FROM dual;
