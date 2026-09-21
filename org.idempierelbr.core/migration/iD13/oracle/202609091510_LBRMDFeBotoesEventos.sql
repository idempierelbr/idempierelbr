-- Botoes de Cancelar, Encerrar e Incluir condutor na janela do MDF-e,
-- mais a regra de validacao do tipo de documento.
SELECT register_migration_script('202609091510_LBRMDFeBotoesEventos.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- =====================================================================
-- 1. tipo de documento: so o que for MDF-e
-- ---------------------------------------------------------------------
-- Sem regra, o campo listava todos os tipos de documento do sistema -
-- pedidos, faturas, pagamentos. C_Order e LBR_NotaFiscal tem a sua.
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,Type,Code,EntityType,AD_Val_Rule_UU)
VALUES (800021,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'C_DocType MDFe','S','C_DocType.DocBaseType=''MDF''','LBR',
        '01a08a11-0001-7000-9000-000000000011')
;

UPDATE AD_Column SET AD_Val_Rule_ID=800021,
       Updated=TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE ColumnName='C_DocType_ID'
   AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFe')
;

-- =====================================================================
-- 2. parametros dos processos, para o botao abrir o dialogo
-- ---------------------------------------------------------------------
-- Cancelar: justificativa, 15 a 255 caracteres (TJust do leiaute). O minimo
-- e conferido no processo; aqui so o tamanho maximo do campo.
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,ColumnName,AD_Element_ID,
       IsCentrallyMaintained,FieldLength,IsMandatory,IsRange,EntityType,IsEncrypted,
       IsAutocomplete,DateRangeOption,IsShowNegateButton,AD_Process_Para_UU)
VALUES (800163,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'Justificativa do cancelamento',
        (SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Cancelar'),
        10,14,'LBR_Justification',
        (SELECT AD_Element_ID FROM AD_Element WHERE ColumnName='LBR_Justification'),
        'N',255,'Y','N','LBR','N','N','N','N','01a08a11-0002-7000-9000-000000000012')
;

-- Encerrar: municipio e data do encerramento (evento 110112).
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,ColumnName,AD_Element_ID,
       IsCentrallyMaintained,FieldLength,IsMandatory,IsRange,EntityType,IsEncrypted,
       IsAutocomplete,DateRangeOption,IsShowNegateButton,AD_Process_Para_UU)
VALUES (800164,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'Municipio do encerramento',
        (SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Encerrar'),
        10,19,'C_City_ID',
        (SELECT AD_Element_ID FROM AD_Element WHERE ColumnName='C_City_ID'),
        'N',22,'Y','N','LBR','N','N','N','N','01a08a11-0003-7000-9000-000000000013')
;

INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,ColumnName,AD_Element_ID,
       IsCentrallyMaintained,FieldLength,IsMandatory,IsRange,EntityType,IsEncrypted,
       IsAutocomplete,DateRangeOption,IsShowNegateButton,AD_Process_Para_UU)
VALUES (800165,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'Data do encerramento',
        (SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Encerrar'),
        20,15,'LBR_DateEncerra',
        (SELECT AD_Element_ID FROM AD_Element WHERE ColumnName='LBR_DateEncerra'),
        'N',7,'Y','N','LBR','N','N','N','N','01a08a11-0004-7000-9000-000000000014')
;

-- Incluir condutor: nome e CPF (evento 110114).
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,ColumnName,AD_Element_ID,
       IsCentrallyMaintained,FieldLength,IsMandatory,IsRange,EntityType,IsEncrypted,
       IsAutocomplete,DateRangeOption,IsShowNegateButton,AD_Process_Para_UU)
VALUES (800166,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'Nome do condutor',
        (SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_IncluirCondutor'),
        10,10,'Name',
        (SELECT AD_Element_ID FROM AD_Element WHERE ColumnName='Name'),
        'N',60,'Y','N','LBR','N','N','N','N','01a08a11-0005-7000-9000-000000000015')
;

INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,
       Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,ColumnName,AD_Element_ID,
       IsCentrallyMaintained,FieldLength,IsMandatory,IsRange,EntityType,IsEncrypted,
       IsAutocomplete,DateRangeOption,IsShowNegateButton,AD_Process_Para_UU)
VALUES (800167,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'CPF do condutor',
        (SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_IncluirCondutor'),
        20,10,'LBR_CPF',
        (SELECT AD_Element_ID FROM AD_Element WHERE ColumnName='LBR_CPF'),
        'N',11,'Y','N','LBR','N','N','N','N','01a08a11-0006-7000-9000-000000000016')
;

-- =====================================================================
-- 3. os tres botoes na janela
-- ---------------------------------------------------------------------
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU)
VALUES (800973,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'LBR_ProcCancelar','Cancelar MDF-e','Cancelar MDF-e','LBR',
        '01a08a11-0007-7000-9000-000000000017')
;
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU)
VALUES (800974,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'LBR_ProcEncerrar','Encerrar MDF-e','Encerrar MDF-e','LBR',
        '01a08a11-0008-7000-9000-000000000018')
;
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU)
VALUES (800975,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        'LBR_ProcIncluirCondutor','Incluir Condutor','Incluir Condutor','LBR',
        '01a08a11-0009-7000-9000-000000000019')
