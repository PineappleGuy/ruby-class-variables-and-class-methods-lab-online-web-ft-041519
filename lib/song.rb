class Song
  attr_accessor :name, :artist, :genre

  @@song_count = 0

  def new(name, artist, genre)
    
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

end
