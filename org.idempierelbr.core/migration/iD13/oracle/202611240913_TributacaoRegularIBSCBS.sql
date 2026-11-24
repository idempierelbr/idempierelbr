-- Tributação regular do IBS/CBS (gTribRegular)
SELECT register_migration_script('202611240913_TributacaoRegularIBSCBS.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Nov 24, 2026, 9:13:06 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800132,'LBR_CST_IBSCBS','CST do IBS/CBS (tabela)','T',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:13:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:13:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','01a20d79-5883-7471-9ff7-69ef5473067f','N')
;

-- Nov 24, 2026, 9:13:19 AM BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,OrderByClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Window_ID,AD_Ref_Table_UU,AD_InfoWindow_ID,IsDisplayIdentifier) VALUES (800132,800067,801729,801729,'LBR_CST_IBSCBS.Value',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:13:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:13:19','YYYY-MM-DD HH24:MI:SS'),100,'N','LBR',800022,'01a20d79-8c33-7610-b8c2-2b1661b4e4a7',200000,'Y')
;

-- Nov 24, 2026, 9:17:15 AM BRT
UPDATE AD_Ref_Table SET AD_Display=801729, AD_InfoWindow_ID=NULL, DisplaySQL=NULL,Updated=TO_TIMESTAMP('2026-11-24 09:17:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=800132
;

-- Nov 24, 2026, 9:17:22 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800133,'LBR_ClassTrib_IBSCBS','Classificação tributária do IBS/CBS (tabela)','T',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','01a20d7d-40e1-7512-84e8-278466ead3f0','N')
;

-- Nov 24, 2026, 9:17:22 AM BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,OrderByClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Window_ID,AD_Ref_Table_UU,IsDisplayIdentifier) VALUES (800133,800066,801755,801755,'LBR_ClassTrib_IBSCBS.Value',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:22','YYYY-MM-DD HH24:MI:SS'),100,'N','LBR',800022,'01a20d7d-4157-719a-a85b-a0936ad626b8','Y')
;

-- Nov 24, 2026, 9:17:22 AM BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800026,'LBR_CST_IBSCBS with gIBSCBS','CST de IBS/CBS que têm o grupo gIBSCBS (podem ser a CST da tributação regular).','S','LBR_CST_IBSCBS.LBR_IndgIBSCBS=''1'' AND LBR_CST_IBSCBS.IsActive=''Y''',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20d7d-43bc-7828-a5c3-43842cfba677')
;

-- Nov 24, 2026, 9:17:23 AM BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800027,'LBR_ClassTribReg_IBSCBS of CSTReg','cClassTrib da CST regular que não exigem, elas mesmas, a tributação regular (não podem ser outra suspensão).','S','LBR_ClassTrib_IBSCBS.LBR_CST_IBSCBS_ID=@LBR_CSTReg_IBSCBS_ID@ AND LBR_ClassTrib_IBSCBS.IsActive=''Y'' AND COALESCE(LBR_ClassTrib_IBSCBS.LBR_IndgIBSCBSTribRegular,''0'')<>''1''',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR','01a20d7d-458c-7d7c-b030-01de2cc6f117')
;

-- Nov 24, 2026, 9:17:30 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801108,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CSTReg_IBSCBS_ID','CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.','CST Regular de IBS/CBS','LBR','01a20d7d-6228-7fb3-b12b-3e8f9db924cc')
;

-- Nov 24, 2026, 9:17:31 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801109,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ClassTribReg_IBSCBS_ID','Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.','Classificação Tributária Regular de IBS/CBS','LBR','01a20d7d-6487-7c34-ac7a-0a7b2fe117cb')
;

-- Nov 24, 2026, 9:17:31 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801110,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBS_UF_TaxRegEfetRate','Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).','Alíquota Efetiva Regular do IBS UF (%)','LBR','01a20d7d-667c-77c1-b1ec-609e5e40be4f')
;

-- Nov 24, 2026, 9:17:32 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801111,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBS_UF_TaxRegAmt','Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).','Valor Regular do IBS UF','LBR','01a20d7d-6845-7aa2-ab52-2729f9a2dc12')
;

