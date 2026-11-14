-- cBenef por UF do emitente
SELECT register_migration_script('202611141213_CBenefPorUF.sql') FROM dual;

-- Nov 14, 2026, 12:13:39 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801084,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:13:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:13:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsOmitCBenef','Não Informar cBenef','Indica que, nesta UF, o item sai sem cBenef, mesmo que o produto ou o CST tenha um código.','Não Informar cBenef','LBR','01a1da9f-0d26-7f0d-9441-12d2bce60dd7')
;

-- Nov 14, 2026, 12:14:04 PM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,IsChangeLog,ReplicationType,AD_Table_UU,Processing) VALUES (800129,'Código de Benefício Fiscal por UF','Código de Benefício Fiscal (cBenef) por UF do emitente e CST/CSOSN do ICMS, opcionalmente por produto ou NCM.','LBR_CBenefRule','3',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','Y','L','01a1da9f-718d-7008-b973-238cd444d126','N')
;

-- Nov 14, 2026, 12:14:05 PM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CBenefRule',1000000,'N','N','Table LBR_CBenefRule','Y','Y',0,0,TO_TIMESTAMP('2026-11-14 12:14:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:04','YYYY-MM-DD HH24:MI:SS'),100,800748,'Y',1000000,1,200000,'01a1da9f-732b-7217-88b9-4ebf83079d30')
;

-- Nov 14, 2026, 12:14:05 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802984,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:05','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','1=1','LBR','N','01a1da9f-74f9-775c-b960-8a459c9db3a5','N')
;

-- Nov 14, 2026, 12:14:06 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802985,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800129,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:05','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','01a1da9f-767e-7289-b7da-679db4572841','N')
;

-- Nov 14, 2026, 12:14:06 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802986,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800129,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:06','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','01a1da9f-7804-75bf-acb7-06ec666b900e','N')
;

-- Nov 14, 2026, 12:14:06 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802987,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800129,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:06','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','01a1da9f-7979-7c0b-802c-f0c0f2b81038','N')
;

-- Nov 14, 2026, 12:14:07 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802988,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800129,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:06','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','01a1da9f-7af7-7549-a981-a66e0f71edd7','N')
;

-- Nov 14, 2026, 12:14:07 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802989,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800129,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','01a1da9f-7c71-7d55-a6ae-9054862467d5','N')
;

-- Nov 14, 2026, 12:14:07 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802990,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800129,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','01a1da9f-7de0-7033-90b6-bd0e99d0314f','N')
;

-- Nov 14, 2026, 12:14:08 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (801085,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CBenefRule_ID','Código de Benefício Fiscal por UF','Código de Benefício Fiscal (cBenef) por UF do emitente e CST/CSOSN do ICMS, opcionalmente por produto ou NCM.','Código de Benefício Fiscal por UF','LBR','01a1da9f-7f69-723b-8469-f5344f863977')
;

-- Nov 14, 2026, 12:14:08 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802991,0.0,'Código de Benefício Fiscal por UF','Código de Benefício Fiscal (cBenef) por UF do emitente e CST/CSOSN do ICMS, opcionalmente por produto ou NCM.',800129,'LBR_CBenefRule_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:08','YYYY-MM-DD HH24:MI:SS'),100,801085,'N','N','LBR','N','01a1da9f-8123-79c5-987a-c99e84439de1','N')
;

-- Nov 14, 2026, 12:14:09 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (801086,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CBenefRule_UU','LBR_CBenefRule_UU','LBR_CBenefRule_UU','LBR','01a1da9f-82af-721f-86ab-f63d9149609a')
;

-- Nov 14, 2026, 12:14:09 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802992,0.0,'LBR_CBenefRule_UU',800129,'LBR_CBenefRule_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:09','YYYY-MM-DD HH24:MI:SS'),100,801086,'Y','N','LBR','N','01a1da9f-843c-77a4-84a8-9056e6cecf95','N')
;

-- Nov 14, 2026, 12:14:09 PM BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800232,'01a1da9f-85c2-78fa-854b-ab14770b8713',TO_TIMESTAMP('2026-11-14 12:14:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','LBR_CBenefRule_UU_idx',TO_TIMESTAMP('2026-11-14 12:14:09','YYYY-MM-DD HH24:MI:SS'),100,800129,'Y','Y','N','N')
;

