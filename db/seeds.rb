# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Patrick", username: "Star Pants" , password: "12345")
User.create(name: "Squidward", username: "Long Nose" , password: "12345")
User.create(name: "Spongebob", username: "Squarepants" , password: "12345")
User.create(name: "Gary", username: "Mr Snail" , password: "12345")
User.create(name: "Krabs", username: "Mr Patty" , password: "12345")
User.create(name: "Lisa", username: "Knows It All" , password: "12345")
User.create(name: "Marge", username: "Big Hair" , password: "12345")
User.create(name: "Homer", username: "Dumbass" , password: "12345")
User.create(name: "Bart", username: "The Man" , password: "12345")
User.create(name: "Maggie", username: "Sassy Baby" , password: "12345")
User.create(name: "Stan", username: "The Fixer" , password: "12345")
User.create(name: "Kyle", username: "The Canadian" , password: "12345")
User.create(name: "Kenny", username: "Always Dead" , password: "12345")
User.create(name: "Kartman",username: "Cheezy Pooh" , password: "12345")
User.create(name: "Kennys Mom", username: "Ms Mom" , password: "12345")
User.create(name: "Tina", username: "Twerk" , password: "12345")
User.create(name: "Bob", username: "Got Beef" , password: "12345")
User.create(name: "Louise", username: "Smarty Hat" , password: "12345")
User.create(name: "Linda", username: "Bobs Wife" , password: "12345")
User.create(name: "Gene", username: "Big Baby" , password: "12345")

Restaurant.create(name: "krusty krab", location: "bikini bottom", food_type: "american")
Restaurant.create(name: "chum bucket", location: "bikini bottom", food_type: "italian")
Restaurant.create(name: "goofy goobers", location: "bikini bottom", food_type: "ice cream")

Restaurant.create(name: "krusty burger", location: "springfield", food_type: "american")
Restaurant.create(name: "kwik-e-mart", location: "springfield", food_type: "ice cream")
Restaurant.create(name: "moes", location: "springfield", food_type: "bar")

Restaurant.create(name: "bennys", location: "south park", food_type: "mexican")
Restaurant.create(name: "chefs cafeteria", location: "south park", food_type: "american")
Restaurant.create(name: "city wok", location: "south park", food_type: "chinese")

Restaurant.create(name: "bobs burgers", location: "long island", food_type: "american")
Restaurant.create(name: "falafel waffle", location: "long island", food_type: "breakfast")
Restaurant.create(name: "jimmy pestos", location: "long island", food_type: "italian")

MenuItem.create(name: "krusty kombo", price: 4, img_url:"https://i.gifer.com/fetch/w300-preview/42/42ed80f7581768d064ef329a41a9c76a.gif", restaurant_id: Restaurant.find_by(:name => "krusty krab").id)
MenuItem.create(name: "krabby pattie", price: 2, img_url:"https://cdn.foodbeast.com/wp-content/uploads/2017/07/krabby-patty.jpg", restaurant_id: Restaurant.find_by(:name => "krusty krab").id)

MenuItem.create(name: "chum burger", price: 5, img_url:"https://i.imgur.com/vAiSw9P.png", restaurant_id: Restaurant.find_by(:name => "chum bucket").id)
MenuItem.create(name: "chum fries", price: 2, img_url:"http://en.spongepedia.org/images/f/f4/132b_Kelp_Fries.jpg", restaurant_id: Restaurant.find_by(:name => "chum bucket").id)

MenuItem.create(name: "sundae", price: 2, img_url:"https://i.pinimg.com/236x/e3/bb/b0/e3bbb0b69ec85bcaaee8b8b27cd2d925--spongebob-patrick-patrick-star.jpg", restaurant_id: Restaurant.find_by(:name => "goofy goobers").id)
MenuItem.create(name: "drunk sundae", price: 5, img_url:"https://i.pinimg.com/236x/da/a4/ed/daa4edd4679cf8a3674299bf2e097db2--spongebob-patrick-sponge-bob.jpg", restaurant_id: Restaurant.find_by(:name => "goofy goobers").id)

MenuItem.create(name: "krusty burger", price: 4, img_url:"https://media-cdn.tripadvisor.com/media/photo-s/10/5b/cb/9a/ele.jpg", restaurant_id: Restaurant.find_by(:name => "krusty burger").id)
MenuItem.create(name: "ribwich", price: 6, img_url:"https://vignette.wikia.nocookie.net/simpsons/images/8/88/Ribwich.png/revision/latest?cb=20100324214203", restaurant_id: Restaurant.find_by(:name => "krusty burger").id)

