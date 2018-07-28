class Artist

  @@all = []

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    self.genres = genre
    self.name = self
  end

  def songs
    Genre.all.select do |s|
      s.artist == self
    end
  end

  def genres
    self.songs.map { |s| s.genre }
  end

  def self.all
    @@all
  end

end
