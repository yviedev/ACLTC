#takes an array, duplicates it, and then sorts it in random order.
#["a", "b", "c", "d"] => ["d", "c", "a", "c", "d", "b", "a", "b"]

def dup_arry(input)
  new_arry = []
  input.each do |letter|
    new_arry << letter
    new_arry << letter
  end
  p new_arry.shuffle
end

dup_arry(["a", "b", "c", "d"])

#takes an array of strings and removes any spaces
#["hello ", "good bye", " good morning", "  good afternoon"] => ["hello", "goodbye", "goodmorning", "goodafternoon"]

def remove_string(input)
	new_arry = []
	final_ary = []
 
	input.each do |word|
	  	new_arry << word.chars
	end
	
	0..(new_arry.length-1).times do |x|
		final_ary << (new_arry[x] - [" "]).join
	end
	
	final_ary
end

remove_string(["hello ", "good bye", " good morning", "  good afternoon"])

#takes an array of words and prints the words whose sum of letters, when converted to ASCII values, are odd.
#["bumblebee", "sky", "fox", "jump", "leopard", "horrible", "cloudy"] => ["bumblebee", "sky", "fox", "leopard", "horrible"]

def odd (input)
	odd_ary = []
	sum = 0
	sum_ary = []
	hash = Hash.new(0)
	final_ary = []
	
	input.each do |word|
		word.each_byte do |ascii|
			sum += ascii
		end
		
		hash[word] = sum
		
		sum_ary << sum
		sum = 0
	end
	
	#p sum_ary
	#p hash
	
	sum_ary.each do |num|
		if num % 2 != 0 
			odd_ary << num
		end
	end
	
	odd_ary.each do |num|
		hash.each do |key, value|
			if num == value
				final_ary << key
			end
		end
	end 
	
	final_ary
end


odd(["bumblebee", "sky", "fox", "jump", "leopard", "horrible", "cloudy"]) 
#=> ["bumblebee", "sky", "fox", "leopard", "horrible"])
