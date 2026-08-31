-- 
SELECT register_migration_script('202608311510_DFeMonitor.sql') FROM dual;

-- 31 de ago. de 2026 15:10:13 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (800035,'Controle de DF-e',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:12','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','Y','N','N','01a05903-bfd8-7e75-bb59-e7b553ceb453')
;

-- 31 de ago. de 2026 15:10:13 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (800098,'Controle de DF-e',800035,10,'Y',800087,0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:13','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR_DFeControl.Created DESC','N',0,'N','LBR','Y','N','01a05903-c1e4-7f17-bb75-7e7d63effaed')
;

-- 31 de ago. de 2026 15:10:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802295,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800098,802124,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-c3e6-750a-85af-3f53a37a8f90','N',2)
;

-- 31 de ago. de 2026 15:10:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802296,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800098,802125,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-c58c-77d4-b2c2-596031eeb675','Y','Y',10,4,2)
;

-- 31 de ago. de 2026 15:10:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802297,'Controle de DF-e',800098,802131,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-c71a-7edd-98a9-20d4914ff580','N',2)
;

-- 31 de ago. de 2026 15:10:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (802298,'LBR_DFeControl_UU',800098,802132,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-c8ac-7a1a-ab57-c52bcc61dfbc','N',2)
;

-- 31 de ago. de 2026 15:10:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802299,'Sefaz NF-e Environment',800098,802133,'Y',1,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-ca3f-7207-810c-6b5bae4173db','Y',20,2)
;

-- 31 de ago. de 2026 15:10:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802300,'Last NSU',800098,802134,'Y',15,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-cbea-7344-959c-d5b821d4c427','Y',30,2)
;

-- 31 de ago. de 2026 15:10:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802301,'Último NSU Conhecido',800098,802135,'Y',15,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-cd85-76fb-a7b0-03cb4e48c0df','Y',40,2)
;

-- 31 de ago. de 2026 15:10:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802302,'Último Request',800098,802136,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-cf1c-7d5e-bec0-720bb318f741','Y',50,2)
;

-- 31 de ago. de 2026 15:10:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802303,'Último Response',800098,802137,'Y',4,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-d0b3-7ebd-bdac-ad70c4f329b7','Y',60,2)
;

-- 31 de ago. de 2026 15:10:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802304,'Fim do Bloqueio',800098,802138,'Y',7,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-d258-7b02-84b6-820dcb842c61','Y',70,2)
;

-- 31 de ago. de 2026 15:10:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802305,'Qtd. de Consultas (na Hora Corrente)',800098,802139,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-d3e8-7002-b2a4-3bf1bfa20486','Y',80,2)
;

-- 31 de ago. de 2026 15:10:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (802306,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800098,802130,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a05903-d57d-7060-9740-28fac81bd5e9','Y',90,2,2)
;

-- 31 de ago. de 2026 15:10:19 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,AD_Menu_UU) VALUES (800072,'Controle de DF-e','W',800035,0,0,'Y',TO_TIMESTAMP('2026-08-31 15:10:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-31 15:10:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','LBR','01a05903-d728-7eda-81b4-4bfe131f06b9')
;

-- 31 de ago. de 2026 15:10:19 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800072, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800072)
;

-- 31 de ago. de 2026 15:10:19 BRT
UPDATE AD_Table SET AD_Window_ID=800035,Updated=TO_TIMESTAMP('2026-08-31 15:10:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800087
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', IsDisplayed='Y', SeqNo=30, XPosition=2, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802306
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Sefaz NF-e Environment', Description=NULL, Help=NULL, SeqNo=40, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802299
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Last NSU', Description=NULL, Help=NULL, SeqNo=50, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802300
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Último NSU Conhecido', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=60, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802301
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Último Request', Description=NULL, Help=NULL, SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802302
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Último Response', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=80, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802303
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Fim do Bloqueio', Description=NULL, Help=NULL, SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802304
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Qtd. de Consultas (na Hora Corrente)', Description=NULL, Help=NULL, SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802305
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='Controle de DF-e', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802297
;

-- 31 de ago. de 2026 15:11:21 BRT
UPDATE AD_Field SET Name='LBR_DFeControl_UU', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802298
;

-- 31 de ago. de 2026 15:12:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=20,Updated=TO_TIMESTAMP('2026-08-31 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800072
;

-- 31 de ago. de 2026 15:12:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=21,Updated=TO_TIMESTAMP('2026-08-31 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800071
;

-- 31 de ago. de 2026 15:12:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=22,Updated=TO_TIMESTAMP('2026-08-31 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800070
;

-- 31 de ago. de 2026 15:12:24 BRT
UPDATE AD_Menu SET IsActive='Y',Updated=TO_TIMESTAMP('2026-08-31 15:12:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Menu_ID=800051
;

-- 31 de ago. de 2026 15:14:49 BRT
UPDATE AD_Tab SET IsInsertRecord='N',Updated=TO_TIMESTAMP('2026-08-31 15:14:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800098
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Tenant', Description='Tenant for this installation.', Help='A Tenant is a company or a legal entity. You cannot share data between Tenants.', SeqNo=10, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802295
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within tenant', Help='An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.', SeqNo=20, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802296
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', SeqNo=30, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802306
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Sefaz NF-e Environment', Description=NULL, Help=NULL, SeqNo=40, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802299
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Último Request', Description=NULL, Help=NULL, SeqNo=70, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802302
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Último Response', Description=NULL, Help=NULL, SeqNo=80, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802303
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Fim do Bloqueio', Description=NULL, Help=NULL, SeqNo=90, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802304
;

-- 31 de ago. de 2026 15:16:28 BRT
UPDATE AD_Field SET Name='Qtd. de Consultas (na Hora Corrente)', Description=NULL, Help=NULL, SeqNo=100, IsReadOnly='Y', Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-31 15:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802305
;

