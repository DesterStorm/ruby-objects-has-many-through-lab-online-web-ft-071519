class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
 
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def self.all 
    @@all
    
  end
  
  def songs
    Song.all.select do |song|
      song.artist = self
    end
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end
  
  def genres 
    self.songs.collect {|song| song.genre}
  end
end



