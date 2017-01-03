# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def nth_prime(n)
	i = 0
	p = 1

	until i == n
		p += 1
		if is_prime?(p)
			i += 1
		#	puts "i"
	#		puts i
		end

	#	puts "p"
	#	puts p
	end

	#puts i-1
	return p
end

def is_prime?(n)
#	beginning_time = Time.now
	return false if n == 1 
	return true if n == 2 
	f = 2

	until f == Math.sqrt(n).ceil+1
		if (n % f == 0)
			  end_time = Time.now
  #puts "Time elapsed #{(end_time - beginning_time)} seconds"
  				return false 
  			end 
		f += 1
	end
#				  end_time = Time.now
  #puts "Time elapsed #{(end_time - beginning_time)} seconds"
	return true
end

# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_diff(n)
	square_sum = (sum(1,n))**2
	puts square_sum

	squares = (1..n).to_a.map{|x|x**2}
	sum_squares = squares.reduce(:+)
	puts sum_squares

	return square_sum - sum_squares
end

def sum(a,b)
	return ((a+b)/2.0)*((b-a)+1)
end




# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple(n)
	x = n

	factors = (1..n).to_a

	until factors.all?{|f| x % f == 0}
		x += n
	end

	return x

end





def largest_palindrome_product(digits)

high = ("9" * digits).to_i
low = 9 * 10**(digits - 1)

for a in high.downto(low)
	for b in high.downto(low)
		return a * b if is_palindrome?(a*b)
	end
end
end


	# n = ("9" * digits).to_i

	# a = n
	# b = n

	# until is_palindrome?(a*b)
	# 	puts a, b
	# 	a -= 1 if b % 10 == 0
	# 	b -= 1
	# end

	# puts a, b
	# return a*b

#end

#can check by dividing by 999
# if longer than 3 digits, not possible




def is_palindrome?(n)

	ary = n.to_s.split("").map{|x|x.to_i} #doesn't matter map or map! bc assigning result
	return ary == ary.reverse
	# #even
	# if ary.length % 2 == 0

	# end

	# #odd
	# if ary.length % 2 != 0

	# end

end


	
