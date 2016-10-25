#Write a program that allows the user to enter a city and state and displays sunrise and sunset for that city.
require 'weather_hash'

puts "Welcome to the Weather App! Please enter a city:"
city = gets.chomp
puts "Please enter a two-letter state:"
state = gets.chomp

data = WeatherHash.lookup("city", "state")

puts "In #{city}, #{state.upcase} sunrise starts at #{data["channel"]["astronomy"]["sunrise"]} and sunset ends at #{data["channel"]["astronomy"]["sunset"]}."
