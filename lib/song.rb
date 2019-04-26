class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if @@artists.include?(artist) == false
      @@artists << artist
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count

  end

  def self.artist_count

  end

end
