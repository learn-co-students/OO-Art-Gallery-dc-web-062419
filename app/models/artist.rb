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

def paintings
  Painting.all.select {|paintings| paintings.artist == self}
end

def galleries
  paintings.map {|painting| painting.gallery}
end

def cities
  galleries.map {|g| g.city}
end

def self.total_experience
  total = 0
  years = Artist.all.map {|artists| total += artists.years_experience}
  total
end

def self.most_prolific
  prolific = self.all.map do |artist|
    (artist.paintings.length / artist.years_experience.to_f)
  end.max
   self.all.select do |artist|
    (artist.paintings.length / artist.years_experience.to_f) == prolific
   end 
end 

def create_painting(title, price, gallery)
  new_painting = Painting.new(title, price, gallery, self)
end

end
