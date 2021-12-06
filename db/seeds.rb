# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# EXAMPLE - Manga.create(title:"EightySix", availability:"Available",volumeNum:1,owner:"Liam O'Driscoll",borrower:nil,  value:5)

Manga.create(title:"EightySix", user_id: 1, LatestChapter: 9, Status: "published", Genre: "Action", Published: 2018-1-1)
Manga.create(title:"Your Name", user_id: 1, LatestChapter: 20, Status: "published", Genre: "Romance", Published: 2020-10-1)
Manga.create(title:"No Game No Life", user_id: 2, LatestChapter: 38, Status: "publishing", Genre: "Adventure", Published: 2010-1-1)

Review.create(manga_id: 1, title: "Amazing Read!")
Review.create(manga_id: 2, title: "Intersting!")
Review.create(manga_id: 3, title: "Gripping!")

User.create(email: "John@samsoc.com", password: "123456", id: 0)
User.create(email: "Emily@samsoc.com", password: "123456", id: 1)
User.create(email: "Apple@samsoc.com", password: "123456", id: 2)