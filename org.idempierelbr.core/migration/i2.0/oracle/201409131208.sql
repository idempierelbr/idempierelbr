SET SQLBLANKLINES ON
SET DEFINE OFF

-- 13/09/2014 11h58min6s BRT
-- Adding column/field LBR_IsDocIssuedByOrg to table/window LBR_NotaFiscal
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001254,'Y','N','N',0,'N',1,'N','N','N','Y','3eed779b-1f9c-4319-9c76-61bccf931a24','Y','LBR_IsDocIssuedByOrg','N','Is Document Issued by Client/Org?','Y',TO_DATE('2014-09-13 11:58:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-09-13 11:58:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000232,20,1000033,0,'LBR')
;

-- 13/09/2014 11h58min8s BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_IsDocIssuedByOrg CHAR(1) DEFAULT 'N' CHECK (LBR_IsDocIssuedByOrg IN ('Y','N')) NOT NULL
;

-- 13/09/2014 12h0min27s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000068,1,'N','N',440,'Y',1002046,'N','LBR','Is Document Issued by Client/Org?','3c596aed-dfd1-4920-a13c-2bc2826bbafe','N','Y',0,0,0,TO_DATE('2014-09-13 12:00:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',410,2,0,2,1001254,TO_DATE('2014-09-13 12:00:27','YYYY-MM-DD HH24:MI:SS'))
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1002046
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001200
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001201
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001202
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001203
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001204
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001205
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001206
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001207
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001220
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001221
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001208
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001209
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001210
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001211
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001212
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001213
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001629
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001214
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001630
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001215
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001397
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001216
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001217
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001218
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001462
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001463
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1001224
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- 13/09/2014 12h1min24s BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1001507
;

-- 13/09/2014 12h2min4s BRT
UPDATE AD_Field SET XPosition=5, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-09-13 12:02:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002046
;

-- 13/09/2014 12h2min14s BRT
UPDATE AD_Field SET XPosition=1,Updated=TO_DATE('2014-09-13 12:02:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001200
;

-- 13/09/2014 12h6min15s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-09-13 12:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002046
;

-- 13/09/2014 13h24min35s BRT
INSERT INTO AD_InfoColumn (SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,AD_Reference_Value_ID,Created,IsMandatory) VALUES (60,'4dabd7bd-7354-402a-9eaa-c03c75145ddf',1000015,'Y','LBR',0,TO_DATE('2014-09-13 13:24:35','YYYY-MM-DD HH24:MI:SS'),0,0,'Is Document Issued by Client/Org?','Y','LBR_IsDocIssuedByOrg','Y','Y','=','a.LBR_IsDocIssuedByOrg',0,'N',0,1000232,1000001,17,319,TO_DATE('2014-09-13 13:24:35','YYYY-MM-DD HH24:MI:SS'),'N')
;

SELECT lbr_register_migration_script('201409131208.sql') FROM dual
;
