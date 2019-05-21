class Artist 
  attr_accessor :name, :songs
  @@all_songs = []
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
    @@all_songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    add_song(Song.new(name))
  end
  
  def self.song_count
    @@all_songs.count 
  end
    
end 