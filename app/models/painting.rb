class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self 
  end

def self.all
  @@all
end

def self.total_price
  total = 0
  Painting.all.map {|painting| total += painting.price}
  total
end

end
