# a = [ "a", "b", "c", "d" ]
# a.rotate!        #=> ["b", "c", "d", "a"]
# a                #=> ["b", "c", "d", "a"]
# a.rotate!(2)     #=> ["d", "a", "b", "c"]
# a.rotate!(-3)    #=> ["a", "b", "c", "d"]

#Take a string password and shift by 2 characters and upcase each letter character.

# Problem #1
def password(string, num)
  # p string.chars.rotate(2).join
  new_pwd = []
  new_string = string.chars.rotate(num)
  new_string.each_with_index do |letter, index|
    if index % 2 == 0
      new_pwd << letter.upcase
    else
      new_pwd << letter
    end
  end

  new_pwd.join

end

# This method will break because you need to turn the string into an array first.
def password2(string)
  p string.rotate(2)
end

# This method will perform a similar rotate method but in a long way
def password3(string, num)
	new_pwd = []
	new_pwd_cap = []
	new_string = string.chars

	for x in (-1 * num)..(new_string.length - (num + 1)) do
		new_pwd << new_string[x]
	end
	
	new_pwd.each_with_index do |letter, index|
		if index % 2 == 0
	      new_pwd_cap << letter.upcase
	    else
	      new_pwd_cap << letter
	    end
	end
		
	new_pwd_cap.join
	
end

password("word", 2)
password3("word", 2)
