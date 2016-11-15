#Question 5 
#Spy agent name part 2
#input recieve spy name: ex) "Joel Matos"
#Output 1)Will reverse the string
            # 2)Will lower case the string
            # 3)Move it to the next character example 'b' => 'c'
            # 4)If it is a vowel 'aeiou' it will be move to the next vowel  example 'a' => 'e'
            # 5)Also capitalize every other character 
            # 6) Example of "Joel Matos" = "TuVeN MiUk"

letters = ('a'..'z').to_a
p new_name = "Joel Matos".reverse.downcase.chars

new_name.each_with_index do |x, index|
  p letters[letters.index(new_name[index])+1]
end