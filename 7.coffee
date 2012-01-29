primes = []
primes.push i for i in [2..150000] when not (j for j in primes when i % j == 0).length
console.log primes[10000]
