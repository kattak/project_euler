

def find_consec_prime(limit = 1000)
	#need prime number - what is it
	# and how many primes sum to it
	cas = 0

	primes = sieve(limit)

	i = limit - 1

	until primes[i] == true
		i -= 1
	end

	#check if consec_addends
	c = consec_addends(i)
	cas = c > cas ? c : cas

	return cas

end


def consec_addends(n, start = 2)

	return 0 if start >= n #cannot be written as sum of consec primes

	puts "start is #{start}"
	pp = find_next_prime(start)
	addends = [start, pp]
	total = addends.reduce(:+)

	until total >= n || n <= 0
		pp = find_next_prime(pp)
		addends << pp
		total = addends.reduce(:+)
#		puts 'total'
#		puts total
	end

	if total > n
		# puts 'total'
		# puts total
		# puts 'pp'
		# puts pp
		return consec_addends(n, find_next_prime(start))
	elsif total == n
		return addends.length #how many consec primes can be written as sum of
	end

end


def find_next_prime(n)
	primes = sieve(100) if n < 100
	primes = sieve(1000) if n > 100
	idx = n + 1

	until primes[idx] == true
		idx += 1
	end

	return idx
end






	def find_prev_prime(n)
	primes = sieve(n)

	idx = n-1

	until primes[idx] == true
		idx -= 1
	end

	return idx
end

#find two for now
def find_shortest_consec_addends(n, prev=n)

	p = find_prev_prime(prev)
	pp = find_prev_prime(p)
	addends = [p, pp]

	total = addends.reduce(:+)

	until total >= n || n <= 0
			pp = find_prev_prime(pp)
			addends << pp
			total = addends.reduce(:+)
	end

	if total > n
		return find_shortest_consec_addends(n, p)
	elsif total == n
		return addends
	end

end





def find_prev_prime(n)
	primes = sieve(n)

	idx = n-1

	until primes[idx] == true
		idx -= 1
	end

	return idx
end




def pandigital?(n)
	num = n.to_s
	check = (1..num.length).to_a

	return num.split("").map{|x|x.to_i}.sort == check
end

def pandigital_primes(n)
	primes = sieve(n)
	pd = 2143

	for i in n.downto(1)
		if pandigital?(i) && primes[i] == true
			pd = i
			puts "The largest pandigital prime up to #{n} is #{pd}"
			return pd
		end
	end

	puts "No pandigital prime was found from 1 to #{n}"
end

def sieve(n)
#	puts n
	beginning_time = Time.now
	#make array
	primeBools = Array.new(n+1){true}
	primeBools[0] = false
	primeBools[1] = false

#	primeBools[2..2+Math.sqrt(n)].each_with_index do |x, i|
	for i in 2..2+Math.sqrt(n)
		x = primeBools[i]
		if x == true
			idx = i*2
			while idx < (n+1)
				primeBools[idx] = false
				idx += i
			#	puts primeBools
			end
		end
	end
	  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)} seconds"
	return primeBools
end