class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artists = []
  @@genres = []
  @genre_count = {}
    def initialize(name,artist,genre)
      @@count += 1
      @name = name
      @artist = artist
      @genre = genre
      @@artists << artist  #when intialized, the artist is shoveled into the end of the @@artist array
      @@genres << genre
    end
  
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
    
  end
  def self.genres
   @@genres.uniq
  end 
  def self.genre_count(genre,songs)
    if @genre_count[@genre]
      @genre_count[@genre] << [songs]
    else 
      @genre_count[@genre] = [songs]
    end
  end
end 

