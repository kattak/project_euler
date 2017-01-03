def trunctable(n)
	num = n.to_s
	truncs = []

	for i in 0..num.length
		t = num[i..-1]
		truncs << t.to_i
		t = num[0..i]
		truncs << t.to_i
	end

	return truncs.uniq.delete_if{|x| x == 0}
end

def trunctable_primes(n)
	primes = sieve(n)
	tps = []

	primes.each_with_index do |x, i|
		if x == true && i > 9
			tp = trunctable(i)
			tps << i if tp.all?{|n| primes[n] == true}
		end
	end

	if tps.length >= 11
		puts "Found 11 trunctable primes"
		puts "The sum of the 11 first trunctable primes are: "
		puts tps.reduce(:+)
		return tps
	else
		puts tps.length
		return trunctable_primes(n+10000)
	end
end

def sieve(n)
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