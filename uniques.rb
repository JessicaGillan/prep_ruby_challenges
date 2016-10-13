def uniques(array)
	uniq_items = []
	until array.empty?
		first_element = array.slice!(0)
		array.delete_if { |el| el == first_element }
		uniq_items << first_element
	end
	uniq_items 
end

p uniques([1,5,"frog", 2,1,3,"frog"])
# [1, 5, "frog", 2, 3]