class Song

  @@all = []

  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end

  def self.all
    @@all 
  end 

end
