def combinations( strings1, strings2)
	strings1.collect { |string1|
		strings2.collect { |string2|
			string1 + string2
		}
	}.flatten
end

p combinations(["on","in"],["to","rope"])
# ["onto", "onrope", "into", "inrope"]