class Artist 
  attr_accessor :name, :songs
  @@self = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
    @songs.count 
  end
    
end 