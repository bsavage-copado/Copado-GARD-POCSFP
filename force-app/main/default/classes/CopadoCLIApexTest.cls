
@IsTest
private class CopadoCLIApexTest {
    
    @IsTest
    static void testProcessNumberPositive() {
        // Test with a positive number
        Integer input = 123;
        CopadoCLIApex.Result result = CopadoCLIApex.processNumber(input);
        
        System.assertEquals(3, result.digitCount, 'Digit count should be 3 for input 123');
        System.assertEquals(877, result.subtractedValue, 'Subtracted value should be 877 for input 123');
    }
    
    @IsTest
    static void testProcessNumberNegative() {
        // Test with a negative number
        Integer input = -456;
        CopadoCLIApex.Result result = CopadoCLIApex.processNumber(input);
        
        System.assertEquals(3, result.digitCount, 'Digit count should be 3 for input -456');
        System.assertEquals(1456, result.subtractedValue, 'Subtracted value should be 1456 for input -456');
    }
    
    @IsTest
    static void testProcessNumberZero() {
        // Test with zero
        Integer input = 0;
        CopadoCLIApex.Result result = CopadoCLIApex.processNumber(input);
        
        System.assertEquals(1, result.digitCount, 'Digit count should be 1 for input 0');
        System.assertEquals(1000, result.subtractedValue, 'Subtracted value should be 1000 for input 0');
    }
    
    @IsTest
    static void testProcessNumberLarge() {
        // Test with a large number
        Integer input = 1234567890;
        CopadoCLIApex.Result result = CopadoCLIApex.processNumber(input);
        
        System.assertEquals(10, result.digitCount, 'Digit count should be 10 for input 1234567890');
        System.assertEquals(-1234566890, result.subtractedValue, 'Subtracted value should be -1234566890 for input 1234567890');
    }
}