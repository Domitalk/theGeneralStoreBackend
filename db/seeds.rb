# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 

u1 = User.create({name: "dom"})
u2 = User.create({name: "imade"})

i1 = Item.create({
    name: "coffee",
    price: 5.00, 
    picture: "https://en.wikipedia.org/wiki/Coffee#/media/File:A_small_cup_of_coffee.JPG"
})

i2 = Item.create({
    name: 'pencil', 
    price: 1.00, 
    picture: "https://images-na.ssl-images-amazon.com/images/I/61TrT6dIUlL._SX425_.jpg"
})