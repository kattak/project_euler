#sieve

require 'byebug'

def sieve(n)
	beginning_time = Time.now
	#make array
	primeBools = Array.new(n+1){true}
	primeBools[0] = false
	primeBools[1] = false

	for i in 2..2+Math.sqrt(n)
		x = primeBools[i]
		if x == true
			idx = i*2
			while idx < (n+1)
				primeBools[idx] = false
				idx += i
			end
		end
	end
	  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)} seconds"
	return primeBools
end

def is_prime?(n)
#	beginning_time = Time.now
	return false if n == 1
	return true if n == 2
	f = 2

	until f == Math.sqrt(n).ceil + 1
		if (n % f == 0)
			  end_time = Time.now
#  puts "Time elapsed #{(end_time - beginning_time)} seconds"
  				return false
  			end
		f += 1
	end
#				  end_time = Time.now
#  puts "Time elapsed #{(end_time - beginning_time)} seconds"
	return true
end




#10: Summation of Primes

def sum_prime(n)
	i = 0
	p = 1
	sum = 0
#	primes = []

	until p == n
		p += 1
		if is_prime?(p)
#			primes << p
			sum += p
			i += 1
		end
	end

	return sum
	#return primes.reduce(:+)
end

def sum_prime2(start, limit)
	p =  start
	sum = 0

	until p == limit
		p += 1
		if is_prime?(p)
			sum += p
		end
	end

	return sum
end



def nth_prime(n)
	i = 0
	p = 1

	until i == n
		p += 1
		if is_prime?(p)
		#	puts p
			i += 1
		end
	end

	return p
end




