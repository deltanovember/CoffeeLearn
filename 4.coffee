pal = (n) -> n.toString() is n.toString().split('').reverse().join('')
max = 0
nums = [0..999]
for num1 of nums
  for num2 of nums when num1 * num2 > max and pal(num1 * num2)
    max = num1 * num2
console.log(max)
