fib = (n) -> switch
  when 1 <= n <= 2 then n else fib(n - 1) + fib(n - 2)
console.log((f for f in ([1..35].map (i) -> fib(i)) when (f % 2 is 0 and f < 4000000)).reduce (t, s) -> t + s)