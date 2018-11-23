/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
-- Feb 17, 2014 16:23:00 PM BRST
-- New Taxes Formulas Data. Made by Kenos - www.kenos.com.br
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-15 18:33:44','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA. Para operações onde o IPI não entra na Base de Cálculo do ICMS (ICMSPROD).', 'Y', 1000005, TO_TIMESTAMP('2011-04-16 16:10:45','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD)))/(1-ICMSPROD))*(1+IPI)*(1+IVA)', 'FLBR06')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-05 21:27:19','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações onde o IPI entra na base de cálculo do ICMS.', 'Y', 1000000, TO_TIMESTAMP('2011-04-16 16:10:22','YYYY-MM-DD HH24:MI:SS'), 100, '(1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI))', 'FLBR01')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-15 18:34:12','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA e Diferencial de Alíquota. Para operações onde o IPI não entra na Base de Cálculo do ICMS (ICMSPROD).', 'Y', 1000006, TO_TIMESTAMP('2011-04-16 16:12:38','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD)))/(1-ICMSPROD))*(1+IPI)*((1+IVA)*((1-ICMSPROD)/(1-ICMSINTERNO)))-FLBR06', 'FLBR07')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-15 16:42:04','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA e Diferencial de Alíquota. Para operações onde o IPI entra na Base de Cálculo do ICMS.', 'Y', 1000004, TO_TIMESTAMP('2011-04-16 16:12:43','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI)))*(1+IPI))*((1+IVA)*((1-ICMSPROD)/(1-ICMSINTERNO)))-FLBR04', 'FLBR05')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-05 21:28:41','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS e IPI. Para operações onde o IPI entra na base de cálculo do ICMS.', 'Y', 1000001, TO_TIMESTAMP('2011-04-16 16:10:29','YYYY-MM-DD HH24:MI:SS'), 100, '((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI)))*(1+IPI)', 'FLBR02')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-05 21:32:24','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações onde o IPI não entra na Base de Cálculo do ICMS.', 'Y', 1000002, TO_TIMESTAMP('2011-04-16 16:10:34','YYYY-MM-DD HH24:MI:SS'), 100, '((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD)))/(1-ICMSPROD)', 'FLBR03')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-15 16:41:27','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA. Para operações onde o IPI entra na Base de Cálculo do ICMS.', 'Y', 1000003, TO_TIMESTAMP('2011-04-16 16:10:38','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI)))*(1+IPI))*(1+IVA)', 'FLBR04')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-05-17 16:47:31','YYYY-MM-DD HH24:MI:SS'), 100, 'Valor do Frete + Valor', 'Y', 1000014, TO_TIMESTAMP('2011-05-17 17:20:56','YYYY-MM-DD HH24:MI:SS'), 100, '(AMT + FREIGHT)', 'Frete + Valor')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-20 23:52:17','YYYY-MM-DD HH24:MI:SS'), 100, 'Fator 1, ou seja, o próprio valor é a base.', 'Y', 1000007, TO_TIMESTAMP('2011-08-05 17:26:20','YYYY-MM-DD HH24:MI:SS'), 100, '(1.0)', 'FLBR08')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-20 23:52:39','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS. Para operações de Importação.', 'Y', 1000008, TO_TIMESTAMP('2011-08-05 17:27:23','YYYY-MM-DD HH24:MI:SS'), 100, '(1/(1+II))*((((1+ICMSPROD*(II+IPI*(1+II)))/((1-PISPROD-COFINSPROD)*(1-ICMSPROD)))))', 'FLBR09')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-20 23:53:16','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor CIF+II teremos um fator para chegar no valor CIF. Para operações de Importação.', 'Y', 1000010, TO_TIMESTAMP('2011-08-05 17:28:35','YYYY-MM-DD HH24:MI:SS'), 100, '1/(1+II)', 'FLBR11')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-04-20 23:53:00','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o CIF+II teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações de Importação.', 'Y', 1000009, TO_TIMESTAMP('2011-08-05 17:29:02','YYYY-MM-DD HH24:MI:SS'), 100, '((1+((FLBR09*(PISPROD+COFINSPROD))+(IPI)))/(1-ICMSPROD))', 'FLBR10')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-05-06 14:07:38','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor CIF+II teremos um fator para chegar no valor do Imposto sobre SISCOMEX. Para operações de Importação.', 'Y', 1000011, TO_TIMESTAMP('2011-08-05 17:29:50','YYYY-MM-DD HH24:MI:SS'), 100, 'SISCOMEX/(1-ICMSPROD)', 'FLBR12')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-05-12 00:35:10','YYYY-MM-DD HH24:MI:SS'), 100, 'Fator de Serviço', 'Y', 1000013, TO_TIMESTAMP('2011-08-05 17:30:17','YYYY-MM-DD HH24:MI:SS'), 100, '1/(1-(PISSERV+COFINSSERV+IR+ISS+CSLL))', 'FLBR13')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-08-05 17:30:46','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI e o IVA.', 'Y', 1000015, TO_TIMESTAMP('2011-08-05 17:32:20','YYYY-MM-DD HH24:MI:SS'), 100, '(1+IPI)*(1+IVA)', 'FLBR14')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_TIMESTAMP('2011-08-05 17:36:02','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI.', 'Y', 1000016, TO_TIMESTAMP('2011-08-05 17:36:02','YYYY-MM-DD HH24:MI:SS'), 100, '(1+IPI)', 'FLBR15')
;

SELECT lbr_register_migration_script('201402171623.sql') FROM dual
;
