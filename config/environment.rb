require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

a1 = Artist.new("Leonardo", 2)
a2 = Artist.new("Raphael", 7)

g1 = Gallery.new("Louvre", "Paris")
g2 = Gallery.new("British Museum", "London")

p1 = Painting.new("Monalisa", a1, 400, g1)
p2 = Painting.new("Last Supper", a1, 600, g1)
p3 = Painting.new("The School of Athens", a2, 5000, g1)

a1.create_painting("Vitruvian Man", 1000, g2)

binding.pry