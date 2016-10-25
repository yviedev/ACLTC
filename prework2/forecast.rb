#Write a program that allows the user to enter a city and state and displays the 7 day forecast in an easy to read format. Include the day of the week, high, low, and text (e.g. "Partly Cloudy") for each day.
require 'weather_hash'

puts "Welcome to the Weather App! Please enter a city:"
city = gets.chomp
puts "Please enter a two-letter state:"
state = gets.chomp

data = WeatherHash.lookup("city", "state")

seven_day_weather = data["channel"]["item"]["forecast"]

puts "In #{city}, #{state.upcase}, the 7 day forecast is:"

seven_day_weather.each_with_index do |daily_weather, index|
    if index <= 6
      puts "On #{daily_weather["day"]} the high will be: #{daily_weather["high"]}, the low will be #{daily_weather["low"]}, and it will be #{daily_weather["text"].downcase}."
    end
end

=begin
index = 0
for daily_weather in seven_day_weather do
    if index > 6
      break
    end
    puts "On #{daily_weather["day"]} the high will be: #{daily_weather["high"]}, the low will be #{daily_weather["low"]}, and it will be #{daily_weather["text"].downcase}."
    index += 1
end
=end
