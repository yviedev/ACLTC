#Question 5 
#Spy agent name part 2
#input recieve spy name: ex) "Joel Matos"
#Output 1)Will reverse the string
            # 2)Will lower case the string
            # 3)Move it to the next character example 'b' => 'c'
            # 4)If it is a vowel 'aeiou' it will be move to the next vowel  example 'a' => 'e'
            # 5)Also capitalize every other character 
            # 6) Example of "Joel Matos" = "TuVeN MiUk"

def spy_name(name)
            letters = ('a'..'z').to_a
            vowels = "aeiou"
            vowels_arry = vowels.chars
            new_name = []
            new_name_arry = []
            name_arry = name.reverse.downcase.chars

            name_arry.each do |letter|
                        if letter == " "
                                    new_name << letter
                        elsif vowels.include?(letter)
                                    if letter == "u"
                                                new_name << "a"
                                    else
                                                new_name << vowels_arry[vowels_arry.index(letter) + 1]
                                    end
                        elsif
                                    letter == "z" 
                                                new_name << "a"
                        else
                                    new_name << letters[letters.index(letter) + 1]
                        end
            end

            p new_name

            new_name.each_with_index do |letter, index|
                        if index % 2 == 0
                                    new_name_arry << letter.upcase
                        else
                                    new_name_arry << letter
                        end
            end

            new_name_arry.join
end
	
spy_name("Joel Matos")
