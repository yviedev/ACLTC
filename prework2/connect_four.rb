$connect_board = Array.new(7){Array.new(6, "-")} # cleaner way to build Connect 4 board

def board
	$connect_board.each do |row| # call global variable connect_board
		puts row.join
	end
end

puts "Let's Play Connect 4!"
board()
	
def drop_x
	x_column = []
	4.times do # manual loop until I can figure out how to signal a connect 4 with Player 2
	#game = true
	#while game do
		#game = false
		x_hash = Hash.new(0) #{0 =>0, 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5=> 0, 6 =>0}
		
		puts "Player 1: Choose a column between 0-6:"
		
		x_column << gets.chomp.to_i
		
		x_column.each do |key| # assign each number that Player 1 picks to a key that will count how many times the number was picked
     		x_hash[key] += 1
		end
		
		x_hash.each do |number, frequency|
			if frequency == 1
				$connect_board[6][number] = "X"
			elsif
				frequency == 2
				$connect_board[5][number] = "X"
			elsif
				frequency == 3
				$connect_board[4][number] = "X"
			elsif
				frequency == 4
				$connect_board[3][number] = "X"
			elsif
				frequency == 5
				$connect_board[2][number] = "X"
			elsif
				frequency == 6
				$connect_board[1][number] = "X"
			elsif
				frequency == 7
				$connect_board[0][number] = "X"
			elsif
				frequency == 8
				puts "Please pick another number. This column is full."
			end
		end
		board()
	end
end

drop_x()

puts "GAME OVER! Thanks for playing."