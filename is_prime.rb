$primes = [2]

def is_prime?(number)
	return false if number < 1
	return true if $primes.include?(number)
	return false if $primes[-1] > number

	test_number = $primes[-1]
	begin
		test_number += 1
		next if $primes.any? { |prime| test_number%prime == 0 }
		
		$primes << test_number 	
		return true if test_number == number	
	end while test_number < number 

	return false
end

p is_prime? 23 # true
p $primes # [2, 3, 5, 7, 11, 13, 17, 19, 23]
