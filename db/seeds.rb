# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(title:"Poutou", description: "Un must have pour afficher votre salon", price:"5€", image_url:"kitten_1.jpg", quantity: 0)
Item.create(title:"Minouille", description: "Oh la petite bouille trop crognon !!", price:"8€", image_url:"kitten_2.jpg", quantity: 0)
Item.create(title:"Bichette", description: "Une chatounette sauvage mais si jolie", price:"7€", image_url:"kitten_3.jpg", quantity: 0)
Item.create(title:"Pupuce", description: "Un chaton, c'est mignon", price:"5€", image_url:"kitten_4.jpg")
Item.create(title:"Princesse", description: "C'est vraiment la plus belle", price:"6€", image_url:"kitten_5.jpg")
Item.create(title:"Pouliche", description: "Cette petite merveille adore les gratouilles", price:"7€", image_url:"kitten_6.jpg", quantity: 0)
Item.create(title:"Foufoune", description: "Foufoune, la plus coquine des petites chates", price:"8€", image_url:"kitten_7.jpg", quantity: 0)
Item.create(title:"Pitchoune", description: "Un petit trésor à poil", price:"5€", image_url:"kitten_8.jpg")
Item.create(title:"Crapule", description: "Elle fait plein de bêtises mais c'est un trésor", price:"6€", image_url:"kitten_9.jpg", quantity: 0)
Item.create(title:"Noisette", description: "Attention, piège !!! C'est un chiot lol", price:"7€", image_url:"kitten_10.jpg", quantity: 0)
Item.create(title:"Craspouille", description: "Une mimi cracra en puissance", price:"8€", image_url:"kitten_11.jpg", quantity: 0)
Item.create(title:"Amour", description: "Un amour de chat", price:"5€", image_url:"kitten_12.jpg",quantity: 0)
Item.create(title:"Félix", description: "Félix le chat", price:"7€", image_url:"kitten_13.jpg",quantity: 0)

User.create(firstname:"Loulou", email:"loulou@gmail.com", password:"coucou")
User.create(firstname:"Justikro", email:"justikro@gmail.com", password:"coucou")
User.create(firstname:"Samba", email:"samba@gmail.com", password:"coucou")
User.create(firstname:"Fabiche", email:"sylvain@gmail.com", password:"coucou")
User.create(firstname:"Nicoco", email:"nico@gmail.com", password:"coucou")