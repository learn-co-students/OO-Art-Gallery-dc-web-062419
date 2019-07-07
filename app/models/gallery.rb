class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def show(painting)
    painting.gallery = self
  end

  def paintings
    Painting.all.select {|p| p.gallery == self}
  end

  def self.all
    @@all
  end

  def artists
    paintings.map {|p| p.artist}
  end

  def artists_names
    artists.map {|a| a.name}
  end

  def most_expensive_painting

    paintings.sort_by {|p| p.price }.first
  end

end
