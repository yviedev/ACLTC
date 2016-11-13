# a = [ "a", "b", "c", "d" ]
# a.rotate!        #=> ["b", "c", "d", "a"]
# a                #=> ["b", "c", "d", "a"]
# a.rotate!(2)     #=> ["d", "a", "b", "c"]
# a.rotate!(-3)    #=> ["a", "b", "c", "d"]

#Take a string password and shift by 2 characters and upcase each letter character.

# Problem #1
def password(string)
  # p string.chars.rotate(2).join
  new_pwd = []
  p new_string = string.chars.rotate(2)
  new_string.each_with_index do |letter, index|
    if index % 2 == 0
      new_pwd << letter.upcase
    else
      new_pwd << letter
    end
  end

  p new_pwd.join

end

# This method will break because you need to turn the string into an array first.
def password2(string)
  p string.rotate(2)
end

# This method will perform a similar rotate method but in a long way
def password3(string)
  new_pwd = []
  new_string = string.chars
  new_pwd << new_string[2]
  new_pwd << new_string[3]
  new_pwd << new_string[0]
  new_pwd << new_string[1]

for x in -2..(new_string.length-(-2)) do
  p new_string[-1 * (new_string.length-x)]
end

password("word")
password3("word")