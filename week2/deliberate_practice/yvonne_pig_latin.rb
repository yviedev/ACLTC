# Yvonne Latin
# Take a sentence and move the first letter of each word to the end and then add 'yvonne' to the end of each word.
# Ignore punctuation marks

sentence = "Today's weather is very nice isn't it?"

new_word = []

sentence.split.each do |word|
  new_word << word.slice(1..(word.length-1)) + word[0].downcase + "yvonne"
end

p new_word.join(" ").capitalize

