/**************************************************
*         SEAB JACKSON
*
*   Project Euler Problem 2
*   By starting with 1 and 2, the first 10 terms will be:
*   1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
*   By considering the terms in the Fibonacci sequence whose
*   values do not exceed four million, find the sum of the 
*   even-valued terms
****************************************************/
 

// declare the function to calculate even fibonacci numbers
function sumFibEven(upto)
{ 

  // allow for the first fibonacci term in the sequence to be 1
  var previousNum = 0;
  var presentNum = 1;
  var sum = 0;
 

  // fiboncci terms do not exceed 4e6
  while (presentNum < upto)
  { 
    var tempNum = presentNum;
    presentNum = tempNum + previousNum;
    previousNum = tempNum;

    // check that terms are even
    if ( presentNum % 2 === 0) 
    {
      sum += presentNum;
    }
  }
   console.log(sum);
}

sumFibEven(4000000);