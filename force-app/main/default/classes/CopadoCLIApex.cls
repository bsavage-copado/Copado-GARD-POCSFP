/**
 * @description This class provides functionality to process an integer input,
 *              returning the count of digits and the result of subtracting
 *              the input from 1000.
 * @author Your Name
 * @date 2023-09-25
 */
public class CopadoCLIApex {
    
    /**
     * @description Inner class to hold the result of number processing
     */
    public class Result {
        /** @description The count of digits in the input number */
        public Integer digitCount;
        
        /** @description The result of 1000 minus the input number */
        public Integer subtractedValue;
        
        /**
         * @description Constructor for the Result class
         * @param digitCount The count of digits in the input number
         * @param subtractedValue The result of 1000 minus the input number
         */
        public Result(Integer digitCount, Integer subtractedValue) {
            this.digitCount = digitCount;
            this.subtractedValue = subtractedValue;
        }
    }
    
    /**
     * @description Processes the given integer input and returns a Result object
     * @param input The integer to be processed
     * @return Result An object containing the digit count and subtracted value
     * @example
     * Integer input = 123;
     * CopadoCLIApex.Result result = CopadoCLIApex.processNumber(input);
     * System.debug('Digit count: ' + result.digitCount);
     * System.debug('1000 minus input: ' + result.subtractedValue);
     */
    public static Result processNumber(Integer input) {
        // Ensure input is positive for digit counting
        Integer positiveInput = Math.abs(input);
        
        // Calculate the number of digits
        Integer digitCount = String.valueOf(positiveInput).length();
        
        // Calculate the result of 1000 minus the input
        Integer subtractedValue = 1000 - input;
        
        return new Result(digitCount, subtractedValue);
    }
}