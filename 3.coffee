primes = []
primes.push i for i in [2..10000] when not (j for j in primes when i % j == 0).length
console.log((p for p in primes when 600851475143 % p is 0)[-1..-1][0])