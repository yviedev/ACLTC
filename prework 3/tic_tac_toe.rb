=begin
Exercise: Bonus Exercise #2
Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

Try using classes to structure your code. What are the different classes needed here? What are the instance variables? What are the instance methods?
=end

# draw a 3x3 matrix board
class Tic_Tac_Toe

    $board = Array.new(3) { Array.new(3, "-") } #why do I have to make this a global variable in order to work?
    
    #map of possible tic tac toe plays 0-9
    $map = Array.new(9) { |e| e = e + 1 }
    
    def board
    	$board.each do |row|
        	puts row.join
        end
    end
    
    def map
        p $map
    end
    
    def welcome
        puts "Welcome to Tic Tac Toe!"
        puts "May the best player win!"
        puts "Row 1 is numbered 123."
        puts "Row 2 is numbered 456."
        puts "Row 3 is numbered 789."
        board
    end
    
    #set # of players
    $player = ["X", "O"]
    
    $current_player_index = 0
    def current_player
    	$current_player = $player[$current_player_index]
    	return $current_player #having trouble making this variable work and not return a nil value so I'm just going to use $player[$current_player_index] instead.
    end
    
    def change_player #write a formula to rotate through players
        $current_player_index = ($current_player_index + 1) % 2
        current_player
    end
    
    def get_player_input
    	#ask player to choose column 0-2
    	puts "Player #{$player[$current_player_index]}, please choose a number between 1-9:"
    	    @spot = gets.chomp.to_i #store input in variable
    		#if player chooses outside of 1-9 give them an error message and ask them to choose again.
    		if @spot < 1 || @spot > 9
    		    puts "Your selection is outside of the acceptable range."
    		    get_player_input
    		end
    end
    
    def input_map
        get_player_input
        case @spot
        when 1
            if $board[0][0] == "-"
                $board[0][0] = $player[$current_player_index]
            else
                spot_played
            end
        when 2
            if $board[0][1] == "-"
                $board[0][1] = $player[$current_player_index]
            else
               spot_played
            end
        when 3 
            if $board[0][2] == "-"
                $board[0][2] = $player[$current_player_index]
            else
                spot_played
            end
        when 4 
            if $board[1][0] == "-"
                $board[1][0] = $player[$current_player_index]
            else
               spot_played
            end
        when 5 
            if $board[1][1] == "-"
                $board[1][1] = $player[$current_player_index]
            else
                spot_played
            end
        when 6 
            if $board[1][2] == "-"
                $board[1][2] = $player[$current_player_index]
            else
                spot_played
            end
        when 7 
            if $board[2][0] == "-"
                $board[2][0] = $player[$current_player_index]
            else
                spot_played
            end
        when 8 
            if $board[2][1] == "-"
                $board[2][1] = $player[$current_player_index]
            else
                spot_played
            end
        else 
            if $board[2][2] == "-"
                $board[2][2] = $player[$current_player_index]
            else
                spot_played
            end
        end
    end
    
    def spot_played
        puts "That spot has played. Try again."
        input_map
    end
    
    def play_game
        loop do
            game_over
            input_map
            board
            change_player
        end
    end
    
    def game_over
        # if rows are XXX or OOO, then game over
        @score = 0
    	$board.each do |row|
    		if row.join == "XXX" || row.join == "OOO"
    			p "TIC-TAC-TOE! GAME OVER. Player #{$player[$current_player_index]} loses!"
    			exit 
    		end
    	end
    	#if columns are XXX or OOO, then game over
    	$board.transpose.each do |row|
    		if row.join == "XXX" || row.join == "OOO"
    			p "TIC-TAC-TOE! GAME OVER. Player #{$player[$current_player_index]} loses!"
    			exit 
    		end
    	end
    	#add cases for diagonal and cross-diagonal wins
    	if $board[0][0] == "X" && $board[1][1] == "X" && $board[2][2] == "X" || $board[0][0] == "O" && $board[1][1] == "O" && $board[2][2] == "O" || $board[2][0] == "X" && $board[1][1] == "X" && $board[0][2] == "X" || $board[2][0] == "O" && $board[1][1] == "O" && $board[0][2] == "O"
    	    p "TIC-TAC-TOE! GAME OVER. Player #{$player[$current_player_index]} loses!"
    		exit 
    	end
    	$board.each do |row|
        	row.each do |s|
        	        if s != "-"
        	            @score += 1
        	        end
        	        if @score == 9
        	            p "It's a tie. GAME OVER!"
        	            exit
        	        end
    	    end
    	end
    end
    
    def new_game
        welcome
        play_game
    end
end	

game1 = Tic_Tac_Toe.new
game1.new_game