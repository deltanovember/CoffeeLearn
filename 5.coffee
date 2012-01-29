div = (n) -> (([1..20].map (i) -> (n % i)).reduce (a, b) -> a + b) is 0
count = 0
while (count += 20)
  if (div count)
    console.log(count)
    break

