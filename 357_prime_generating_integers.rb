require 'prime'

def prime_int(n)
	divisors = (1..n).select{|d| n%d == 0}
	return divisors.all?{|x| (x+(n/x)).prime?}
end

def sum_prime_ints(limit)
	return (1..limit).select{|x| prime_int(x)}.reduce(:+)
end


puts sum_prime_ints(100000000)
