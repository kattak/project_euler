def sum_digits(n)
	ary = n.to_s.split("").map{|x|x.to_i}
	return ary.reduce(:+)
end

def multiply
	products = []

	for a in 0..99
		for b in 0..99
			products << a**b
		end
	end

	return products.map{|x| sum_digits(x)}.max
end
	
