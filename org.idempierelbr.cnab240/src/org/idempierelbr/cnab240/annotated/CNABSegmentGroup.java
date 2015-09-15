package org.idempierelbr.cnab240.annotated;

import java.util.HashMap;
import java.util.Map;


public class CNABSegmentGroup {
	
	private Map<String,CNABSegmentBaseRecord> records;
	
	public CNABSegmentGroup() {
		records = new HashMap<String,CNABSegmentBaseRecord>();
	}
	
	public void addRecord(CNABSegmentBaseRecord record) {
		records.put(record.getTipoSegmento()+record.getCodigoOpcional(), record);
		record.setGroup(this);
	}
	
	public CNABSegmentBaseRecord getRecord(String recordType) {
		return records.get(recordType);
	}
	
}
