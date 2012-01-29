console.log ((n) -> (((x) -> x*x)([0..n].reduce (a, b) -> a + b)))(100) - ((n) -> ([0..n].map (i) -> i * i).reduce (a, b) -> a + b)(100)
