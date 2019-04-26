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
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
    return @@artists
  end

  def self.genres
    return @@genres
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
if hash.include?(genre) != true
        hash << :genre => 1
      else
        hash[genre] += 1
      end

    end
    return hash
  end

  def self.artist_count

  end

end
