# Problem #1: Go through an array, checking to see what type of object each is. If it's a number less than 20, place it in another array. If it's a string, concatenate it, forming one long sentence, with proper punctuation (Capitalize the first word, spaces between each word, and a period at the end.)

# [1, "hello", 4, "my", "name", 7, "is", 83, "David"]

def what_is_this(input)
  @new_int = []
  @new_str = []
  input.each do |x|
    if x.is_a? String
      @new_str << x
    elsif x.is_a? Integer
      if x < 20
        @new_int << x
      end
    end
  end
end

what_is_this([1, "hello", 4, "my", "name", 7, "is", 83, "David"])
p @new_int
p "#{@new_str.join(" ")}.".capitalize
