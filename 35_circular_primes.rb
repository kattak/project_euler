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

def circular(n)
	orig = n.to_s
	len = orig.length - 1
	strs = []

	for a in 0..len
	str = ""
	for b in 0+a..len+a
		str += orig[b%(len+1)]
	end
	strs << str.to_i
end
	return strs
end


def circular_primes(n)
	primes = sieve(n)
	num_cp = 0

	primes.each_with_index do |x, i|
		if x == true
			cps = circular(i)
			num_cp += 1 if cps.all?{|n| primes[n] == true}
		end
	end

	return num_cp
end

