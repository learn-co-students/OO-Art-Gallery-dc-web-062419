class Gallery

  @@all = []

  attr_reader :name, :city, :artist

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
       painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting| 
      painting.artist
    end
  end

  def artist_names
    self.artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    self.paintings.max do |painting| 
      # binding.pry
      painting.price
    end
  end



end
