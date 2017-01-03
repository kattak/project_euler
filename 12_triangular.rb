def sum(a,b)
  return ((a+b)/2.0) * ((b-a)+1)
end

def factors(n)
#  beginning_time = Time.now
  factors = []
  f = 1
  until f > n
    factors << f if n % f == 0
    f += 1
  end
  #	puts 'factors'
  #	puts factors
 #   end_time = Time.now
 # puts "Time elapsed #{(end_time - beginning_time)} seconds"
  return factors.length
end

def factors2(n)
 # beginning_time = Time.now
  factors = 0 
  f = 1
  until f > n
    factors += 1 if n % f == 0
    f += 1
  end
  # puts 'factors'
  # puts factors
#    end_time = Time.now
#  puts "Time elapsed #{(end_time - beginning_time)} seconds"
  return factors
end

#for tri_num(100)
# Time elapsed 2.234939 seconds without checking for primes
# 2.22685 with checking for primes 
# 2.215695 with max += depending on how much more to go 

def triangular_num(divisors)
  beginning_time = Time.now
  max = 1
  f_length = 1

  until f_length > divisors
    # if (divisors - f_length) > 20
    #   max += 10
    #   else 
       max += 1
    #   end 

   # max += 1
    #	puts 'max' + max.to_s
    tri = sum(1,max)
    #	puts 'tri' + tri.to_s
    if is_prime?(tri)
      f_length = 2 
    else 
    f_length = factors2(tri)
  end 
    #	puts 'f_length' + f_length.to_s
  end
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)} seconds"
  puts max 
  puts f_length 
  return tri
end

def is_prime?(n)
# beginning_time = Time.now
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
#         end_time = Time.now
#  puts "Time elapsed #{(end_time - beginning_time)} seconds"
  return true
end

def triangular_num2(divisors)
  beginning_time = Time.now
  max = 1
  f_length = 1

  until f_length > divisors
    max += 1
    # puts 'max' + max.to_s
    tri = sum(1,max)
    # puts 'tri' + tri.to_s
    f_length = factors(tri)
    # puts 'f_length' + f_length.to_s
  end
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)} seconds"
  puts max 
  puts f_length 
  return tri
end