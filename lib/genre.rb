class Genre

  attr_reader :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    self.songs.map { |s| s.artist }
  end 


end
