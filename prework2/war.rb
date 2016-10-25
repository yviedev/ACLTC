# create deck of 52 cards
deck = array = Array.new(52) { Array.new(2, "empty") }
	   
i = 0 
j = 0 

	# loop to assign values to 52 cards
	13.times do
		deck[i][0] = "club" # i = 0
		deck[i][1] = i + 1
		i += 1
	end
	
	13.times do
		deck[i][0] = "heart" # i = 13
		deck[i][1] = i - 12
		i += 1
	end
	
	13.times do
		deck[i][0] = "spade" # i = 26
		deck[i][1] = i - 25
		i += 1
	end
	
	13.times do
		deck[i][0] = "diamond" # i = 39
		deck[i][1] = i - 38
		i += 1
	end

# assign 26 random cards to each player
deck.shuffle!
#p deck
player_one_deck = []
player_two_deck = []
player_one_deck << deck.slice!(1..13)
puts
puts "Player One's Deck: #{player_one_deck.flatten!(1)}"
player_two_deck << deck.slice!(1..13)
puts
puts "Player Two's Deck: #{player_two_deck.flatten!(1)}"

#puts "Player one has the cards: #{player_one.join(", ")}"
puts
#puts "Player two has the cards: #{player_two.join(", ")}"

#create loop to show card for each player one by one
index = 0

while index == player_one_deck.length || index == player_two_deck.length do

	# can't be random. needs to go in order. add an each loop here.
	
	player_one = player_one_deck[index]
	player_two = player_two_deck[index]
	puts "Player One has played: #{player_one}"
	puts "Player Two has played: #{player_two}"
	
		#if the players pick a random card and they equal each other, pick another card.
		while player_one[1] == player_two[1]
			puts "This means WAR!"
			player_one = player_one_deck.sample
			player_two = player_two_deck.sample
		end
	index += 1
=begin
	random_deck.each do |card|
		# create hash of deck to keep track of cards
		deck_hash = Hash.new(0)
		
		deck.each do |key|
			deck_hash[key] += 1
		end
=end
end