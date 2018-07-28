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
    song = Song.new(name, self, genre)
    self.songs.genre << genre
    song.artist = self
  end

  def song
  end

  def genres
  end

  def self.all
    @@all
  end

end
