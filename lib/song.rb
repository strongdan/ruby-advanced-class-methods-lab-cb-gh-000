class Song
  attr_accessor :name, :artist_name
  @@all = []
 
  def self.all
    @@all
  end

  def save
     self.class.all << self
  end
   
  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    @@all << song
    song
  end

  def self.create_by_name(song_name) # not yet working
    song = self.new
    song.name = song_name
    @@all << song
    song
  end

    def find_by_name(name)
      self.name
    end

    def create_from_filename(file_name)
      song = self.new
      artist_name = file_name.split(' - ').first
      artist.artist_name = artist_name
      song = file_name.split(' - ').last.split('.').first
      song.name = song
      @@all << artist_name
      @@all << song
      song
    end
    
    def self.destroy_all
      self.all.clear
    end
    
end
 