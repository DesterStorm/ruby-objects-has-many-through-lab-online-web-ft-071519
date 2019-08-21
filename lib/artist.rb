# class Artist
#   attr_accessor :name
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @songs = []
#     @@all << self
#   end
 
#   def add_song(song)
#     @songs << song
#     song.artist = self
#   end
  
#   def self.all 
#     @@all
    
#   end
  
#   def songs
#     Song.all.select do |song|
#       song.artist = self
#     end
#   end
  
#   def new_song(name, genre)
#     new_song = Song.new(name, self, genre)
#   end
  
#   def genres 
#     self.songs.collect {|song| song.genre}
#   end
# end



class Artist 

   attr_accessor :name
  @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def songs
    Song.all.select {|song| song.artist == self}
  end

   def genres
    songs.map {|song| song.genre}
  end

   def self.all
    @@all
  end

   def new_song(song, genre)
    Song.new(name, self, genre)
  end


 end 

