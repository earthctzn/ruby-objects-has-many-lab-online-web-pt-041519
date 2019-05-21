require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << @songs
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    @@all.compact.count
    binding.pry
  end
    
end 