# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gossip.create title:"Aristote est mort", author:"furkan", content: "Je suis l'homme le plus beau."
Gossip.create title:"Jacques est mon grand amour", author:"fatin", content: "Je suis l'homme le plus fort."
Gossip.create title:"N'oublie pas le flocon", author:"cihad", content: "Je suis l'homme le plus intelligent."
Gossip.create title:"Une triste nuit", author:"betul", content: "Je suis l'homme le plus féminin."
Gossip.create title:"Joyeux anniversaire", author:"selcuk", content: "Je suis l'homme le plus résitant."
Gossip.create title:"Marc et ses petites", author:"selma", content: "Je suis l'homme le plus souriant."


Team.create first_name: "Albayrak", last_name:"furkan", age:26, competence: "Je suis l'homme le plus beau.", taste: "chocolat"
Team.create first_name: "Albayrak", last_name:"fatin", age:25, competence: "Je suis l'homme le plus fort.", taste: "fraise"
Team.create first_name: "Albayrak", last_name:"cihad", age:24, competence: "Je suis l'homme le plus intelligent.", taste: "ananas"
Team.create first_name: "Albayrak", last_name:"betul", age:18, competence: "Je suis l'homme le plus féminin.", taste: "pomme"
Team.create first_name: "Albayrak", last_name:"selcuk", age:56, competence: "Je suis l'homme le plus résitant.", taste: "orange"
Team.create first_name: "Albayrak", last_name:"selma", age:45, competence: "Je suis l'homme le plus souriant.", taste: "coco"
