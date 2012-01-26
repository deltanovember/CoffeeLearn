fib = (n) -> switch
  when 1 <= n <= 2 then n
  else fib(n - 1) + fib(n - 2)
console.log(fib 5)

console.log (num for num in [0..999] when (num % 5 is 0 || num % 3 is 0)).reduce (t, s) -> t + s