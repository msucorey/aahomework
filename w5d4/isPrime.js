
function isPrime(n) {
  for (var i = 2; i < n; i++) {
    if (n % i === 0) {
      console.log(false);
      return false;
    }
  }
  console.log(true);
  return true;
}

isPrime(2);
// true

isPrime(10);
// false

isPrime(15485863);
// true

isPrime(3548563);
// false

function sumOfNPrimes(n) {
  var sum = 0;
  var primes = 0;
  var last_prime = 2;
  if (n === 0) {
    console.log(0);
  }
  while (primes < n) {
    sum = sum + last_prime;
    primes ++;
    while (true) {
      last_prime++;
      if (isPrime(last_prime)) {
        break;
      }
    }
  }
  console.log(sum);
}

sumOfNPrimes(0);
// 0

sumOfNPrimes(1);
// 2

sumOfNPrimes(4);
// 17
