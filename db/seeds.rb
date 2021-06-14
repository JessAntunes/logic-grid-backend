# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all

Game.create({

    title: "Planetary Gazing",
    description: "Four close friends (Sally, Becky, Joann, and Jill) attended the same college and shared an interest in astronomy. Using the clues, determine which woman saw which planet while looking through her telescope, where she was born, and how much she earns.",
    clues: ["The person whomoved to Tampa is not Jill.", "The friend with the $122,000 salary is Sally.", "The friend who moved to Tampa didn't observe Saturn or Mercury through her telescope.", "The friend who moved to Houston earns less than her friend in Tampa.", "The friend with the $95,000 salary now lives in Los Angeles.", "Either the friend living in Los Angeles or the friend who moved to Houston caught a great view of Jupiter through her telescope.", "The friend who lives in Tampa earns more than the friend who pointed her telescope at Jupiter.", "The woman living in Los Angeles didn't observe Mercury through her telescope and is not Jill.", "Of Joann and the amateur astronomer who pointed her telescope at Saturn, one now lives in Houston and the other earns $56,000 per year.", "The one whith the $122,000 salary didn't observe Mercury through her telescope.", "The person living in Tampa is not Joann.", "The person who found employment in Detroit is not Becky." ],
    solution: [["", "", "", "O", "", "O", "", "", "", "", "O", "", "O", "", "", ""], ["", "", "", "O", "", "", "O", "", "O", "", "", "", "", "0", "", ""], ["", "", "O", "", "", "", "", "O", "O", "", "", "", "", "O", "", ""], ["", "", "O", "", "O", "", "", "", "", "", "", "O", "", "O", "", ""], ["O", "", "", "", "", "O", "", "", "", "", "", "O", "", "", "O", ""], ["", "", "O", "", "O", "", "", "", "", "O", "", "", "", "", "", "O"]],
    top_header: ["Name", "Planet", "City"],
    top_label: ["Sally", "Joann", "Becky", "Jill", "Jupiter", "Mars", "Mercury", "Saturn", "Los Angeles", "Tampa", "Detroit"],
    side_header: ["Income", "City", "Planet"],
    side_label: ["$56,000", "$82,000", "$95,000", "$122,000", "Los Angeles", "Tampa", "Detroit", "Jupiter", "Mars", "Mercury", "Saturn"]


})

puts "Seeded and Succeeded!"