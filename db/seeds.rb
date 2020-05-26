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


david = User.create(username: "david", full_name: "David Pepsi", favorite_color: "blue", email: "davidpepsi@go.edu", password: "123")

project = Project.create(background_image: "", topic: "Fun Project", user_id: david.id)
project1 = Project.create(background_image: "", topic: "Boring Project", user_id: david.id)
project2 = Project.create(background_image: "", topic: "Interesting Project", user_id: david.id)
project3 = Project.create(background_image: "", topic: "Job Project", user_id: david.id)

board = Board.create(title: "favorite", image: "http://www.personal.psu.edu/amz5182/Hobbies/Graphics/hobbies.png", project_id: project.id)
board1 = Board.create(title: "I like icons", image: "", project_id: project.id)
board2 = Board.create(title: "Work on Project", image: "", project_id: project.id)
card = Card.create(content: "Playing with little dogs are my favorite, dont forget to take out ms. kims dogs every sunday evening.", board_id: board.id)
card1 = Card.create(content: "Go crawfishing when you have time on the weekends.", board_id: board.id)
card3 = Card.create(content: "Let's do some projects.", board_id: board2.id)

img1 = Icon.create(images: ["../IMAGES/1.png", "../IMAGES/2.png", "../IMAGES/3.gif", 
"../IMAGES/4.png", "../IMAGES/5.png","../IMAGES/6.png","../IMAGES/7.png","../IMAGES/8.png",
"../IMAGES/9.png", "../IMAGES/10.png", "../IMAGES/11.gif", "../IMAGES/12.png", "../IMAGES/13.png",
"../IMAGES/14.png", "../IMAGES/15.png", "../IMAGES/16.png", "../IMAGES/17.png", "../IMAGES/18.png",
"../IMAGES/19.jpg", "../IMAGES/20.png", "../IMAGES/21.webp", "../IMAGES/22.png", "../IMAGES/23.gif",
"../IMAGES/24.gif", "../IMAGES/25.png", "../IMAGES/26.png", "../IMAGES/27.png", "../IMAGES/28.png",
"../IMAGES/29.png", "../IMAGES/30.png", "../IMAGES/31.png", "../IMAGES/32.png"
])