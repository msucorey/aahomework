function addArr (array) {
  let sum = 0;
  array.forEach(el => {
    sum += el;
  });
  return sum;
}


console.log(addArr([1,2,3]));
