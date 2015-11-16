
// Add the finished solution here when you receive it.

var sum = function(integers_array){
  return integers_array.reduce((a, b) => a + b);
};

var mean = function(integers_array){
  return sum(integers_array) / integers_array.length;
};

var median = function(numbersArray) {
  var sortedNumbers = numbersArray.sort();  // Numbers need to be in order to find the median.
  var middleIndexOfNumbers = sortedNumbers.length / 2;
  if (sortedNumbers.length % 2 === 0) {
    return (sortedNumbers[(middleIndexOfNumbers) - 1] + sortedNumbers[middleIndexOfNumbers]) / 2.0;
    // I put "- 1" because the index of an array starts at zero.
  } else {
    return sortedNumbers[Math.floor(sortedNumbers.length / 2)];
    // I put "- 1" because the index of an array starts at zero.
  }
};



// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)