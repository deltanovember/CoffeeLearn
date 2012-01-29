filter = (raw) ->
	count = 0
	while (count * count <= raw[raw.length - 1])
		raw = (p for p in raw when (p % raw[count] != 0 or p <= raw[count])) 
		count++
	raw
primes = filter([2..2000000])
console.log primes.reduce (a, b) -> a + b