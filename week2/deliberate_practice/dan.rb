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
  input.each do |word|
    if word.char
    new_arry << word
  end
  p new_arry
end

remove_string(["hello ", "good bye", " good morning", "  good afternoon"])

#takes an array of words and prints the words whose sum of letters, when converted to ASCII values, are odd.
#["bumblebee", "sky", "fox", "jump", "leopard", "horrible", "cloudy"] => ["bumblebee", "sky", "fox", "leopard", "horrible"]

