=begin
Recreate the Person class in your own text editor.
(done) Add a method called full_name that returns the person’s full name as a string.
(done) Add a method called email that returns the person’s email address as a string. The person’s email is has the format: “firstname.lastname@gmail.com".
(done) Add a method called info that returns a string that describes the person in a user friendly format. The catch: Make sure it works no matter how many hobbies a person has! (Hint: Consider using an each loop.)
=end

class Person
    def initialize(first_name, last_name, hair_color, hobbies)
        @first_name = first_name
        @last_name = last_name
        @hair_color = hair_color
        @hobbies = []
    end
    
    # Person class has 4 getter methods
    def first_name
        return @first_name
    end
    
    def last_name
        return @last_name
    end
    
    def full_name
        return @first_name + " " + @last_name
    end
    
    def email
        return @first_name.downcase + @last_name.downcase + "@gmail.com"
    end
    
    def hair_color
        return @hair_color
    end
    
    def hobbies
        return @hobbies.each {|hobby| hobby.to_s}
    end
    
    def add_hobby(hobby)
        @hobbies << hobby
    end
    
    def info
        return "#{full_name} has #{@hair_color} hair and enjoys the following hobbies: #{hobbies}. #{first_name}'s email address is #{email}."
    end
end

people = [
    Person.new("Bob", "Jones", "pink", ["basketball", "chess", "phone tag"]),
    Person.new("Molly", "Jones", "black", ["programming", "reading", "jogging"]),
    Person.new("Kelly", "Miller", "rainbow", ["cricket", "baking", "stamp collecting"])
        ]
        
=begin
Below the Person class, create a ContactList class. The ContactList should have two attributes: 
title - this represents what list this is (e.g. “friends”, “business contacts”)
contacts - this should be an array. It will contain numerous instances of the Person class.
Add an instance method to the ContactList class called “add_contact” that will add a Person instance to the particular contact list.
=end

class ContactList
    def initialize(text)
        @title = text
        @contacts = []
    end
    
    def add_contact(contact)
        @contacts << contact
    end
    
    def contacts
        return @contacts
    end
end


        