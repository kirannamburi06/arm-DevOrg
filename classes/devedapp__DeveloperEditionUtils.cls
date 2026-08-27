/**
 * ARM integration-test fixture. Stands in for an Apex class that belongs to the installed 'devedapp'
 * managed package, which the destination org reports with manageableState=installed.
 *
 * This body is never compiled by Salesforce: the "Ignore Installed (Managed) components" deploy option
 * removes this component from the package before the deploy is initiated, which is the behaviour under
 * test. It is kept syntactically valid so that if that removal ever regresses, the deploy fails with a
 * namespace/ownership error naming this component rather than a parse error that hides the real cause.
 */
public with sharing class DeveloperEditionUtils {
    public static void printMessage() {
        System.debug('ARM IT fixture for the installed-managed-components deploy option.');
    }
}
