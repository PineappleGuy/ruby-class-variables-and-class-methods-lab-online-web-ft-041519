class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}
  @@artist_hash ={}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
  return @@artist_hash.keys
  end

  def self.genres
    return @@genre_hash.keys
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_hash.include?(genre) != true
        @@genre_hash[genre] = 1
      else
        @@genre_hash[genre] += 1
      end
    end
    return @@genre_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_hash.include?(artist) != true
        @@artist_hash[artist] = 1
      else
        @@artist_hash[artist] += 1
      end
    end
    return @@artist_hash
  end
end
