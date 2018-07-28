class Artist

  @@all = []

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    self.genres = genre
    self.artist = self
  end 

  def songs
    Song.all.select do |s|
      s.artist == self
    end
  end

  def genres
  end

  def self.all
    @@all
  end

end
