class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end

  def get_paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    self.get_paintings.map {|painting| painting.artist}
  end

  def artist_names
    artists = self.artists.map {|artist| artist.name}
    artists.uniq
  end

  def most_expensive_painting
   self.get_paintings.sort_by {|painting| painting.price}.last
  end
        
      
end
