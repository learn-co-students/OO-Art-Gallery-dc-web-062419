class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total_price = 0
    self.all.each {|painting| total_price += painting.price}
    total_price
  end

end
