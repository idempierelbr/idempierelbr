package org.idempierelbr.mdfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.assertj.core.api.Assertions.catchThrowable;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.CALLS_REAL_METHODS;
import static org.mockito.Mockito.doAnswer;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.mockito.Mockito.withSettings;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

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

	/**
	 * Hostile input (see {@link HostileInput}): stores exactly its twelve
	 * ASCII digits, or refuses with one of the two messages and stores nothing.
	 */
	@Test
	void fuzz_storesOnlyTwelveAsciiDigits() {
		Random random = new Random(HostileInput.SEED);
		List<String> violations = new ArrayList<>();

		for (int i = 0; i < HostileInput.CASES; i++) {
			String typed = HostileInput.number(random);
			String digits = HostileInput.asciiDigits(typed);
			String label = "#" + i + " [" + HostileInput.escape(typed) + "]";

			Map<String, Object> stored = new HashMap<>();
			PO target = mock(PO.class);
			doAnswer(invocation -> {
				stored.put(invocation.getArgument(0), invocation.getArgument(1));
				return null;
			}).when(target).set_ValueOfColumn(anyString(), any());

			Throwable failure = catchThrowable(() -> apply(typed, target));

			String expected = digits.isEmpty() ? "Informe numero do ciot"
					: digits.length() != 12 ? "Numero do CIOT: informe 12 digitos" : null;
			if (expected == null) {
				if (failure != null)
					violations.add(label + ": refused: " + failure);
				else if (!digits.equals(stored.get("LBR_CIOT")))
					violations.add(label + ": stored [" + stored.get("LBR_CIOT") + "]");
			} else {
				if (failure == null || !expected.equals(failure.getMessage()))
					violations.add(label + ": expected \"" + expected + "\", got " + failure);
				if (stored.containsKey("LBR_CIOT"))
					violations.add(label + ": refused but stored [" + stored.get("LBR_CIOT") + "]");
			}
		}

		assertThat(violations).isEmpty();
	}

	private void apply(String typed) throws Throwable {
		apply(typed, po);
	}

	private static void apply(String typed, PO target) throws Throwable {
		Textbox input = mock(Textbox.class);
		when(input.getValue()).thenReturn(typed);

		WMDFeChildDialog dialog = mock(WMDFeChildDialog.class, withSettings().defaultAnswer(CALLS_REAL_METHODS));
		Field poField = WMDFeChildDialog.class.getDeclaredField("po");
		poField.setAccessible(true);
		poField.set(dialog, target);

		Method aplicar = WMDFeChildDialog.class.getDeclaredMethod("aplicar", MDFeCampo.class, Object.class);
		aplicar.setAccessible(true);

		try {
			aplicar.invoke(dialog, CIOT_FIELD, input);
		} catch (InvocationTargetException e) {
			throw e.getCause();
		}
	}
}
