def overlap(rect1, rect2)
	rect1_unincl_yrange = (rect1[0][0]+1...rect1[1][0])
	rect1_unincl_xrange = (rect1[0][1]+1...rect1[1][1])
	if ( rect1_unincl_xrange.include? rect2[0][0] ) || ( rect1_unincl_xrange.include? rect2[1][0] )
		if ( rect1_unincl_yrange.include? rect2[0][1] ) || ( rect1_unincl_yrange.include? rect2[1][1] ) 
			return true
		end
	end
	return false
end

puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) # true
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) # false