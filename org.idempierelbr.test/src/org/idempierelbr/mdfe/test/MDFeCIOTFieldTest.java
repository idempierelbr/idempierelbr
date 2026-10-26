package org.idempierelbr.mdfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.CALLS_REAL_METHODS;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.mockito.Mockito.withSettings;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.Textbox;
import org.compiere.model.PO;
import org.idempierelbr.mdfe.apps.form.MDFeCampo;
import org.idempierelbr.mdfe.apps.form.WMDFeChildDialog;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.NullAndEmptySource;
import org.junit.jupiter.params.provider.ValueSource;

/**
 * The CIOT field of the MDF-e form: required, exactly twelve digits.
 * <p>
 * No DB and no ZK desktop: runs the real {@code WMDFeChildDialog.aplicar}
 * (private, by reflection) on a dialog created without its constructor. The
 * field is declared as {@code WMDFeEmissao} declares it; the form builds it
 * inside its constructor, out of a test's reach.
 */
class MDFeCIOTFieldTest {

	private static final MDFeCampo CIOT_FIELD = MDFeCampo.digitosReq("LBR_CIOT", "Numero do CIOT", 12);

	private final PO po = mock(PO.class);

	@ParameterizedTest(name = "[{0}]")
	@ValueSource(strings = { "123456789012", "1234.5678.9012", " 1234 5678 9012 " })
	void storesTwelveDigits(String typed) throws Throwable {
		apply(typed);

		verify(po).set_ValueOfColumn("LBR_CIOT", "123456789012");
	}

	@ParameterizedTest(name = "[{0}]")
	@ValueSource(strings = { "12345678901", "1234567890123" })
	void rejectsAnyOtherLength(String typed) {
		assertThatThrownBy(() -> apply(typed)).isInstanceOf(AdempiereException.class)
				.hasMessage("Numero do CIOT: informe 12 digitos");
		verify(po, never()).set_ValueOfColumn(eq("LBR_CIOT"), any());
	}

	/** Only ASCII digits survive: full-width digits never reach the XML. */
	@ParameterizedTest(name = "[{0}]")
	@NullAndEmptySource
	@ValueSource(strings = { "   ", "ABC", "１２３４５６７８９０１２" })
	void requiresTheNumber(String typed) {
		assertThatThrownBy(() -> apply(typed)).isInstanceOf(AdempiereException.class)
				.hasMessage("Informe numero do ciot");
	}

	@Test
	void fieldIsRequiredWithTwelveDigits() {
		assertThat(CIOT_FIELD.obrigatorio).isTrue();
		assertThat(CIOT_FIELD.tamanhoExato).isEqualTo(12);
	}

	private void apply(String typed) throws Throwable {
		Textbox input = mock(Textbox.class);
		when(input.getValue()).thenReturn(typed);

		WMDFeChildDialog dialog = mock(WMDFeChildDialog.class, withSettings().defaultAnswer(CALLS_REAL_METHODS));
		Field poField = WMDFeChildDialog.class.getDeclaredField("po");
		poField.setAccessible(true);
		poField.set(dialog, po);

		Method aplicar = WMDFeChildDialog.class.getDeclaredMethod("aplicar", MDFeCampo.class, Object.class);
		aplicar.setAccessible(true);

		try {
			aplicar.invoke(dialog, CIOT_FIELD, input);
		} catch (InvocationTargetException e) {
			throw e.getCause();
		}
	}
}
