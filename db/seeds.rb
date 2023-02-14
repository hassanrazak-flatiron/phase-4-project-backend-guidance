# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

rochelle = User.create!(first_name:"Rochelle", last_name:"Katzman", email: "rochelleK@gmail.com",password:'1234')
veronique = User.create!(first_name:"Veronique", last_name:"Cadet", email: "vero-cadet@gmail.com",password:'1234')
hassan = User.create!(first_name:"Hassan", last_name:"Razak", email: "hassan-razak@gmail.com",password:'1234')
