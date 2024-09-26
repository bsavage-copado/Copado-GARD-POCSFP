@isTest
private class BSMSmokeCLI1Test {

    @IsTest
    static void testPositiveNumber() {
        // Test with a positive number
        Integer input = 123;
        BSMSmokeCLI1.Result result = BSMSmokeCLI1.processNumber(input);
        
        System.assertEquals(3, result.digitCount, 'Digit count should be 3 for input 123');
        System.assertEquals(877, result.subtractedValue, '1000 minus 123 should be 877');
    }
    
    @IsTest
    static void testNegativeNumber() {
        // Test with a negative number
        Integer input = -456;
        BSMSmokeCLI1.Result result = BSMSmokeCLI1.processNumber(input);
        
        System.assertEquals(3, result.digitCount, 'Digit count should be 3 for input -456');
        System.assertEquals(1456, result.subtractedValue, '1000 minus -456 should be 1456');
    }
    
    @IsTest
    static void testZero() {
        // Test with zero
        Integer input = 0;
        BSMSmokeCLI1.Result result = BSMSmokeCLI1.processNumber(input);
        
        System.assertEquals(1, result.digitCount, 'Digit count should be 1 for input 0');
        System.assertEquals(1000, result.subtractedValue, '1000 minus 0 should be 1000');
    }
    
    @IsTest
    static void testLargeNumber() {
        // Test with a large number
        Integer input = 1234567890;
        BSMSmokeCLI1.Result result = BSMSmokeCLI1.processNumber(input);
        
        System.assertEquals(10, result.digitCount, 'Digit count should be 10 for input 1234567890');
        System.assertEquals(-1234566890, result.subtractedValue, '1000 minus 1234567890 should be -1234566890');
    }
    
    @IsTest
    static void testNumberEqualTo1000() {
        // Test with 1000
        Integer input = 1000;
        BSMSmokeCLI1.Result result = BSMSmokeCLI1.processNumber(input);
        
        System.assertEquals(4, result.digitCount, 'Digit count should be 4 for input 1000');
        System.assertEquals(0, result.subtractedValue, '1000 minus 1000 should be 0');
    }
}