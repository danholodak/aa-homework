function madLib(verb, adjective, noun) {

    return "We shall " + verb.toUpperCase() + " the " + adjective.toUpperCase() + " " + noun.toUpperCase();
}


madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."


function isSubstring(string, substring) {
   return string.includes(substring)
}


isSubstring("time to program", "time")
true

isSubstring("Jump for joy", "joys")
false

function fizzBuzz(array) {
 let newarray = []
 array.forEach(function(el) {
    if((el % 5 === 0) ^(el % 3 === 0)){
        newarray.push(el);
    };
  });
return newarray
}




function isPrime(num) {
    for (let i = 2; i < num; i++) {
        if (num % i === 0){
            return false;
        }
      }
      return true;
}

isPrime(2)
true

 isPrime(10)
false

 isPrime(15485863)
true

 isPrime(3548563)
false

function firstNPrimes(n){
    let primes = [];
    let i = 2;
    while (primes.length < n){
        if (isPrime(i)){
            primes.push(i);
        }
        i++
    }
    return primes;
}

function sumOfNPrimes(n) {
    let primes = firstNPrimes(n)
    let total = 0
    for (let i = 0; i < n; i++) {
        total += primes[i]
    }
    return total
}

sumOfNPrimes(0)
0

sumOfNPrimes(1)
2

sumOfNPrimes(4)
17