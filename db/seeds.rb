# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserProject.destroy_all
Card.destroy_all
Board.destroy_all
Project.destroy_all
User.destroy_all
Icon.destroy_all



david = User.create(username: "david", full_name: "David Pepsi", favorite_color: "blue", email: "davidpepsi@go.edu", password: "123")
kim = User.create(username: "kim", full_name: "Kim Possible", favorite_color: "light blue", email: "kim@uw.edu", password: "123")

project = Project.create(background_image: "", topic: "Fun Project", user_id: david.id)
project1 = Project.create(background_image: "", topic: "Boring Project", user_id: david.id)
project2 = Project.create(background_image: "", topic: "Interesting Project", user_id: david.id)
project3 = Project.create(background_image: "", topic: "Job Project", user_id: kim.id)

board = Board.create(title: "favorite", project_id: project.id)
board1 = Board.create(title: "I like icons", project_id: project.id)
board2 = Board.create(title: "Work on Project", project_id: project3.id)
board3 = Board.create(title: "Going to do", project_id: project3.id)

card = Card.create(card_title: "dogs", image: '', content: "Playing with little dogs are my favorite, dont forget to take out ms. kims dogs every sunday evening.", board_id: board.id)
card1 = Card.create(card_title: "crawfish", image: '', content: "Go crawfishing when you have time on the weekends.", board_id: board.id)
card3 = Card.create(card_title: "projects", image: '', content: "Let's do some projects.", board_id: board2.id)

card4 = Card.create(card_title: "cats", image: '', content: "Make some weed because mr. david would like to have some tea.", board_id: board3.id)
card5 = Card.create(card_title: "crawfish", image: '', content: "Go hike when you have time on the weekends.", board_id: board3.id)
card6 = Card.create(card_title: "Cook", image: '', content: "Let's do cooking whenever.", board_id: board3.id)
user_project = UserProject.create(project_id: project1.id, user_id: kim.id)

img1 = Icon.create(images: ["1.png", "2.png", "3.gif", 
"4.png", "5.png","6.png","7.png","8.png",
"9.png", "10.png", "11.gif", "12.png", "13.png",
"14.png", "15.png", "16.png", "17.png", "18.png",
"19.jpg", "20.png", "21.webp", "22.png", "23.gif",
"24.gif", "25.png", "27.png", "28.png",
"29.png", "30.png", "31.png", "32.png"
])