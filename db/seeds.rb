# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

travel = Category.create(name: "Travel")
personal = Category.create(name: "Personal")
financial = Category.create(name: "Financial")
professional = Category.create(name: "Professional")
fun = Category.create(name: "Fun")
other = Category.create(name: "Other")

Dream.create(name: "Travel to Tahiti", description: "Tahiti is the highest and largest island in French Polynesia", image_url: "https://www.planetware.com/wpimages/2019/04/french-polynesia-tahiti-top-resorts-conrad-bora-bora-nui.jpg", achieved: false, date_achieved: Date.today-1, category_id: travel.id)
Dream.create(name: "Study Web Development at Flatiron School", description: "I have always dreamed of learning how to build nice applications for the web", image_url: "https://images.ctfassets.net/hkpf2qd2vxgx/5I5Y0ObV2M4uOkSzaGGbky/5fe42588d027728eebbf391632802b52/campus-4.jpg_w_1952", achieved: true, date_achieved: Date.today-120, category_id: professional.id)