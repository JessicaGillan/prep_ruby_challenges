def counting_game(num_players, num_count_to)
	clockwise = true
	person = 0

	num_count_to.times do |count|
		puts "Player " + (person+1).to_s + " says " + (count+1).to_s
		clockwise = !clockwise if (count+1)%7 == 0
		(count+1)%11 == 0 ? move = 2 : move = 1
		clockwise ? person = (person+move)%num_players : person = (person-move)%num_players
	end
end

counting_game(10, 100)