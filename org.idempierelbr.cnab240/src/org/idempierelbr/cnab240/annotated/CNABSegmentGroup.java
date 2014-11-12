package org.idempierelbr.cnab240.annotated;

import java.util.ArrayList;


public class CNABSegmentGroup {
	private CNABSegmentTRecord segT;
	private CNABSegmentURecord segU;
	private ArrayList<CNABCobrancaSegmentBaseRecord> otherRecords = null;
	
	
	public CNABSegmentGroup() {
		otherRecords = new ArrayList<CNABCobrancaSegmentBaseRecord>();
	}
	
	public CNABSegmentTRecord getSegT() {
		return segT;
	}
	public void setSegT(CNABSegmentTRecord segT) {
		this.segT = segT;
	}
	public CNABSegmentURecord getSegU() {
		return segU;
	}
	public void setSegU(CNABSegmentURecord segU) {
		this.segU = segU;
	}
	
	public void addRecord( CNABCobrancaSegmentBaseRecord record ) {
		otherRecords.add(record);
	}
	
}
