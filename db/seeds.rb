# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)
rock_30 = Movie.create(title: "30 Rock", box_office_earnings: 151_000_022)
toy_story = Movie.create(title: "Toy Story", box_office_earnings: 151_000_011)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
r1 = Role.create(salary: 1000, character_name: "Tina Fey", movie_id: 3, actor_id: 2)
r2 = Role.create(salary: 2000, character_name: "Woody", movie_id: 4, actor_id: 7)
r3 = Role.create(salary: 3000, character_name: "Melony", movie_id: 1, actor_id: 3)
 

puts "Seeding done!"