# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(title:"Poutou", description: "Un must have pour afficher votre salon", price:"5€", image_url:"kitten_1.jpg")
Item.create(title:"Minouille", description: "Oh la petite bouille trop crognon !!", price:"8€", image_url:"kitten_2.jpg")
Item.create(title:"Bichette", description: "Une chatounette sauvage mais si jolie", price:"7€", image_url:"kitten_3.jpg")

User.create(firstname:"Loulou", email:"loulou@gmail.com", password:"coucou")
User.create(firstname:"Justikro", email:"justikro@gmail.com", password:"coucou")
User.create(firstname:"Samba", email:"samba@gmail.com", password:"coucou")
User.create(firstname:"Fabiche", email:"sylvain@gmail.com", password:"coucou")
User.create(firstname:"Nicoco", email:"nico@gmail.com", password:"coucou")