-- Nov 14, 2026, 12:14:10 PM BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800292,'01a1da9f-8750-72e2-8fce-8e71bc2d1db9',TO_TIMESTAMP('2026-11-14 12:14:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y',TO_TIMESTAMP('2026-11-14 12:14:10','YYYY-MM-DD HH24:MI:SS'),100,802992,800232,10)
;

-- Nov 14, 2026, 12:14:10 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802993,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',800129,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:10','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','N','LBR','N','01a1da9f-8923-7c8e-a06f-6db693bf1508','N')
;

-- Nov 14, 2026, 12:14:36 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (802994,0.0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800129,(SELECT AD_Val_Rule_ID FROM AD_Val_Rule WHERE AD_Val_Rule_UU = 'a22f6a1d-701c-4f58-871a-047e5154f02c'),'C_Region_ID',10,'N','N','Y','N','Y',1,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:35','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','Y','LBR','N','N','N','Y','01a1da9f-ed03-7dc4-8802-7950e4c9d536','Y',10,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:42 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (802995,0.0,'ICMS Regime','Identifies a ICMS Regime for taxes',800129,'LBR_ICMSRegime','TN',2,'N','N','Y','N','N',0,'N',17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = 'b1590dd3-27e3-40bc-b173-b75e43c97f3c'),0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:41','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '5a4ee7f2-47fc-476c-9f60-cf5782d4dbbf'),'Y','N','LBR','N','N','N','Y','01a1daa0-042c-73af-a563-978c383146c4','Y',0,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:42 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (802996,0.0,'ICMS Tax Status (Standard Taxation)','Identifies a ICMS Tax Status in a standard taxation',800129,'LBR_ICMS_TaxStatusTN',5,'N','N','N','N','N',0,'N',17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '492697de-270c-44a7-920b-8fd235d4dc4e'),0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:42','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '64a65097-7e33-4c0e-83cf-68435e9436ac'),'Y','Y','LBR','N','N','@LBR_ICMSRegime@=TN','N','Y','01a1daa0-0658-70b3-be59-064a907929c7','Y',20,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:43 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (802997,0.0,'ICMS Tax Status (Simple)','Identifies a ICMS Tax Status in a simple taxation',800129,'LBR_ICMS_TaxStatusSN',5,'N','N','N','N','N',0,'N',17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '2c140b99-3df5-4c1d-bd93-b15450e07faa'),0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:43','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = 'fb36421d-dae8-40ca-9f86-709cbc374590'),'Y','Y','LBR','N','N','@LBR_ICMSRegime@=SN','N','Y','01a1daa0-08a1-7628-a55f-c330f59bb7f6','Y',30,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:44 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (802998,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',800129,231,'M_Product_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:43','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','Y','@LBR_NCM_ID@>0','LBR','N','N','N','Y','01a1daa0-0b25-7b4f-8543-fd9816b25650','Y',40,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:44 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (802999,0.0,'NCM','NCM stands for Nomenclatura Comum do MERCOSUL',800129,'LBR_NCM_ID',10,'N','N','N','N','N',0,'N',30,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '3d20574f-c33e-4369-bb7c-a2806bd53f6f'),0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:44','YYYY-MM-DD HH24:MI:SS'),100,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '17b475c9-2cc0-46b1-ba1d-303850be26a4'),'Y','Y','@M_Product_ID@>0','LBR','N','N','N','Y','01a1daa0-0d8c-7471-84ec-dc8d3329b1a9','Y',50,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:45 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803000,0.0,'Não Informar cBenef','Indica que, nesta UF, o item sai sem cBenef, mesmo que o produto ou o CST tenha um código.',800129,'LBR_IsOmitCBenef','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:44','YYYY-MM-DD HH24:MI:SS'),100,801084,'Y','N','LBR','N','N','N','Y','01a1daa0-0fc6-7c49-b0bb-86a24c6398a8','Y',0,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:45 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803001,0.0,'Código de Benefício Fiscal',800129,'LBR_CBenef',10,'N','N','N','N','Y',2,'N',10,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:45','YYYY-MM-DD HH24:MI:SS'),100,800571,'Y','Y','LBR','N','N','@LBR_IsOmitCBenef@=N','N','Y','01a1daa0-1247-7faa-9138-d4a40369cfb0','Y',60,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:46 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803002,0.0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800129,'ValidFrom',7,'N','N','Y','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:46','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBR','N','N','N','Y','01a1daa0-145a-77d2-913e-adf3677f4eaf','Y',0,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:47 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey,SeqNoPartition) VALUES (803003,0.0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800129,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:46','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBR','N','N','N','Y','01a1daa0-16bf-71e8-9914-09f9863b431e','Y',0,'N','N','N','N','N',10)
;

-- Nov 14, 2026, 12:14:52 PM BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_LBRCBenefRule', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-14 12:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=802984
;

-- Nov 14, 2026, 12:14:52 PM BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADOrg_LBRCBenefRule', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-14 12:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=802985
;

-- Nov 14, 2026, 12:14:52 PM BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_LBRCBenefRule', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-14 12:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=802987
;

-- Nov 14, 2026, 12:14:52 PM BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRCBenefRule', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-14 12:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=802994
;

-- Nov 14, 2026, 12:14:52 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNCM_LBRCBenefRule', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-14 12:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=802999
;

-- Nov 14, 2026, 12:14:52 PM BRT
UPDATE AD_Column SET FKConstraintName='MProduct_LBRCBenefRule', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-14 12:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=802998
;

-- Nov 14, 2026, 12:14:52 PM BRT
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_LBRCBenefRule', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-11-14 12:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=802989
;

-- Nov 14, 2026, 12:14:52 PM BRT
CREATE TABLE LBR_CBenefRule (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_Region_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CBenef VARCHAR(10) DEFAULT NULL , LBR_CBenefRule_ID NUMERIC(10) NOT NULL, LBR_CBenefRule_UU UUID DEFAULT NULL , LBR_ICMSRegime VARCHAR(2) DEFAULT 'TN' NOT NULL, LBR_ICMS_TaxStatusSN VARCHAR(5) DEFAULT NULL , LBR_ICMS_TaxStatusTN VARCHAR(5) DEFAULT NULL , LBR_IsOmitCBenef CHAR(1) DEFAULT 'N' CHECK (LBR_IsOmitCBenef IN ('Y','N')) NOT NULL, LBR_NCM_ID NUMERIC(10) DEFAULT NULL , M_Product_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT LBR_CBenefRule_Key PRIMARY KEY (LBR_CBenefRule_ID), CONSTRAINT LBR_CBenefRule_UU_idx UNIQUE (LBR_CBenefRule_UU))
;

-- Nov 14, 2026, 12:14:52 PM BRT
ALTER TABLE LBR_CBenefRule ADD CONSTRAINT ADClient_LBRCBenefRule FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 14, 2026, 12:14:52 PM BRT
ALTER TABLE LBR_CBenefRule ADD CONSTRAINT ADOrg_LBRCBenefRule FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 14, 2026, 12:14:52 PM BRT
ALTER TABLE LBR_CBenefRule ADD CONSTRAINT CreatedBy_LBRCBenefRule FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 14, 2026, 12:14:52 PM BRT
ALTER TABLE LBR_CBenefRule ADD CONSTRAINT CRegion_LBRCBenefRule FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 14, 2026, 12:14:52 PM BRT
ALTER TABLE LBR_CBenefRule ADD CONSTRAINT LBRNCM_LBRCBenefRule FOREIGN KEY (LBR_NCM_ID) REFERENCES lbr_ncm(lbr_ncm_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 14, 2026, 12:14:52 PM BRT
ALTER TABLE LBR_CBenefRule ADD CONSTRAINT MProduct_LBRCBenefRule FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 14, 2026, 12:14:52 PM BRT
ALTER TABLE LBR_CBenefRule ADD CONSTRAINT UpdatedBy_LBRCBenefRule FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 14, 2026, 12:15:00 PM BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (800048,'Código de Benefício Fiscal por UF',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:14:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:14:59','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBR','Y','N','N','01a1daa0-4921-7578-90dc-dd60b06f6ac5')
;

-- Nov 14, 2026, 12:15:00 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800138,'Código de Benefício Fiscal por UF',800048,10,'Y',800129,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','LBR_CBenefRule.Created DESC','N',0,'N','LBR','Y','N','01a1daa0-4b25-7e98-bc13-f04d895fe862')
;

-- Nov 14, 2026, 12:15:01 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802979,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800138,802984,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-4d5a-7cd6-bd11-82c848f54a16','N',2)
;

-- Nov 14, 2026, 12:15:01 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802980,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800138,802985,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-4f25-75f1-af9d-f340edebe08e','Y','Y',10,4,2)
;

-- Nov 14, 2026, 12:15:01 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802981,'Description','Optional short description of the record','A description is limited to 255 characters.',800138,802993,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-50bf-7b5e-84d2-e182cab7753d','Y',20,5)
;

-- Nov 14, 2026, 12:15:02 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802982,'Código de Benefício Fiscal por UF','Código de Benefício Fiscal (cBenef) por UF do emitente e CST/CSOSN do ICMS, opcionalmente por produto ou NCM.',800138,802991,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-523c-725c-8d6e-5fb0a5814183','N',2)
;

-- Nov 14, 2026, 12:15:02 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802983,'LBR_CBenefRule_UU',800138,802992,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-53b3-7d6a-8b70-9ad105129bb9','N',2)
;

-- Nov 14, 2026, 12:15:03 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802984,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800138,802994,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-5575-7533-9b3e-edcc0491f799','Y',30,2)
;

-- Nov 14, 2026, 12:15:03 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802985,'ICMS Regime','Identifies a ICMS Regime for taxes',800138,802995,'Y',2,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-56f2-7a98-b56a-add3b73259a5','Y',40,2)
;

-- Nov 14, 2026, 12:15:03 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802986,'ICMS Tax Status (Standard Taxation)','Identifies a ICMS Tax Status in a standard taxation',800138,802996,'Y',5,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-58b4-7c78-85c6-a4beef44fb32','Y',50,2)
;

-- Nov 14, 2026, 12:15:04 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802987,'ICMS Tax Status (Simple)','Identifies a ICMS Tax Status in a simple taxation',800138,802997,'Y',5,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-5a3c-7b47-9e41-df958e9f4bff','Y',60,2)
;

-- Nov 14, 2026, 12:15:04 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802988,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',800138,802998,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-5bf3-7fd3-aaec-160ad7e52492','Y',70,2)
;

-- Nov 14, 2026, 12:15:05 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802989,'NCM','NCM stands for Nomenclatura Comum do MERCOSUL',800138,802999,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-5d83-7538-928a-411a92401877','Y',80,2)
;

-- Nov 14, 2026, 12:15:05 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802990,'Não Informar cBenef','Indica que, nesta UF, o item sai sem cBenef, mesmo que o produto ou o CST tenha um código.',800138,803000,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-5ef7-7b8f-8fd1-111af3b9d819','Y',90,2,2)
;

-- Nov 14, 2026, 12:15:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802991,'Código de Benefício Fiscal',800138,803001,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-60c0-7132-9009-50a67ba8296d','Y',100,2)
;

-- Nov 14, 2026, 12:15:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802992,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',800138,803002,'Y',7,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-624e-77f6-a46a-5083f07760a6','Y',110,2)
;

-- Nov 14, 2026, 12:15:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802993,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',800138,803003,'Y',7,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-63f7-7880-b35c-dee88e8ea12b','Y',120,2)
;

