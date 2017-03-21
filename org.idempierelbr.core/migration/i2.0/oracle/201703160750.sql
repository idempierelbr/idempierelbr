SET SQLBLANKLINES ON
SET DEFINE OFF

-- Payment allocation to Invoice Pay Schedule
-- 17/03/2017 14h3min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801631,0,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',335,'C_InvoicePaySchedule_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2017-03-17 14:03:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:03:30','YYYY-MM-DD HH24:MI:SS'),0,1995,'Y','N','LBR','N','Y','N','Y','03a9505f-2c83-4e46-81b8-87bf7867edfb','Y',0,'N','N','S')
;

-- 17/03/2017 14h3min38s BRT
UPDATE AD_Column SET FKConstraintName='CInvoicePaySchedule_CPayment', FKConstraintType='S',Updated=TO_DATE('2017-03-17 14:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801631
;

-- 17/03/2017 14h3min38s BRT
ALTER TABLE C_Payment ADD C_InvoicePaySchedule_ID NUMBER(10) DEFAULT NULL 
;

-- 17/03/2017 14h3min38s BRT
ALTER TABLE C_Payment ADD CONSTRAINT CInvoicePaySchedule_CPayment FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED
;

-- 17/03/2017 14h4min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801632,0,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',812,'C_InvoicePaySchedule_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2017-03-17 14:04:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:04:15','YYYY-MM-DD HH24:MI:SS'),0,1995,'Y','N','LBR','N','Y','N','Y','bc86cd0e-b071-48a4-84cc-e325dd510784','Y',0,'N','N','S')
;

-- 17/03/2017 14h4min19s BRT
UPDATE AD_Column SET FKConstraintName='CInvoicePaySchedule_CPaymentAl', FKConstraintType='S',Updated=TO_DATE('2017-03-17 14:04:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801632
;

-- 17/03/2017 14h4min19s BRT
ALTER TABLE C_PaymentAllocate ADD C_InvoicePaySchedule_ID NUMBER(10) DEFAULT NULL 
;

-- 17/03/2017 14h4min19s BRT
ALTER TABLE C_PaymentAllocate ADD CONSTRAINT CInvoicePaySchedule_CPaymentAl FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED
;

-- 17/03/2017 14h4min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801633,0,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',390,'C_InvoicePaySchedule_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2017-03-17 14:04:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:04:50','YYYY-MM-DD HH24:MI:SS'),0,1995,'Y','N','LBR','N','Y','N','Y','19c81853-0d51-43ba-a1aa-af874ffad036','Y',0,'N','N','S')
;

-- 17/03/2017 14h5min4s BRT
UPDATE AD_Column SET FKConstraintName='CInvoicePaySchedule_CAllocatio', FKConstraintType='S',Updated=TO_DATE('2017-03-17 14:05:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801633
;

-- 17/03/2017 14h5min4s BRT
ALTER TABLE C_AllocationLine ADD C_InvoicePaySchedule_ID NUMBER(10) DEFAULT NULL 
;

-- 17/03/2017 14h5min5s BRT
ALTER TABLE C_AllocationLine ADD CONSTRAINT CInvoicePaySchedule_CAllocatio FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED
;

-- 17/03/2017 14h5min49s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801378,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',330,801631,'Y',10,750,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-17 14:05:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:05:48','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f0ad16c2-e7e3-4fed-8519-170b2fdae49c','Y',760,2)
;

-- 17/03/2017 14h7min7s BRT
UPDATE AD_Field SET SeqNo=115, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:07:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801378
;

-- 17/03/2017 14h8min14s BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801378
;

-- 17/03/2017 14h9min10s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:09:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=4257
;

-- 17/03/2017 14h10min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801379,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',755,801632,'Y',10,130,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-17 14:10:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:10:44','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3fd11d14-b104-4237-806a-3132de222db1','Y',130,2)
;

-- 17/03/2017 14h12min10s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12231
;

-- 17/03/2017 14h12min36s BRT
UPDATE AD_Field SET SeqNo=55, IsFieldOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:12:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801379
;

-- 17/03/2017 14h14min17s BRT
UPDATE AD_Field SET IsFieldOnly='N', IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:14:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801379
;

-- 17/03/2017 14h16min19s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801380,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',349,801633,'Y',10,150,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-17 14:16:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:16:19','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','648ec8bd-5a73-4cc2-8b1e-e1c1ca459d49','Y',140,2)
;

-- 17/03/2017 14h17min10s BRT
UPDATE AD_Field SET SeqNo=65, IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:17:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801380
;

-- 17/03/2017 14h18min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801381,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',684,801633,'Y',10,130,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-17 14:18:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:18:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','cdb529bb-2c63-447a-98e4-6891fdd0eb68','Y',130,2)
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801381
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11029
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11037
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11036
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11038
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11042
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11041
;

-- 17/03/2017 14h18min45s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11032
;

-- 17/03/2017 14h18min58s BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:18:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801381
;

