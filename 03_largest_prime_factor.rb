# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def is_prime?(n)
	return false if n == 1
	f = 2

	until f == Math.sqrt(n).ceil
		return false if (n % f == 0)
		f += 1
	end

	return true
end

def largest_factor(n, limit = Math.sqrt(n).ceil)
	f = limit
	until (n % f == 0)
		f -= 1
	end
	return f
end

def largest_prime_factor(n)
	factor = largest_factor(n)

	until is_prime?(factor)
		limit = factor - 1
		factor = largest_factor(n, limit)
		puts factor
	end

	return factor
end
