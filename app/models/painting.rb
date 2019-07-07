class Painting

  attr_reader :title,  :artist
  attr_accessor :gallery, :price 

  @@all = []
  @@total_price = 0

  def initialize(title, price, artist)
    @title = title
    @price = price
    @gallery = gallery
    self.class.all << self
    @artist = artist
  end

  def self.all
    @@all
  end

  def total_price
    @@all.each {|p| total_price += p.price}
  end

end
