

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
