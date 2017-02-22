// 3 and 5 are magic numbers.
//
// Define a function fizzBuzz(array) that takes an array returns a new
// array of every number in the array that is divisible by either 3 or 5,
// but not both.

function fizzBuzz(array) {
  var result = [];
  for (var i = 0; i < array.length; i++) {
    if ((array[i] % 3 === 0) & (array[i] % 5 === 0)) {
      continue;
    }
    if ((array[i] % 3 === 0) || (array[i] % 5 === 0)) {
      result.push(array[i]);
    }
  }
  console.log(result);
}
