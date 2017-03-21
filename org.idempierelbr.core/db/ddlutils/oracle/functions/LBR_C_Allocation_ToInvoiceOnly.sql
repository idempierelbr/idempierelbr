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