-- Nov 24, 2026, 9:17:32 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801112,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBS_Mun_TaxRegEfetRate','Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).','Alíquota Efetiva Regular do IBS Municipal (%)','LBR','01a20d7d-6a20-7ed8-a058-1cc2ac4f506c')
;

-- Nov 24, 2026, 9:17:33 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801113,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBS_Mun_TaxRegAmt','Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).','Valor Regular do IBS Municipal','LBR','01a20d7d-6c16-7372-b221-5711bcdd1572')
;

-- Nov 24, 2026, 9:17:33 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801114,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CBS_TaxRegEfetRate','Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).','Alíquota Efetiva Regular da CBS (%)','LBR','01a20d7d-6df1-7b0c-a73b-81970aaef1aa')
;

-- Nov 24, 2026, 9:17:34 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801115,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CBS_TaxRegAmt','Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).','Valor Regular da CBS','LBR','01a20d7d-7007-755d-94dc-8530bac625c3')
;

-- Nov 24, 2026, 9:17:35 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803076,0,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = 'b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),800026,'LBR_CSTReg_IBSCBS_ID',22,'N','N','N','N','N',0,'N',18,800132,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:34','YYYY-MM-DD HH24:MI:SS'),100,801108,'Y','N','LBR','N','N','N','Y','01a20d7d-733c-72b6-aacd-a3e9f0739c38','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:35 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCSTRegIBSCBS_LBRTaxLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-24 09:17:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803076
;

-- Nov 24, 2026, 9:17:35 AM BRT
ALTER TABLE LBR_TaxLine ADD LBR_CSTReg_IBSCBS_ID NUMBER(10) DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:35 AM BRT
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRCSTRegIBSCBS_LBRTaxLine FOREIGN KEY (LBR_CSTReg_IBSCBS_ID) REFERENCES lbr_cst_ibscbs(lbr_cst_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 24, 2026, 9:17:36 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803077,0,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = 'b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),800027,'LBR_ClassTribReg_IBSCBS_ID',22,'N','N','N','N','N',0,'N',18,800133,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:35','YYYY-MM-DD HH24:MI:SS'),100,801109,'Y','N','LBR','N','N','N','Y','01a20d7d-780c-79a6-9af0-74b1bcf65d69','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:36 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRClassTribRegIBSCBS_LBRTaxLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-24 09:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803077
;

