SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jul 14, 2014 6:00:00 AM BRT
-- Correcting C_Region_ID for some brazilian cities (as reported by Claudemir Todo Bom)
-- Changing Process name & classname
-- Creating some missing columns
UPDATE C_City SET C_Region_ID=450,Updated=TO_DATE('2014-07-14 06:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=104 AND LBR_CityCode IS NOT NULL
;

-- Jul 14, 2014 6:00:00 AM BRT
UPDATE C_City SET C_Region_ID=454,Updated=TO_DATE('2014-07-14 06:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=110 AND LBR_CityCode IS NOT NULL
;

-- Jul 14, 2014 6:00:00 AM BRT
UPDATE C_City SET C_Region_ID=464,Updated=TO_DATE('2014-07-14 06:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=128 AND LBR_CityCode IS NOT NULL
;

-- Jul 14, 2014 6:00:00 AM BRT
UPDATE C_City SET C_Region_ID=451,Updated=TO_DATE('2014-07-14 06:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE C_Region_ID=136 AND LBR_CityCode IS NOT NULL
;

-- Jul 14, 2014 9:18:01 AM BRT
UPDATE AD_Process SET Description='Generate Sefaz WS Certificates', Name='Generate Sefaz WS Certificates', Classname='org.idempierelbr.nfe.process.GenerateSefazWSCerts', Value='LBR_ProcGenerateSefazWSCerts',Updated=TO_DATE('2014-07-14 09:18:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1000001
;

-- Jul 14, 2014 9:18:01 AM BRT
UPDATE AD_Menu SET Name='Generate Sefaz WS Certificates', Description='Generate Sefaz WS Certificates', IsActive='Y',Updated=TO_DATE('2014-07-14 09:18:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000020
;

-- Jul 14, 2014 9:19:28 AM BRT
ALTER TABLE LBR_ISSMatrix ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Jul 14, 2014 9:19:45 AM BRT
ALTER TABLE LBR_ISSMatrix ADD ValidFrom DATE DEFAULT NULL 
;

-- Jul 14, 2014 9:24:27 AM BRT
UPDATE AD_Language SET PrintName='Português (Brasil)',Updated=TO_DATE('2014-07-14 09:24:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Language_ID=174
;

SELECT lbr_register_migration_script('201407140600.sql') FROM dual
;
