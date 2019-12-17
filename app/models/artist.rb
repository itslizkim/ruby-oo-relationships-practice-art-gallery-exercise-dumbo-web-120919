class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  # * `Artist#paintings`
# * Returns an `array` all the paintings by an artist

  def paintings
    Painting.all.select do |painting_instance|
      painting_instance.artist == self
    end
  end

  def galleries
    paintings.map do |gallery_instance|
      gallery_instance.gallery
    end
  end

  def cities
    galleries.map do |city|
      city.city
    end
  end
  
  def self.total_experience
    self.all.sum(&:years_experience)
  end

  def self.most_prolific
    self.all.max_by do |artist_instance|
      artist_instance.paintings.length / artist_instance.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end







# * `Artist#create_painting`
# * Given the arguments of `title`, `price` and `gallery`, 
#   creates a new painting belonging to that artist