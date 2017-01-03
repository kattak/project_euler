def pythag(a,b,c)
a**2 + b**2 == c**2
end


def multiple(a,b)
	return b % a == 0
end

def max_solution
	multiples = [12, 56, 90, 132, 154, 182, 176, 208, 240, 234, 306, 260, 340, 380, 330, 374, 418, 462, 408, 456, 552, 442, 494, 546, 598, 650, 476, 532, 644, 700, 756, 570, 690, 810, 870, 608, 672, 736, 800, 864, 928, 992, 714, 782, 850, 918, 986, 1054, 1122, 828, 900, 1044, 1116, 1188, 1260, 874, 950, 1026, 1102, 1178, 1254, 1330, 1406, 920, 1080, 1160, 1240, 1320, 1400, 1480, 1560]
	nums = []

	for p in 1..1000
		nums << multiples.count{|m| p % m == 0}
	end

	puts nums.max
	puts nums.index(nums.max)
	return nums
end

def sum(a,b,c)
	return [a,b,c].reduce(:+)
end

# def coprime(a,b)


def euclids_formula(limit)
	pythag_sums = []

	for m in 1..limit
		for n in 1..limit
			if m > n && (m-n)%2 != 0
				a = m**2 - n**2
				b = 2*m*n
				c = m**2 + n**2
			#	puts a,b,c
			#	pythag_sums << a**2 + b**2 + c**2
				total = a + b + c
				pythag_sums << total if pythag_sums.none?{|x| total % n == 0}
			end
		end
	end

	return pythag_sums
end 
