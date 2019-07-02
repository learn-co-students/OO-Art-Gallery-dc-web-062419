class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def cities
    cities = self.paintings.map {|painting| painting.gallery.city}
    cities.uniq
  end

  def self.total_experience
    @@all.sum do |artist|
      artist.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


  def self.most_prolific(years)
   candidates_of_year = @@all.select{|artist| artist.years_experience == years}
   candidates_of_year.sort_by {|artist| artist.paintings.length}.last
  end




end
