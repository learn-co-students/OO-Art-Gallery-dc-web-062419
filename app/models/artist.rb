class Artist

  attr_reader :name, :years_experience
  @@all  = []

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

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    paintings.map {|painting| painting.gallery.city}.uniq
  end

  def self.total_experience
    sum = 0
    self.all.each {|artist| sum += artist.years_experience}
    sum
  end

  def self.most_prolific
    count_hash = {}
    self.all.map {|artist|
      count = 0
      count_hash[artist] =
        artist.paintings.map {|painting| count += 1
        }[-1]
    }
    prolific_hash = {}
    count_hash.map {|artist, count|
      prolific_hash[artist] = count.to_f / artist.years_experience
    }
    prolific_hash.key(prolific_hash.values.max)
  end

  def create_painting(title,price,gallery,artist)
    Painting.new(title,price,gallery,self)
  end
end
