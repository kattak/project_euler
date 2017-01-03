def sum_squares(a,b)
	return (a..b).map{|x| (x ** x)}.reduce(:+)
end 
