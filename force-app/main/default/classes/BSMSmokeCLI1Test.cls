@isTest
    static void testProcessNumber() {
        User adminUser = createAdminUser();
        System.runAs(adminUser){
            // Test positive input
            Result positiveResult = BSMSmokeCLI1.processNumber(42);
            System.assertEquals(3, positiveResult.digitCount);
            System.assertEquals(39, positiveResult.subtractedValue);
    
            // Test negative input (ensure it returns a positive result)
            Result negativeResult = BSMSmokeCLI1.processNumber(-42);
            System.assertEquals(3, negativeResult.digitCount);
            System.assertEquals(45, negativeResult.subtractedValue);
        }
    }

