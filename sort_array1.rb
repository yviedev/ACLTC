array = [1, 4, 2, 7, 1, 10, 43, 3, 1, 0]
loop = true
smallest_number = array[0]
sorted_array = []
delete = nil

while loop do
	loop = false
		if array.length > 0
			smallest_number = array.min
			delete = array.index(smallest_number)
			loop = true
		else
			loop = false
		end
		sorted_array << smallest_number
		array.delete_at(delete)
end

puts "Here is your sorted array #{sorted_array}."
