public with sharing class BSMSmokeCLI1 {
 /**
     * @description Inner class to hold the result of number processing.
     */
    public class Result {
        /** @description The count of digits in the processed number */
        public Integer digitCount;
        /** @description The result of subtracting the input from 1000 */
        public Integer subtractedValue;
        
        /**
         * @description Constructor for the Result class
         * @param digitCount The number of digits in the processed number
         * @param subtractedValue The result of 1000 minus the input number
         */
        public Result(Integer digitCount, Integer subtractedValue) {
            this.digitCount = digitCount;
            this.subtractedValue = subtractedValue;
        }
    }
    
    /**
     * @description Processes the given number to count its digits and subtract it from 1000
     * @param input The number to be processed
     * @return Result An instance of Result containing the digit count and subtracted value
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