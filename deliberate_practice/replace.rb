#Take the inputed message filled with expletives (*****) and replace with the warm word "love".

def no_foul_language(message)
  new_message = []
  arry = message.split(" ")
  arry.each do |word|
    if word.include? "*****"
      new_message << "love"
    else
      new_message << word
    end
  end
  p new_message.join(" ")
end

no_foul_language("***** fun mess. This song is full of *****. I can't ***** believe it. How could ***** happen to me? No more *****. *****! Money, cash, *****. When I get home, I'm gonna ***** and then *****. Web dev is ***** and totally *****!")

