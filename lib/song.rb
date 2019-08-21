class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, genre, artist)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end 