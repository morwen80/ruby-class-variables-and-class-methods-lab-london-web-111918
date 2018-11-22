class Song
  
  attr_accessor :name, :artist, :genre 

  @@count = 0
  @@name = []
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@name << name 
    @@artists << artist 
    @@genres << genre 
  end
  
  # def self.name
  #   @@name
  # end
  
  def self.count
    @@count
  end
  
  def self.artists
    if self.include?(self) == false
      @@artists << self
    end
  end
  
  def self.genres
    if @@genres.include?(@@genres) == false
      @@genres << self
    end
  end
  
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] +=1 
      else
        artist_count[artist] = 1 
      end
    end
    artist_count
  end
  
def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

end