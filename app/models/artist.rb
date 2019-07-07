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
    Painting.all.select {|p| p.artist == self}.each {|p| p p.title}
  end

  def galleries
    self.paintings.map {|p| p.gallery }.uniq!
  end

  def cities
    galleries.map {|g| g.city }.uniq!
  end

  def self.total_experience
    @@total_experience = 0
    self.all.each {|a| @@total_experience += a.years_experience }
    @@total_experience
  end

  def self.most_prolific
    tops = {}
    scores = Artist.all.map {|a| tops[a.name] = a.years_experience/a.paintings.length}
    @@score = 0
    top_artist = nil
    scores = Artist.all.each do |a| 
       ye = a.years_experience
       num_p = a.paintings.length
       while @@score < num_p/ye.to_f 
          @@score = num_p/ye.to_f
          top_artist = a 
       end
    end
    # puts top_artist.name 
    top_artist
  end

  def create_painting(title, price, gallery)  
    Painting.new(title, price, self).gallery = gallery
  end

end
