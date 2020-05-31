# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.destroy_all
Board.destroy_all
Project.destroy_all
User.destroy_all
Icon.destroy_all

david = User.create(username: "david", full_name: "David Pepsi", favorite_color: "blue", email: "davidpepsi@go.edu", password: "123")

project = Project.create(background_image: "", topic: "Fun Project", user_id: david.id)
project1 = Project.create(background_image: "", topic: "Boring Project", user_id: david.id)
project2 = Project.create(background_image: "", topic: "Interesting Project", user_id: david.id)
project3 = Project.create(background_image: "", topic: "Job Project", user_id: david.id)

board = Board.create(title: "favorite", image: "http://www.personal.psu.edu/amz5182/Hobbies/Graphics/hobbies.png", project_id: project.id)
board1 = Board.create(title: "I like icons", image: "", project_id: project.id)
board2 = Board.create(title: "Work on Project", image: "", project_id: project.id)
card = Card.create(card_title: "dogs", content: "Playing with little dogs are my favorite, dont forget to take out ms. kims dogs every sunday evening.", board_id: board.id)
card1 = Card.create(card_title: "crawfish", content: "Go crawfishing when you have time on the weekends.", board_id: board.id)
card3 = Card.create(card_title: "projects", content: "Let's do some projects.", board_id: board2.id)

img1 = Icon.create(images: ["1.png", "2.png", "3.gif", 
"4.png", "5.png","6.png","7.png","8.png",
"9.png", "10.png", "11.gif", "12.png", "13.png",
"14.png", "15.png", "16.png", "17.png", "18.png",
"19.jpg", "20.png", "21.webp", "22.png", "23.gif",
"24.gif", "25.png", "27.png", "28.png",
"29.png", "30.png", "31.png", "32.png"
])