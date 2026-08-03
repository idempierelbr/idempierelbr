package org.idempierelbr.test;

import org.idempiere.test.AbstractTestCase;

/**
 * Base class for iDempiereLBR integration tests.
 * <p>
 * Inherits full iDempiere container startup, Garden World context, and per-test
 * transaction rollback from {@link AbstractTestCase}. Override
 * {@code newLoginDetails(TestInfo)} when a test needs an organisation configured
 * with LBR fiscal data (digital certificates, NF-e web service URLs, etc.).
 * <p>
 * Tests that do not require a database — pure logic, TLS enforcement,
 * and HTTP transport with Mockito — should NOT extend this class.
 */
public abstract class AbstractLBRTestCase extends AbstractTestCase {
}
