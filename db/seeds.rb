# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.delete_all
Post.delete_all
Comment.delete_all

User.create!(email: "email1@gmail.com", first_name: "Carlos", last_name: "Rencoret")
User.create!(email: "email2@gmail.com", first_name: "Juan", last_name: "Diaz")
User.create!(email: "email3@gmail.com", first_name: "Maria", last_name: "Gomez")
User.create!(email: "email4@gmail.com", first_name: "Luis", last_name: "Fernandez")
User.create!(email: "email5@gmail.com", first_name: "Ana", last_name: "Martinez")
User.create!(email: "email6@gmail.com", first_name: "Sofia", last_name: "Lopez")
User.create!(email: "email7@gmail.com", first_name: "Miguel", last_name: "Perez")
User.create!(email: "email8@gmail.com", first_name: "Laura", last_name: "Garcia")
User.create!(email: "email9@gmail.com", first_name: "Diego", last_name: "Rodriguez")
User.create!(email: "email10@gmail.com", first_name: "Lucia", last_name: "Sanchez")

post1 = Post.create!(title: "Epic Battles and Ancient Oaths in Roshar", content: "Brandon Sanderson’s 'The Stormlight Archive' introduces a world where ancient oaths and mystical powers drive epic battles and complex character arcs.", published: 1, author: "email1@gmail.com")
post2 = Post.create!(title: "Storm-Ravaged Land of Mystical Powers", content: "In 'The Stormlight Archive,' Roshar's storm-ravaged landscape and intricate magic systems create a backdrop for tales of heroism and ancient conflict.", published: 0, author: "email2@gmail.com")
post3 = Post.create!(title: "Radiants vs. Cosmic Forces in Epic Fantasy", content: "Epic battles and profound themes unfold in 'The Stormlight Archive,' a series where Radiants wield powerful Shardblades against dark, cosmic forces.", published: 1, author: "email3@gmail.com")
post4 = Post.create!(title: "Knights Radiant and Moral Dilemmas", content: "'The Stormlight Archive' features Knights Radiant and their Shardblades facing moral dilemmas and stormy battles, blending deep lore with gripping narratives.", published: 0, author: "email4@gmail.com")
post5 = Post.create!(title: "Storms and Magic Shape Nations' Fates", content: "'The Stormlight Archive' brings to life a world where storms and magic shape the fate of nations, offering an immersive blend of fantasy and intrigue.", published: 1, author: "email5@gmail.com")
post6 = Post.create!(title: "Heroes and Prophecies in Storm-Wracked World", content: "Set in a land ravaged by storms, 'The Stormlight Archive' features heroes and ancient prophecies, exploring deep lore and grandiose conflicts.", published: 0, author: "email6@gmail.com")
post7 = Post.create!(title: "Intertwined Quests and Ancient Powers", content: "Sanderson's series crafts an epic fantasy world where ancient powers and personal quests intertwine, revealing a richly detailed setting in 'The Stormlight Archive.'", published: 1, author: "email7@gmail.com")
post8 = Post.create!(title: "Surgebinding and Shardblades in Epic Scope", content: "'The Stormlight Archive' features Surgebinding and Shardblades defining the epic scope of a storm-wracked land with heroic struggles of great might.", published: 0, author: "email8@gmail.com")
post9 = Post.create!(title: "Mystical Forces and Intricate Plots", content: "'The Stormlight Archive' delves into a realm where mystical forces and intricate plots create a rich, immersive experience in lore rich world.", published: 1, author: "email9@gmail.com")
post10 = Post.create!(title: "Heroes Rise Against Cosmic Threats", content: "Heroes rise against cosmic threats in 'The Stormlight Archive,' blending deep lore with epic battles in a world shaped by storm-wielding knights.", published: 0, author: "email10@gmail.com")

Comment.create!(content: "Que buen post!", author: "email1@gmail.com", post: post1)
Comment.create!(content: "Que mal post!", author: "email2@gmail.com", post: post2)
Comment.create!(content: "Primer comentario", author: "email3@gmail.com", post: post3)
Comment.create!(content: "Segundo comentario", author: "email4@gmail.com", post: post4)
Comment.create!(content: "Tercer comentario", author: "email5@gmail.com", post: post5)
Comment.create!(content: "Cuarto comentario", author: "email6@gmail.com", post: post6)
Comment.create!(content: "Quinto comentario", author: "email7@gmail.com", post: post7)
Comment.create!(content: "Sexto comentario", author: "email8@gmail.com", post: post8)
Comment.create!(content: "Séptimo comentario", author: "email9@gmail.com", post: post9)
Comment.create!(content: "Octavo comentario", author: "email10@gmail.com", post: post10)
