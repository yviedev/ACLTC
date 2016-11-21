# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  book2 = Book.new(title: Faker::Book.title, author: Faker::Book.author, price:(Faker::Commerce.price).round, genre: Faker::Book.genre, pages: Faker::Number.number(3))
  book2.save
end