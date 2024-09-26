public class CopadoCLIApex {
    
    public class Result {
        public Integer digitCount;
        public Integer subtractedValue;
        
        public Result(Integer digitCount, Integer subtractedValue) {
            this.digitCount = digitCount;
            this.subtractedValue = subtractedValue;
        }
    }
    
    public static Result processNumber(Integer input) {
        // Ensure input is positive
        Integer positiveInput = Math.abs(input);
        
        // Calculate the number of digits
        Integer digitCount = String.valueOf(positiveInput).length();
        
        // Calculate the result of 1000 minus the input
        Integer subtractedValue = 1000 - input;
        
        return new Result(digitCount, subtractedValue);
    }
}