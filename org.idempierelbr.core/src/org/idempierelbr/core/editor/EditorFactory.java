package org.idempierelbr.core.editor;

import org.adempiere.webui.editor.IEditorConfiguration;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.factory.IEditorFactory;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.DisplayType;
import org.idempierelbr.core.webui.editor.WLocationEditorLBR;

public class EditorFactory implements IEditorFactory {

	@Override
	public WEditor getEditor(GridTab gridTab, GridField gridField,
			boolean tableEditor) {
		return getEditor(gridTab, gridField, tableEditor, null);
	}

	@Override
	public WEditor getEditor(GridTab gridTab, GridField gridField, boolean tableEditor,
			IEditorConfiguration editorConfiguration) {
		if (gridField == null) {
            return null;
        }

        WEditor editor = null;
        int displayType = gridField.getDisplayType();

        /** Not a Field */
        if (gridField.isHeading()) {
            return null;
        }
        
		if (displayType == DisplayType.Location) {
            editor = new WLocationEditorLBR(gridField);
        }

        return editor;
	}

}