-- 17/03/2017 14h19min25s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801382,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',685,801633,'Y',10,130,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-17 14:19:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-17 14:19:24','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f73bbdfa-203e-40d8-be2c-24e2c8547325','Y',130,2)
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801382
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11046
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11054
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11053
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11055
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11059
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11058
;

-- 17/03/2017 14h19min32s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-17 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11049
;

-- 21/03/2017 13h24min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801383,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',686,801633,'Y',10,130,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-21 13:24:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-21 13:24:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','9285819c-44b6-44f9-a85a-22d6e657748c','Y',130,2)
;

-- 21/03/2017 13h24min21s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-21 13:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801383
;

-- 21/03/2017 13h24min21s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-21 13:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11069
;

-- 21/03/2017 13h24min21s BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-21 13:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11062
;

CREATE OR REPLACE FUNCTION lbr_allocationstoinvoiceonly
(
	p_C_Invoice_ID	            IN	NUMBER
)
RETURN BOOLEAN

AS
	v_NoOfAllocationsToInvoiceOnly			NUMBER := 0;
    --

BEGIN
	SELECT COUNT(l.C_AllocationLine_ID)
	    INTO v_NoOfAllocationsToInvoiceOnly
	    FROM C_AllocationLine l
	    LEFT JOIN C_AllocationHdr h ON (h.C_AllocationHdr_ID = l.C_AllocationHdr_ID)
	    WHERE l.C_Invoice_ID = p_C_Invoice_ID
		AND (l.C_InvoicePaySchedule_ID IS NULL OR l.C_InvoicePaySchedule_ID <= 0)
		AND h.DocStatus IN ('CO','CL');
		
	RETURN v_NoOfAllocationsToInvoiceOnly > 0;
END lbr_allocationstoinvoiceonly;
/

CREATE OR REPLACE FUNCTION invoiceOpen
(
	p_C_Invoice_ID	            IN	NUMBER,
    p_C_InvoicePaySchedule_ID   IN  NUMBER
)
RETURN NUMBER
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *************************************************************************
 * $Id: C_Invoice_Open.sql,v 1.1 2006/04/21 17:51:58 jjanke Exp $
 ***
 * Title:	Calculate Open Item Amount in Invoice Currency
 * Description:
 *	Add up total amount open for C_Invoice_ID if no split payment.
 *  Grand Total minus Sum of Allocations in Invoice Currency
 *
 *  For Split Payments:
 *  Allocate Payments starting from first schedule.

SELECT C_Invoice_Open (109) FROM DUAL;
SELECT C_Invoice_Open (109, null) FROM DUAL;
SELECT C_Invoice_Open (109, 11) FROM DUAL;
SELECT C_Invoice_Open (109, 102) FROM DUAL;
SELECT C_Invoice_Open (109, 103) FROM DUAL;
SELECT * FROM RV_OpenItem WHERE C_Invoice_ID=109;
SELECT C_InvoicePaySchedule_ID, DueAmt FROM C_InvoicePaySchedule WHERE C_Invoice_ID=109 ORDER BY DueDate;

 *  Cannot be used for IsPaid as mutating
 ************************************************************************/
AS
	v_Currency_ID		NUMBER(10);
	v_Precision			NUMBER := 0;
	v_Min				NUMBER := 0;
	v_TotalOpenAmt  	NUMBER := 0;
	v_PaidAmt  	        NUMBER := 0;
	v_Remaining	        NUMBER := 0;
    v_MultiplierAP      NUMBER := 0;
    v_MultiplierCM      NUMBER := 0;
    v_Temp              NUMBER := 0;
    v_HasAllocationsToInvoiceOnly  		BOOLEAN := false;
    --
	CURSOR	Cur_Alloc	IS
		SELECT	a.AD_Client_ID, a.AD_Org_ID,
            al.Amount, al.DiscountAmt, al.WriteOffAmt,
            a.C_Currency_ID, a.DateTrx
		FROM	C_AllocationLine al
          INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Invoice_ID = p_C_Invoice_ID
		  AND al.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID
          AND   a.IsActive='Y';
    --
	CURSOR	Cur_PaySchedule	IS
        SELECT  C_InvoicePaySchedule_ID, DueAmt
        FROM    C_InvoicePaySchedule
		WHERE	C_Invoice_ID = p_C_Invoice_ID
		  AND C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID
          AND   IsValid='Y'
        ORDER BY DueDate;

BEGIN
	--	Get Currency
	BEGIN
		SELECT	MAX(C_Currency_ID), SUM(GrandTotal), MAX(MultiplierAP), MAX(Multiplier)
		  INTO	v_Currency_ID, v_TotalOpenAmt, v_MultiplierAP, v_MultiplierCM
		FROM	C_Invoice_v		--	corrected for CM / Split Payment
		WHERE	C_Invoice_ID = p_C_Invoice_ID;
	EXCEPTION	--	Invoice in draft form
		WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('InvoiceOpen - ' || SQLERRM);
			RETURN NULL;
	END;