-- Nov 24, 2026, 9:17:36 AM BRT
ALTER TABLE LBR_TaxLine ADD LBR_ClassTribReg_IBSCBS_ID NUMBER(10) DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:36 AM BRT
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRClassTribRegIBSCBS_LBRTaxLine FOREIGN KEY (LBR_ClassTribReg_IBSCBS_ID) REFERENCES lbr_classtrib_ibscbs(lbr_classtrib_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 24, 2026, 9:17:37 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803078,0,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800065,800026,'LBR_CSTReg_IBSCBS_ID',22,'N','N','N','N','N',0,'N',18,800132,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:36','YYYY-MM-DD HH24:MI:SS'),100,801108,'Y','N','LBR','N','N','N','Y','01a20d7d-7b39-7293-a28b-e63a744dca6c','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:37 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCSTRegIBSCBS_LBRDocLineIBSCBS', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-24 09:17:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803078
;

-- Nov 24, 2026, 9:17:37 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_CSTReg_IBSCBS_ID NUMBER(10) DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:37 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD CONSTRAINT LBRCSTRegIBSCBS_LBRDocLineIBSCBS FOREIGN KEY (LBR_CSTReg_IBSCBS_ID) REFERENCES lbr_cst_ibscbs(lbr_cst_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 24, 2026, 9:17:37 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803079,0,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800065,800027,'LBR_ClassTribReg_IBSCBS_ID',22,'N','N','N','N','N',0,'N',18,800133,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:37','YYYY-MM-DD HH24:MI:SS'),100,801109,'Y','N','LBR','N','N','N','Y','01a20d7d-7e67-7537-b102-411d901e9997','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:37 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRClassTribRegIBSCBS_LBRDocLineIBSCBS', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-24 09:17:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=803079
;

-- Nov 24, 2026, 9:17:37 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_ClassTribReg_IBSCBS_ID NUMBER(10) DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:37 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD CONSTRAINT LBRClassTribRegIBSCBS_LBRDocLineIBSCBS FOREIGN KEY (LBR_ClassTribReg_IBSCBS_ID) REFERENCES lbr_classtrib_ibscbs(lbr_classtrib_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 24, 2026, 9:17:38 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803080,0,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800065,'LBR_IBS_UF_TaxRegEfetRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:38','YYYY-MM-DD HH24:MI:SS'),100,801110,'Y','N','LBR','N','N','N','Y','01a20d7d-813f-7e73-bdec-bc3858747934','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:38 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_IBS_UF_TaxRegEfetRate NUMBER DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:39 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803081,0,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800065,'LBR_IBS_UF_TaxRegAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:38','YYYY-MM-DD HH24:MI:SS'),100,801111,'Y','N','LBR','N','N','N','Y','01a20d7d-83a2-7be0-b178-27a1f9b3a3b6','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:39 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_IBS_UF_TaxRegAmt NUMBER DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:39 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803082,0,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800065,'LBR_IBS_Mun_TaxRegEfetRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:39','YYYY-MM-DD HH24:MI:SS'),100,801112,'Y','N','LBR','N','N','N','Y','01a20d7d-85f8-7182-9177-e2b61310d44b','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:39 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_IBS_Mun_TaxRegEfetRate NUMBER DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:40 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803083,0,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800065,'LBR_IBS_Mun_TaxRegAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:40','YYYY-MM-DD HH24:MI:SS'),100,801113,'Y','N','LBR','N','N','N','Y','01a20d7d-886b-74dc-89ee-9c161b42d274','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:40 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_IBS_Mun_TaxRegAmt NUMBER DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:41 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803084,0,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800065,'LBR_CBS_TaxRegEfetRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:40','YYYY-MM-DD HH24:MI:SS'),100,801114,'Y','N','LBR','N','N','N','Y','01a20d7d-8ad3-7076-a54f-9d1f739f9975','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:41 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_CBS_TaxRegEfetRate NUMBER DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:41 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803085,0,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800065,'LBR_CBS_TaxRegAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:41','YYYY-MM-DD HH24:MI:SS'),100,801115,'Y','N','LBR','N','N','N','Y','01a20d7d-8da6-7925-b200-54ab244d6415','Y',0,'N','N','N','N','N',10)
;

-- Nov 24, 2026, 9:17:41 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD LBR_CBS_TaxRegAmt NUMBER DEFAULT NULL 
;

-- Nov 24, 2026, 9:17:53 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803051,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = 'ac17de59-790f-4e46-9df9-b84de9b6b3c9'),803076,'Y',22,172,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-bbc4-7c50-b4a4-70cf800918e1','Y',32,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:54 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803052,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = 'ac17de59-790f-4e46-9df9-b84de9b6b3c9'),803077,'Y',22,174,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-be6f-7b99-9978-502c513af633','Y',34,5,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:54 AM BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800032,0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:54','YYYY-MM-DD HH24:MI:SS'),100,'Tributação Regular','LBR','C','N','01a20d7d-c06b-723a-b7c4-ff05f2216015')
;

