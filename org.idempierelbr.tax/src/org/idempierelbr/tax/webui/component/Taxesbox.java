package org.idempierelbr.tax.webui.component;

import org.adempiere.webui.component.EditorBox;

/**
 * Taxes Box
 * @author Murilo H. Torquato
 */
public class Taxesbox extends EditorBox
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 6822449202155516221L;

	public Taxesbox ()
    {
    	super();
    	txt.setReadonly(true);
    }

	public Taxesbox (String description)
    {
        super();
        setText(description);
    }
	
}
