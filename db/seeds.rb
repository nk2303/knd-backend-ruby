# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
david = User.create(username: "david", full_name: "David Pepsi", favorite_color: "blue", email: "davidpepsi@go.edu", password: "123")

project = Project.create(background_image: "", topic: "Fun Project", user_id: david.id)
board = Board.create(title: "favorite", image: "http://www.personal.psu.edu/amz5182/Hobbies/Graphics/hobbies.png", project_id: project.id)
card = Card.create(content: "Playing with little dogs are my favorite, dont forget to take out ms. kims dogs every sunday evening.", board_id: board.id)
card1 = Card.create(content: "Go crawfishing when you have time on the weekends.", board_id: board.id)