;

-- Botao (referencia 28) e coluna fisica char(1), como LBR_ProcTransmitir.
-- IsUpdateable='Y' porque o PO grava o valor do clique; nao entra em nenhum
-- calculo nem vai para o XML.
INSERT INTO AD_Column (AD_Column_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Version,Name,AD_Table_ID,ColumnName,AD_Element_ID,AD_Reference_ID,AD_Process_ID,
       FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,
       IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,
       IsAllowLogging,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,
       IsHtml,AD_Column_UU)
VALUES (802692,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,0,'Cancelar MDF-e',
        (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFe'),'LBR_ProcCancelar',800973,28,
        (SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Cancelar'),
        1,'N','N','N','N','N',0,'N','Y','N','LBR','N','N','N','Y','Y',0,'N','N','N','N',
        '01a08a11-000a-7000-9000-00000000001a')
;
INSERT INTO AD_Column (AD_Column_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Version,Name,AD_Table_ID,ColumnName,AD_Element_ID,AD_Reference_ID,AD_Process_ID,
       FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,
       IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,
       IsAllowLogging,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,
       IsHtml,AD_Column_UU)
VALUES (802693,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,0,'Encerrar MDF-e',
        (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFe'),'LBR_ProcEncerrar',800974,28,
        (SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Encerrar'),
        1,'N','N','N','N','N',0,'N','Y','N','LBR','N','N','N','Y','Y',0,'N','N','N','N',
        '01a08a11-000b-7000-9000-00000000001b')
;
INSERT INTO AD_Column (AD_Column_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Version,Name,AD_Table_ID,ColumnName,AD_Element_ID,AD_Reference_ID,AD_Process_ID,
       FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,
       IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,
       IsAllowLogging,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,
       IsHtml,AD_Column_UU)
VALUES (802694,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,0,'Incluir Condutor',
        (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFe'),'LBR_ProcIncluirCondutor',
        800975,28,(SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_IncluirCondutor'),
        1,'N','N','N','N','N',0,'N','Y','N','LBR','N','N','N','Y','Y',0,'N','N','N','N',
        '01a08a11-000c-7000-9000-00000000001c')
;

ALTER TABLE LBR_MDFe ADD LBR_ProcCancelar CHAR(1) DEFAULT NULL;
ALTER TABLE LBR_MDFe ADD LBR_ProcEncerrar CHAR(1) DEFAULT NULL;
ALTER TABLE LBR_MDFe ADD LBR_ProcIncluirCondutor CHAR(1) DEFAULT NULL;

-- Os tres ficam ao lado do Transmitir, no cabecalho. SeqNo 91/92/93 cabe no
-- espaco entre o Transmitir (90) e o inicio do grupo Identificacao (100).
-- SeqNoGrid acompanha SeqNo: divergir entre os dois derruba a grade com
-- IndexOutOfBoundsException ao abrir uma aba filha vazia.
INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,
       IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsDisplayedGrid,SeqNoGrid,
       IsQuickEntry,AD_Field_UU)
VALUES (802752,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,'Cancelar MDF-e',
        (SELECT tb.AD_Tab_ID FROM AD_Tab tb JOIN AD_Table t ON t.AD_Table_ID=tb.AD_Table_ID
          WHERE tb.AD_Window_ID=800038 AND t.TableName='LBR_MDFe' AND tb.TabLevel=0),
        802692,'Y','Y',91,'N','Y','N','N','N','LBR','Y',91,'N',
        '01a08a11-000d-7000-9000-00000000001d')
;
INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,
       IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsDisplayedGrid,SeqNoGrid,
       IsQuickEntry,AD_Field_UU)
VALUES (802753,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,'Encerrar MDF-e',
        (SELECT tb.AD_Tab_ID FROM AD_Tab tb JOIN AD_Table t ON t.AD_Table_ID=tb.AD_Table_ID
          WHERE tb.AD_Window_ID=800038 AND t.TableName='LBR_MDFe' AND tb.TabLevel=0),
        802693,'Y','Y',92,'N','Y','N','N','N','LBR','Y',92,'N',
        '01a08a11-000e-7000-9000-00000000001e')
;
INSERT INTO AD_Field (AD_Field_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,
       UpdatedBy,Name,AD_Tab_ID,AD_Column_ID,IsCentrallyMaintained,IsDisplayed,SeqNo,IsReadOnly,
       IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,EntityType,IsDisplayedGrid,SeqNoGrid,
       IsQuickEntry,AD_Field_UU)
VALUES (802754,0,0,'Y',TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,
        TO_TIMESTAMP('2026-09-09 15:10:00','YYYY-MM-DD HH24:MI:SS'),100,'Incluir Condutor',
        (SELECT tb.AD_Tab_ID FROM AD_Tab tb JOIN AD_Table t ON t.AD_Table_ID=tb.AD_Table_ID
          WHERE tb.AD_Window_ID=800038 AND t.TableName='LBR_MDFe' AND tb.TabLevel=0),
        802694,'Y','Y',93,'N','Y','N','N','N','LBR','Y',93,'N',
        '01a08a11-000f-7000-9000-00000000001f')
;
