require_relative '../config/environment.rb'

#Artist.new(name, years_experience)
a1 = Artist.new("Lawrence", 19)
a2 = Artist.new("Destiny", 10)
a3 = Artist.new("Darling", 2)

#Gallery.new(name, city)
g1 = Gallery.new("River Gallery", "St.Louis")
g2 = Gallery.new("Flower", "NYC")
g3 = Gallery.new("Inn Gallery", "London")

#Painting.new(title, price)
p1 = Painting.new("Rose", 345, a1, g2)
p4 = Painting.new("Moon River", 4692, a1,g3)
p2 = Painting.new("Winter Storm", 4_000_000, a2, g3)
p5 = Painting.new("Grassroots", 57_261, a2, g1)
p7 = Painting.new("Cats", 2343, a3, g3)
p3 = Painting.new("Pets", 781, a3, g1)
p6 = Painting.new("Horse Race", 726_190, a3, g2)


binding.pry

puts "Bob Ross rules."
