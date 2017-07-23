class Artist

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def genres
    songs.collect do |song|
      @genres << song.genre
    end
    @genres
  end


end
