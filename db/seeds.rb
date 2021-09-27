# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

######Test seeds
User.destroy_all
Photo.destroy_all

user1 = User.create(username: "test", password_digest:"123")
user2 = User.create(username: "test2", password_digest:"123")

photo1 = Photo.create(user_id: user1.id, username: user1.username, image: "https://res.cloudinary.com/diexi8g0j/image/upload/v1632763605/y55vz8pmmugmwm1reqbw.jpg")
photo2 = Photo.create(user_id: user1.id, username: user1.username,  image: "https://res.cloudinary.com/diexi8g0j/image/upload/v1632763539/yhutvluhxq8yzzom05jt.jpg")
photo3 = Photo.create(user_id: user2.id, username: user2.username, image: "https://res.cloudinary.com/diexi8g0j/image/upload/v1632763497/ylsotzpbj4zslpf7rxjo.jpg")