class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting_instance|
      painting_instance.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist| 
      artist.name
    end
  end

  def most_expensive_painting
    paintings.max_by(&:price)
  end



end



# * `Gallery#artist_names`
# * Returns an `array` of the names of all artists that have a painting in a gallery

# * `Gallery#most_expensive_painting`
# * Returns an `instance` of the most expensive painting in a gallery