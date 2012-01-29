  # sum of primes up to 2M

  primes_upto(200000).sum()

# ==============
# helper methods
# ==============

String::reverse = ->

  # "abc" -> "cba"

  this.split('').reverse().join('')

Array::max = ->

  # [1,3,2] -> 3

  Math.max.apply Math, this

Array::min = ->

  # [1,3,2] -> 1

  Math.min.apply Math, this

Array::sum = ->

  # [1,3,5] -> 9

  a = 0

  for i in [0...this.length]
    a += this[i]

  a

@isPrime = (n) ->

  # is n prime?

  if n == 1
    return false
  if n < 4
    return true
  if n % 2 == 0
    return false
  if n < 9
    return true
  if n % 3 == 0
    return false

  r = Math.floor Math.sqrt n
  f = 5
  while f <= r
    if n % f == 0
      return false
    if n % (f+2) == 0
      return false
    f += 6
  return true

@primes_upto = (n) ->

  # all primes up to n

  (x for x in [1..n] when isPrime x)

@primes = (n) ->

  # n primes

  rank = 0
  i = 1
  ps = []

  while rank < n
    if isPrime ++i
      ps.push i
      rank++

  ps

@prime = (n) ->

  # nth prime

  rank = 1
  i = 2

  while rank < n
    if isPrime ++i
      rank++

  i

@factor = (n) ->

  # 60 -> [2,2,3,5]

  facs = []
  divisor = 2
  
  while n > 1
    while n % divisor == 0
      facs.push divisor
      n /= divisor
    divisor++

  facs