def factorial(end_number)
	return 0 if end_number == 0
	result = 1
	(1..end_number).each do |num|
		result *= num
	end
	result
end

puts factorial(5)
# 120