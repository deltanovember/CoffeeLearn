for i in [1..1000]
	for j in [i..(1000-i)]
		k = 1000 - i - j
		if (i*i + j*j is k*k)
			console.log i*j*k