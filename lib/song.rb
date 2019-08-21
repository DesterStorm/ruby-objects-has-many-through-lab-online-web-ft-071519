class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, genre, artist = nil)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end 