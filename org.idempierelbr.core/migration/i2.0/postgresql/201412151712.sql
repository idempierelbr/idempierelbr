-- 15/12/2014 14h0min31s BRST
-- Issue #29 e #36 Melhorias em procedimentos bancários
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800492,'N','N','N',0,'N',22,'N','N','N','Y','80c702e7-69e8-41f7-8910-c295ed326dd3','Y','LBR_SeqCNAB240File_ID','Sequence for File (CNAB)','The Sequence for File (CNAB) defines the numbering sequence to be used for files in the generated file destinated to banks.','Sequence for File (CNAB)','Y',TO_TIMESTAMP('2014-12-15 14:00:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-15 14:00:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1000356,30,128,1000050,0,'LBR')
;

-- 15/12/2014 14h0min36s BRST
UPDATE AD_Column SET FKConstraintName='LBRSeqCNAB240File_LBRBankAccou', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-12-15 14:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800492
;

-- 15/12/2014 14h0min36s BRST
ALTER TABLE LBR_BankAccount_Convenio ADD COLUMN LBR_SeqCNAB240File_ID NUMERIC(10) DEFAULT NULL 
;

-- 15/12/2014 14h0min37s BRST
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT LBRSeqCNAB240File_LBRBankAccou FOREIGN KEY (LBR_SeqCNAB240File_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15/12/2014 14h1min13s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800493,'N','N','N',0,'N',22,'N','N','N','Y','7a39d543-e4eb-41b1-9c35-63457cf07832','Y','LBR_SeqCNAB240Lot_ID','Sequence for Lot (CNAB)','The Sequence for Lot (CNAB) defines the numbering sequence to be used for Lot entries in the generated file destinated to banks.','Sequence for Lot (CNAB)','Y',TO_TIMESTAMP('2014-12-15 14:01:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-15 14:01:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1000355,30,128,1000050,0,'LBR')
;

-- 15/12/2014 14h1min15s BRST
UPDATE AD_Column SET FKConstraintName='LBRSeqCNAB240Lot_LBRBankAccoun', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-12-15 14:01:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800493
;

-- 15/12/2014 14h1min15s BRST
ALTER TABLE LBR_BankAccount_Convenio ADD COLUMN LBR_SeqCNAB240Lot_ID NUMERIC(10) DEFAULT NULL 
;

-- 15/12/2014 14h1min15s BRST
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT LBRSeqCNAB240Lot_LBRBankAccoun FOREIGN KEY (LBR_SeqCNAB240Lot_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15/12/2014 14h1min49s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,22,'N','N',80,'Y',800072,'N','The Sequence for File (CNAB) defines the numbering sequence to be used for files in the generated file destinated to banks.','LBR','Sequence for File (CNAB)','Sequence for File (CNAB)','b7311792-af01-4819-9fe4-b3ad0d0c8854','N','Y',0,0,0,TO_TIMESTAMP('2014-12-15 14:01:48','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,800492,TO_TIMESTAMP('2014-12-15 14:01:48','YYYY-MM-DD HH24:MI:SS'))
;

-- 15/12/2014 14h1min50s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,22,'N','N',90,'Y',800073,'N','The Sequence for Lot (CNAB) defines the numbering sequence to be used for Lot entries in the generated file destinated to banks.','LBR','Sequence for Lot (CNAB)','Sequence for Lot (CNAB)','d388d893-d5b8-469b-ab0f-aed33372e3af','N','Y',0,0,0,TO_TIMESTAMP('2014-12-15 14:01:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,800493,TO_TIMESTAMP('2014-12-15 14:01:49','YYYY-MM-DD HH24:MI:SS'))
;

-- 15/12/2014 14h3min22s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-12-15 14:03:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800073
;

-- 15/12/2014 14h10min11s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800494,'N','N','N',0,'N',22,'N','N','N','Y','09fe3e08-3f5d-481d-850a-e8519e8c013d','Y','LBR_SeqNumberInBank_ID','Sequence for Number in Bank','The Sequence for Number in Bank defines the numbering sequence to be used for documents that use Number in Bank.','Sequence for Number in Bank','Y',TO_TIMESTAMP('2014-12-15 14:10:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-15 14:10:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1000354,30,128,1000051,0,'LBR')
;

-- 15/12/2014 14h10min13s BRST
UPDATE AD_Column SET FKConstraintName='LBRSeqNumberInBank_LBRBankAcco', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-12-15 14:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800494
;

-- 15/12/2014 14h10min13s BRST
ALTER TABLE LBR_BankAccount_Carteira ADD COLUMN LBR_SeqNumberInBank_ID NUMERIC(10) DEFAULT NULL 
;

-- 15/12/2014 14h10min13s BRST
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT LBRSeqNumberInBank_LBRBankAcco FOREIGN KEY (LBR_SeqNumberInBank_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15/12/2014 14h11min3s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,22,'N','N',90,'Y',800074,'N','The Sequence for Number in Bank defines the numbering sequence to be used for documents that use Number in Bank.','LBR','Sequence for Number in Bank','Sequence for Number in Bank','b9b4fa9c-14cf-4b18-9b9e-a4e1d1465f96','N','Y',0,0,0,TO_TIMESTAMP('2014-12-15 14:11:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,800494,TO_TIMESTAMP('2014-12-15 14:11:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 15/12/2014 14h11min58s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001952
;

-- 15/12/2014 14h11min58s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001953
;

-- 15/12/2014 14h11min58s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001951
;

-- 15/12/2014 14h11min58s BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001950
;

-- 15/12/2014 14h11min58s BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001954
;

-- 15/12/2014 14h16min16s BRST
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001950
;

-- 15/12/2014 14h16min16s BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001954
;

-- 15/12/2014 14h16min16s BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2220
;

-- 15/12/2014 14h16min16s BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=60881
;

-- 15/12/2014 14h16min16s BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=2221
;

-- 15/12/2014 14h16min45s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2014-12-15 14:16:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001950
;

-- 15/12/2014 14h16min56s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2014-12-15 14:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001954
;

-- 15/12/2014 14h19min43s BRST
UPDATE AD_Tab SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_TIMESTAMP('2014-12-15 14:19:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000093
;

-- 15/12/2014 14h19min51s BRST
UPDATE AD_Tab SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_TIMESTAMP('2014-12-15 14:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000094
;

-- 15/12/2014 15h2min16s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CarteiraCode',800092,'Defines the Carteira code','Carteira Code','Carteira Code','f34c0b59-fa06-4213-b7dd-fb933f8c8846',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-15 15:02:15','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-15 15:02:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 15/12/2014 15h5min38s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800495,'N','N','N',0,'N',20,'N','N','N','Y','1d7e8551-637a-492c-a872-deccc9f63589','Y','LBR_CarteiraCode','Defines the Carteira code','Carteira Code','Y',TO_TIMESTAMP('2014-12-15 15:05:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-15 15:05:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800092,10,1000051,0,'LBR')
;

-- 15/12/2014 15h5min41s BRST
ALTER TABLE LBR_BankAccount_Carteira ADD COLUMN LBR_CarteiraCode VARCHAR(20) DEFAULT NULL 
;

-- 15/12/2014 15h6min1s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,20,'N','N',100,'Y',800075,'N','Defines the Carteira code','LBR','Carteira Code','e090a8d9-38d1-4a9e-aa3f-7a3ed188e3d5','N','Y',0,0,0,TO_TIMESTAMP('2014-12-15 15:06:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,800495,TO_TIMESTAMP('2014-12-15 15:06:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 15/12/2014 15h6min17s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=800075
;

-- 15/12/2014 15h6min17s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001754
;

-- 15/12/2014 15h6min17s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=800074
;

-- 15/12/2014 15h6min26s BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=800075
;

-- 15/12/2014 15h6min26s BRST
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001754
;

-- 15/12/2014 15h6min26s BRST
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001755
;

-- 15/12/2014 15h6min26s BRST
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1002042
;

-- 15/12/2014 15h6min26s BRST
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=800074
;

-- 15/12/2014 15h16min52s BRST
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-12-15 15:16:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800075
;

SELECT lbr_register_migration_script('201412151712.sql') FROM dual
;
