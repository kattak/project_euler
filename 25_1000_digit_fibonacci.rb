def digits_length(n)
	return n.to_s.length
end

def fib_with_digits(digits)
	f1 = 1
	f2 = 1
	fibs = [f1, f2]

	until digits_length(fibs.last) == digits
		fibs << f1+f2
		f1 = fibs[-2]
		f2 = fibs [-1]
	end

	return fibs.length

end
