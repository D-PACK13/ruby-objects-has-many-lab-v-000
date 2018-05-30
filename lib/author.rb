class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count	
    Song.all.count
  end
  
  def songs
    @songs
  end
  
end