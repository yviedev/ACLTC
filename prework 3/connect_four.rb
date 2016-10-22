=begin
Exercise: Bonus Exercise #1
Your job is to create Connect Four in Ruby (like the bonus in Phase 2), but this time using classes and object oriented principles to structure your code.

Ask yourself the following questions before getting started - what are the different classes you would make here? What are the instance variables? What are the instance methods?
=end

# draw a 6x6 matrix board
class Connect_Four

    $board = Array.new(4) { Array.new(4, "-") } #why do I have to make this a global variable in order to work?
    #p $board
    def board
    	$board.each do |row|
        	puts row.join
        end
    end
    
    def welcome
        puts "Welcome to Connect Four!"
        puts "May the best player win!"
        board
    end
    
    #set # of players
    $player = ["1", "2"]
    
    $current_player_index = 0
    $player[$current_player_index]
    	
    def change_player #write a formula to rotate through players
        $current_player_index = ($current_player_index + 1) % 2
    end
    
    def get_player_input
    	#ask player to choose column 0-2
    	puts "Player #{$player[$current_player_index]}, please choose a column between 0-3:"
    	    @spot = gets.chomp.to_i #store input in variable
    		#if player chooses outside of 0-2 give them an error message and ask them to choose again.
    		if @spot < 0 || @spot > 3
    		    puts "Your selection is outside of the acceptable range."
    		    get_player_input
    		end
    end
    
    def play_game
        loop do
            game_over
        	get_player_input
        	if $board[0][@spot] != "-"
                puts "That column is full. Please pick another column."
                get_player_input
        	end
        	3.downto(0) do |x|
            	if $board[x][@spot] == "-"
            	    $board[x][@spot] = $player[$current_player_index]
            	    board
            	    change_player
            	    break
            	end
            end
        end
    end
    
    def game_over
        # horizontal win
        $board.each do |row|
    		if row.join == "1111" || row.join == "2222"
    			p "CONNECT FOUR! GAME OVER. Player #{$player[$current_player_index]} loses!"
    			#@game = false
    			exit 
    		end
    	end
    	# vertical win
    	$board.transpose.each do |row|
    		if row.join == "1111" || row.join == "2222"
    			p "CONNECT FOUR! GAME OVER. Player #{$player[$current_player_index]} loses!"
    			#@game = false
    			exit 
    		end
    	end
    	# if top row is full, game over.
        if $board[0][0] != "-" && $board[0][1] != "-" && $board[0][2] != "-" && $board[0][3] != "-"
        	p "GAME OVER! It's a tie"
        	exit
        end
    	# add cases for diagonal and cross-diagonal wins
    	if $board[0][0] == "1" && $board[1][1] == "1" && $board[2][2] == "1" && $board[3][3] == "1" || $board[0][0] == "2" && $board[1][1] == "2" && $board[2][2] == "2" && $board[3][3] == "2" || $board[3][0] == "1" && $board[2][1] == "1" && $board[1][1] == "1" && $board[0][3] == "1" || $board[3][0] == "2" && $board[2][1] == "2" && $board[1][1] == "2" && $board[0][3] == "2" 
    	    p "CONNECT FOUR! GAME OVER. Player #{$player[$current_player_index]} loses!"
    		exit 
    	end
    end
    
    def new_game
        welcome
        play_game
    end
end	

game1 = Connect_Four.new
game1.new_game