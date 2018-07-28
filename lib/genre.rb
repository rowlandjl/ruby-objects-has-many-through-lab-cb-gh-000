class Genre

  attr_reader :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end 
  end


end
