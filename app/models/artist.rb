# UNIFINISHED
# UNIFINISHED
# UNIFINISHED

class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def create_painting(title, price, gallery)
    Painting.new(title, self, price, gallery)
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def total_paintings
    paintings.size
  end

  def paintings_per_experience
    total_paintings * self.years_experience
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    galleries.map { |gallery| gallery.city }
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map { |artist| artist.years_experience }.sum
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.paintings_per_experience }
  end

end