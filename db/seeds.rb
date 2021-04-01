# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

superheroes = [
    {
      name: "Batman",
      age: 40,
      enjoys: "Long walks on the beach, staring at the sunset"
    },
    {
      name: "Iron-Man",
      age: 48,
      enjoys: "Messing with Spiderman in the afterlife"
    },
    {
      name: "Spiderman",
      age: 18,
      enjoys: "Getting movie reboots, Mary Jane"
    },
    {
      name: "Superman",
      age: 22,
      enjoys: "Blogging"
    },
    {
      name: "Joker",
      age: 35,
      enjoys: "HMU to find out :)"
    }
  ]
  
superheroes.each do |superhero|
    Superhero.create superhero
    puts "created #{superheroes}"
end