--  DBMS_OUTPUT.PUT_LINE('== C_Invoice_ID=' || p_C_Invoice_ID || ', Total=' || v_TotalOpenAmt || ', AP=' || v_MultiplierAP || ', CM=' || v_MultiplierCM);

	SELECT StdPrecision
	    INTO v_Precision
	    FROM C_Currency
	    WHERE C_Currency_ID = v_Currency_ID;

	SELECT POWER(1/10,v_Precision) INTO v_Min FROM DUAL;
	
	SELECT lbr_allocationstoinvoiceonly(p_C_Invoice_ID)
	    INTO v_HasAllocationsToInvoiceOnly;
	    
	IF (v_HasAllocationsToInvoiceOnly) THEN
		--  iDempiere
	    --	Calculate Allocated Amount
		FOR a IN Cur_Alloc LOOP
	        v_Temp := a.Amount + a.DisCountAmt + a.WriteOffAmt;
			v_PaidAmt := v_PaidAmt
	        -- Allocation
				+ currencyConvert(v_Temp * v_MultiplierAP,
					a.C_Currency_ID, v_Currency_ID, a.DateTrx, null, a.AD_Client_ID, a.AD_Org_ID);
	      DBMS_OUTPUT.PUT_LINE('   PaidAmt=' || v_PaidAmt || ', Allocation=' || v_Temp || ' * ' || v_MultiplierAP);
		END LOOP;
	
	    --  Do we have a Payment Schedule ?
	    IF (p_C_InvoicePaySchedule_ID > 0) THEN --   if not valid = lists invoice amount
	        v_Remaining := v_PaidAmt;
	        FOR s IN Cur_PaySchedule LOOP
	            IF (s.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID) THEN
	                v_TotalOpenAmt := (s.DueAmt*v_MultiplierCM) - v_Remaining;
	                IF (s.DueAmt - v_Remaining < 0) THEN
	                    v_TotalOpenAmt := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Sched Total=' || v_TotalOpenAmt || ', Due=' || s.DueAmt || ',Remaining=' || v_Remaining || ',CM=' || v_MultiplierCM);
	            ELSE -- calculate amount, which can be allocated to next schedule
	                v_Remaining := v_Remaining - s.DueAmt;
	                IF (v_Remaining < 0) THEN
	                    v_Remaining := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Remaining=' || v_Remaining);
	            END IF;
	        END LOOP;
	    ELSE
	        v_TotalOpenAmt := v_TotalOpenAmt - v_PaidAmt;
	    END IF;	    
	ELSE
		--  LBR
		--	Calculate Allocated Amount
		FOR a IN Cur_Alloc LOOP
	        v_Temp := a.Amount + a.DisCountAmt + a.WriteOffAmt;
			v_PaidAmt := v_PaidAmt
	        -- Allocation
				+ currencyConvert(v_Temp * v_MultiplierAP,
					a.C_Currency_ID, v_Currency_ID, a.DateTrx, null, a.AD_Client_ID, a.AD_Org_ID);
	      DBMS_OUTPUT.PUT_LINE('   PaidAmt=' || v_PaidAmt || ', Allocation=' || v_Temp || ' * ' || v_MultiplierAP);
		END LOOP;
	
	    --  Do we have a Payment Schedule ?
	    IF (p_C_InvoicePaySchedule_ID > 0) THEN --   if not valid = lists invoice amount
	        v_Remaining := v_PaidAmt;
	        FOR s IN Cur_PaySchedule LOOP
	            IF (s.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID) THEN
	                v_TotalOpenAmt := (s.DueAmt*v_MultiplierCM) - v_Remaining;
	                IF (s.DueAmt - v_Remaining < 0) THEN
	                    v_TotalOpenAmt := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Sched Total=' || v_TotalOpenAmt || ', Due=' || s.DueAmt || ',Remaining=' || v_Remaining || ',CM=' || v_MultiplierCM);
	            ELSE -- calculate amount, which can be allocated to next schedule
	                v_Remaining := v_Remaining - s.DueAmt;
	                IF (v_Remaining < 0) THEN
	                    v_Remaining := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Remaining=' || v_Remaining);
	            END IF;
	        END LOOP;
	    ELSE
	        v_TotalOpenAmt := v_TotalOpenAmt - v_PaidAmt;
	    END IF;
	END IF;
--  DBMS_OUTPUT.PUT_LINE('== Total=' || v_TotalOpenAmt);

	--	Ignore Rounding
	IF (v_TotalOpenAmt > -v_Min AND v_TotalOpenAmt < v_Min) THEN
		v_TotalOpenAmt := 0;
	END IF;

	--	Round to currency precision
	v_TotalOpenAmt := ROUND(COALESCE(v_TotalOpenAmt,0), v_Precision);
	
	RETURN v_TotalOpenAmt;
END invoiceOpen;
/

SELECT lbr_register_migration_script('201703160750.sql') FROM dual
;
