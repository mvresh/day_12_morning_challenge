// Challenge 1
//Create a function that takes an list of positive and negative numbers.
// Return a list where the first element is the count of positive numbers and the second element is the sum of negative numbers.
// Examples
// countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
/// There are a total of 10 positive numbers.
/// The sum of all negative numbers equals -65.

countPosSumNeg(List<int>listOfNumbers){
  int positiveNumberCount = 0;
  int negativeNumberSum = 0;
  for(int i = 0;i<listOfNumbers.length;i++){
    if(listOfNumbers.isNotEmpty){
      if(listOfNumbers[i] > 0){
        positiveNumberCount++;
      }
      else if(listOfNumbers[i] < 0){
        negativeNumberSum = negativeNumberSum + listOfNumbers[i];
      }
    }
  }

  print('There are a total of $positiveNumberCount positive numbers');
  print('The sum of all negative numbers equals $negativeNumberSum');
}

// Challenge 2
// The digit distance between two numbers is the absolute value of the difference of each digit.
//  To illustrate:
//
// digitDistance(234, 489) ➞ 12
// Since |2 - 4| + |3 - 8| + |4 - 9| = 2 + 5 + 5
/// Create a function that returns the digit distance between two integers.
///
digitDistance(int firstNumber,int secondNumber){
  int totalDistanceCount = 0;
  for(int i=0;i<firstNumber.toString().length;i++){
    totalDistanceCount = totalDistanceCount + (int.parse(firstNumber.toString()[i]) - int.parse(secondNumber.toString()[i])).abs();
  }
  print('$totalDistanceCount');
}


// Challenge 3
// Write test cases to test previous functions
main() {
  countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]);
  digitDistance(234, 489);
}
