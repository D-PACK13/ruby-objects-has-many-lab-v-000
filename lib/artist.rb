class Artist
  
  attr_accessor :name
  
  @@soung_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@soung_count += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@soung_count += 1
  end
  
  def song_count
    @@song_count
  end
  
  def songs
    @songs
  end
  
end