-- Nov 24, 2026, 9:17:55 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803053,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800064,803078,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',800032,'LBR','01a20d7d-c2e1-77c3-97fe-d5d2341fd792','Y',280,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:55 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803054,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800064,803079,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,290,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-c4f5-77b6-9896-dee4c6bfcbb2','Y',290,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:56 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803055,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800064,803080,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,300,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-c738-7716-839d-267593a4d4e8','Y',300,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:57 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803056,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800064,803081,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,310,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-c92e-71f5-b60b-cff0f8611ad5','Y',310,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:57 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803057,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800064,803082,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-cb9f-7e69-b253-2ac6ba70481c','Y',320,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:58 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803058,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800064,803083,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,330,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-cdba-77b4-81fd-e89bd8b06358','Y',330,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:58 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803059,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800064,803084,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,340,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-cfb0-7d30-b111-6c482732130d','Y',340,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:59 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803060,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800064,803085,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,350,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-d1a4-7bf9-bade-158fa7cef005','Y',350,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:17:59 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803061,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800065,803078,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',800032,'LBR','01a20d7d-d3a1-7484-b0de-b568cb49e228','Y',280,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:00 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803062,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800065,803079,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,290,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:17:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:17:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-d604-72eb-b3f5-87a2b485bd63','Y',290,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:00 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803063,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800065,803080,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,300,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-d80f-757c-b84b-a3b16785654e','Y',300,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:01 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803064,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800065,803081,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,310,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-da6b-7524-b1c3-ee89fef6a3e7','Y',310,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:02 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803065,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800065,803082,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-dcd2-7fc6-8614-179f9dcebe16','Y',320,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:02 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803066,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800065,803083,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,330,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-df3d-7d85-ab8a-6aa2ed84a3a7','Y',330,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:03 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803067,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800065,803084,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,340,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-e147-772e-851d-27b4618e2347','Y',340,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:03 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803068,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800065,803085,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,350,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-e3a0-772d-8a49-a13b09f19e45','Y',350,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:04 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803069,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800066,803078,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',800032,'LBR','01a20d7d-e58d-715d-ba6e-db08f3063025','Y',280,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:04 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803070,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800066,803079,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,290,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-e77e-7b7c-9a42-adab5295b582','Y',290,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:05 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803071,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800066,803080,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,300,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-ea0b-74b5-b122-1ff7c799309e','Y',300,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:05 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803072,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800066,803081,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,310,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-ec12-7987-84bc-b950c59f41ff','Y',310,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:06 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803073,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800066,803082,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-ee6c-77e2-a381-2713ed455d73','Y',320,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:07 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803074,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800066,803083,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,330,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-f0ae-70a6-b708-c4f7b5d4cb78','Y',330,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:07 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803075,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800066,803084,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,340,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-f2db-7dd3-a7b4-7feca8d6fd63','Y',340,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:08 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803076,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800066,803085,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,350,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-f4d5-70d7-85ef-3a191ac73d4b','Y',350,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:08 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803077,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800067,803078,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',800032,'LBR','01a20d7d-f739-7b30-b605-64bb48641222','Y',280,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:09 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803078,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800067,803079,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,290,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-f99f-77c5-af5a-b3cd898ef4cf','Y',290,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:09 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803079,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800067,803080,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,300,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-fb9e-7ef1-98fa-e0d079dca34f','Y',300,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:10 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803080,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800067,803081,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,310,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-fdab-7598-b3c9-ac3b4fc446c6','Y',310,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:11 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803081,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800067,803082,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7d-fff1-70fe-9a3d-b168bbb80ca8','Y',320,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:11 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803082,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800067,803083,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,330,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-0226-7945-ae4f-11f79f7c4434','Y',330,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803083,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800067,803084,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,340,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-040d-74d9-b0e2-921480223709','Y',340,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803084,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800067,803085,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,350,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-066d-741f-9652-49238503a63b','Y',350,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:13 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803085,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800068,803078,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',800032,'LBR','01a20d7e-08e2-7678-b10e-101439c03fc9','Y',280,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:13 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803086,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800068,803079,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,290,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-0b4b-792e-b35a-885ff8569fa7','Y',290,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:14 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803087,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800068,803080,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,300,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-0d6f-7d6e-8c92-f80c102d5528','Y',300,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:15 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803088,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800068,803081,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,310,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-0faa-7903-9b01-a75419dfea3c','Y',310,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:15 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803089,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800068,803082,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-119e-73a5-9c86-55032218247b','Y',320,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:16 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803090,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800068,803083,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,330,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-13a1-7f89-99be-4177e293af01','Y',330,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:16 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803091,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800068,803084,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,340,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-15bb-7c88-82c8-b30a307c4322','Y',340,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:17 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803092,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800068,803085,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,350,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-17b0-7780-9496-e41a827ab32b','Y',350,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:17 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803093,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800069,803078,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',800032,'LBR','01a20d7e-19a2-732d-ad4e-a169664ae37c','Y',280,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:18 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803094,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800069,803079,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,290,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-1ba6-7444-a5a7-f74e26baa2ac','Y',290,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:18 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803095,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800069,803080,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,300,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-1da3-730b-9485-b0f3c000f5ac','Y',300,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:19 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803096,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800069,803081,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,310,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-1fb6-7cc7-b4d3-ee89a41f72b8','Y',310,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:19 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803097,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800069,803082,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-21d8-7653-9e4e-654f035341b7','Y',320,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:20 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803098,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800069,803083,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,330,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-2418-729f-98c1-a11f8fc7b932','Y',330,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803099,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800069,803084,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,340,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-26d5-7a00-aaa0-c5c834326305','Y',340,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803100,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800069,803085,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,350,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-28d3-7805-b4cf-5269ad180ac9','Y',350,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:22 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803101,'CST Regular de IBS/CBS','CST da tributação regular (grupo gTribRegular): como a operação seria tributada sem a condição suspensiva ou resolutória. NT 2025.002-RTC, UB69.',800070,803078,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',800032,'LBR','01a20d7e-2af9-708b-bb37-4747f7ca32b0','Y',280,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:22 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803102,'Classificação Tributária Regular de IBS/CBS','cClassTrib da tributação regular (grupo gTribRegular). NT 2025.002-RTC, UB70.',800070,803079,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',22,290,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-2d14-7a7c-b98c-de737e9a5c11','Y',290,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:23 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803103,'Alíquota Efetiva Regular do IBS UF (%)','Alíquota efetiva do IBS da UF na tributação regular (pAliqEfetRegIBSUF, UB71).',800070,803080,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,300,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-2fc4-7f0f-b9a9-893541ffd306','Y',300,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:23 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803104,'Valor Regular do IBS UF','Valor do IBS da UF na tributação regular (vTribRegIBSUF, UB72).',800070,803081,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,310,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-3232-7f7c-b8a1-91e0476030e7','Y',310,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:24 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803105,'Alíquota Efetiva Regular do IBS Municipal (%)','Alíquota efetiva do IBS do município na tributação regular (pAliqEfetRegIBSMun, UB72a).',800070,803082,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-3491-7b4f-b366-2932aa53a9b4','Y',320,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803106,'Valor Regular do IBS Municipal','Valor do IBS do município na tributação regular (vTribRegIBSMun, UB72b).',800070,803083,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,330,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-3777-7846-8fa3-bb595d097985','Y',330,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803107,'Alíquota Efetiva Regular da CBS (%)','Alíquota efetiva da CBS na tributação regular (pAliqEfetRegCBS, UB72c).',800070,803084,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,340,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-39db-74ca-874f-c0573bda7956','Y',340,1,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:26 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm,IsHtml) VALUES (803108,'Valor Regular da CBS','Valor da CBS na tributação regular (vTribRegCBS, UB72d).',800070,803085,'Y','@LBR_ClassTribReg_IBSCBS_ID@>0',10,350,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-24 09:18:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-24 09:18:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a20d7e-3c7d-771e-b596-edf3db0a83b7','Y',350,4,2,1,'N','N','N','N','N')
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c2ce-7d49-a8d9-7077acc8eca6'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c2df-7bf5-8069-543a536b07cf'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c2f0-74a2-a7f2-1d2f0856cadf'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c2fd-74b9-8ce4-99a5c0c45c47'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c309-76c0-ad3d-db2b42e33f1a'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c317-7c2e-9abd-bbea3271076e'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c325-7409-900b-76d92cd59cb5'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c333-7c17-a571-b98781305df2'
;

-- Nov 24, 2026, 9:18:36 AM BRT
UPDATE LBR_ClassTrib_IBSCBS SET LBR_IndgIBSCBSTribRegular='1',Updated=TO_TIMESTAMP('2026-11-24 09:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_ClassTrib_IBSCBS_UU='01a2084e-c340-76db-bb1f-7f136e87e638'
;

