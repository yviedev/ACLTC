json.id person.id
json.name person.name
json.genre person.genre
json.age person.age
json.years_of_acting person.years_of_acting
json.number_of_films person.number_of_films
json.highest_grossing_salary person.highest_grossing_salary
json.top_fans person.top_fans.each do |topfan|
json.name topfan.name
json.email topfan.email
json.location topfan.location
json.quote topfan.quote
end