-- Nov 14, 2026, 12:15:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802994,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800138,802990,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','01a1daa0-657e-7838-964d-bcf0614b6c8c','Y',130,2,2)
;

-- Nov 14, 2026, 12:15:07 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,AD_Menu_UU) VALUES (800091,'Código de Benefício Fiscal por UF','W',800048,0,0,'Y',TO_TIMESTAMP('2026-11-14 12:15:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-11-14 12:15:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBR','01a1daa0-66f3-7597-9beb-badff6b01695')
;

-- Nov 14, 2026, 12:15:07 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 800091, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800091)
;

-- Nov 14, 2026, 12:15:07 PM BRT
UPDATE AD_Table SET AD_Window_ID=800048,Updated=TO_TIMESTAMP('2026-11-14 12:15:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800129
;

-- Nov 14, 2026, 12:15:37 PM BRT
UPDATE AD_Field SET Name='UF do Emitente', Description='UF do endereço da organização que emite a NF-e. É a UF dona da tabela de códigos e a que valida o cBenef.', SeqNo=30, IsSameLine='N', IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2026-11-14 12:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802984
;

-- Nov 14, 2026, 12:15:37 PM BRT
UPDATE AD_Field SET SeqNo=40, IsSameLine='N',Updated=TO_TIMESTAMP('2026-11-14 12:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802985
;

-- Nov 14, 2026, 12:15:37 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMSRegime@=TN', SeqNo=50, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-14 12:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802986
;

-- Nov 14, 2026, 12:15:38 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ICMSRegime@=SN', SeqNo=60, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-14 12:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802987
;

-- Nov 14, 2026, 12:15:38 PM BRT
UPDATE AD_Field SET SeqNo=70, IsSameLine='N',Updated=TO_TIMESTAMP('2026-11-14 12:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802988
;

-- Nov 14, 2026, 12:15:38 PM BRT
UPDATE AD_Field SET SeqNo=80, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-14 12:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802989
;

-- Nov 14, 2026, 12:15:38 PM BRT
UPDATE AD_Field SET SeqNo=90, IsSameLine='N',Updated=TO_TIMESTAMP('2026-11-14 12:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802990
;

-- Nov 14, 2026, 12:15:38 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsOmitCBenef@=N', SeqNo=100, IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2026-11-14 12:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802991
;

-- Nov 14, 2026, 12:15:38 PM BRT
UPDATE AD_Field SET SeqNo=110, IsSameLine='N', SeqNoGrid=110,Updated=TO_TIMESTAMP('2026-11-14 12:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802981
;

-- Nov 14, 2026, 12:15:38 PM BRT
UPDATE AD_Field SET IsSameLine='N', SeqNoGrid=120,Updated=TO_TIMESTAMP('2026-11-14 12:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802992
;

-- Nov 14, 2026, 12:15:39 PM BRT
UPDATE AD_Field SET IsSameLine='Y', SeqNoGrid=130, XPosition=4,Updated=TO_TIMESTAMP('2026-11-14 12:15:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802993
;

-- Nov 14, 2026, 12:15:39 PM BRT
UPDATE AD_Field SET IsSameLine='N', SeqNoGrid=140,Updated=TO_TIMESTAMP('2026-11-14 12:15:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=802994
;

-- Nov 14, 2026, 12:15:46 PM BRT
UPDATE AD_Window SET Description='Código de Benefício Fiscal (cBenef) por UF do emitente.', Help='Define o cBenef por UF do emitente (a UF do endereço da organização que emite a NF-e) e CST/CSOSN do ICMS, opcionalmente para um produto ou um NCM. Ordem de busca do cBenef na linha do documento, em que o primeiro encontrado vale: 1) regra desta janela para o produto e o CST; 2) regra para o NCM e o CST; 3) regra só para o CST; 4) código no cadastro do Produto; 5) código na Situação Tributária (CST). Em cada nível, a regra da organização vence a regra para todas as organizações. Sem regra para a UF, valem o produto e o CST, como antes. Marque Não Informar cBenef para o item sair sem código nesta UF, mesmo com código no produto ou no CST. Só vale a regra vigente na data do documento.',Updated=TO_TIMESTAMP('2026-11-14 12:15:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=800048
;

-- Nov 14, 2026, 12:15:46 PM BRT
UPDATE AD_Menu SET Name='Código de Benefício Fiscal por UF', Description='Código de Benefício Fiscal (cBenef) por UF do emitente.', IsActive='Y',Updated=TO_TIMESTAMP('2026-11-14 12:15:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=800091
;

-- Nov 14, 2026, 12:15:57 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=11,Updated=TO_TIMESTAMP('2026-11-14 12:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=800091
;

