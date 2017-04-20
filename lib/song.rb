class Song
  attr_accessor :name, :artist_name
  @@songs = []
 
  def self.all
    @@songs
  end
 
  def save
    self.class.songs << self
  end

  def self.create
      song = self.new
      @@songs << song
      song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    @@songs << song
    song
  end

  def self.create_by_name(song_name)
    song = self.new
    song.name = song_name
    @@songs << song
    song
  end

  def self.find_by_name(name)
    @@songs.detect{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name)
      return name
    else
      create_by_name(name)
    end
  end
  
  def self.destroy_all
    self.all.clear
  end
end