MenuItem.create(name: "squishee", price: 3, img_url:"https://vignette.wikia.nocookie.net/simpsons/images/7/7e/Squishee.png/revision/latest?cb=20130603154626", restaurant_id: Restaurant.find_by(:name => "kwik-e-mart").id)
MenuItem.create(name: "ice cream", price: 3, img_url:"https://s3-media1.fl.yelpcdn.com/bphoto/l6cp290sllmNLpDhhvGC1g/348s.jpg", restaurant_id: Restaurant.find_by(:name => "kwik-e-mart").id)

MenuItem.create(name: "beer", price: 5, img_url:"https://deadhomersociety.files.wordpress.com/2011/11/thespringfieldfiles6.png", restaurant_id: Restaurant.find_by(:name => "moes").id)
MenuItem.create(name: "cocktail", price: 7, img_url:"https://pbs.twimg.com/media/Ad8YYIlCQAEms9N.jpg", restaurant_id: Restaurant.find_by(:name => "moes").id)

MenuItem.create(name: "taco", price: 2, img_url:"https://s3-media1.fl.yelpcdn.com/bphoto/UHcX_MnDHLzOKq4WleNUDg/ls.jpg", restaurant_id: Restaurant.find_by(:name => "bennys").id)
MenuItem.create(name: "queso", price: 4, img_url:"https://cdn.vox-cdn.com/thumbor/VkOML9EY80S0owEFGw1imbTl4zc=/0x96:250x284/1200x800/filters:focal(0x96:250x284)/cdn.vox-cdn.com/uploads/chorus_image/image/38803856/mohawk_quesoff4_19jul2014.0.jpg", restaurant_id: Restaurant.find_by(:name => "bennys").id)

MenuItem.create(name: "wrap", price: 3, img_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTytgPel6oIO1soruaUo2jJ3rVDgUigVkGfYJNRI5iAKbkKe5P7", restaurant_id: Restaurant.find_by(:name => "chefs cafeteria").id)
MenuItem.create(name: "creme fraiche", price: 50, img_url:"https://media1.giphy.com/media/3o6ZsZY8H2dqtq81Ko/giphy.gif", restaurant_id: Restaurant.find_by(:name => "chefs cafeteria").id)

MenuItem.create(name: "orange chicken", price: 8, img_url:"http://citywok.com/photogallery/1.jpg", restaurant_id: Restaurant.find_by(:name => "city wok").id)
MenuItem.create(name: "kung pow chicken", price: 9, img_url:"http://citywok.com/photogallery/168.jpg", restaurant_id: Restaurant.find_by(:name => "city wok").id)

MenuItem.create(name: "burger", price: 8, img_url:"https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/2/14/0/FNK_bistro-breakfast-burger_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382542442044.jpeg", restaurant_id: Restaurant.find_by(:name => "bobs burgers").id)
MenuItem.create(name: "the special", price: 9, img_url:"https://metropolisjapan.com/wp-content/uploads/2015/04/burgers-32507913-1200x800-860x480.jpg", restaurant_id: Restaurant.find_by(:name => "bobs burgers").id)

MenuItem.create(name: "waffles de falafel", price: 4, img_url:"http://simpleveganblog.com/wp-content/uploads/2016/01/Falafel-waffles.jpg", restaurant_id: Restaurant.find_by(:name => "falafel waffle").id)
MenuItem.create(name: "chicken and waffles", price: 7, img_url:"https://purewows3.imgix.net/images/articles/2019_01/Mini_Chicken_And_Waffles_Recipe.jpg?auto=format,compress&cs=strip", restaurant_id: Restaurant.find_by(:name => "falafel waffle").id)

MenuItem.create(name: "slice of pesto and pepperoni", price: 9, img_url:"https://media-cdn.tripadvisor.com/media/photo-s/0a/4e/d4/0d/slice-pepperoni-and-pesto.jpg", restaurant_id: Restaurant.find_by(:name => "jimmy pestos").id)
MenuItem.create(name: "the monstrosity", price: 12, img_url:"https://i.ytimg.com/vi/As6YArlBpR0/maxresdefault.jpg", restaurant_id: Restaurant.find_by(:name => "jimmy pestos").id)

Reservation.create()

