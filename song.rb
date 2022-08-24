class Song
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  # NOTE: Here we have to create the 'self.all()' 'getter' method to get the value of the
  # class instance variable, '@@all':
  def self.all()
    @@all
  end

  def self.print_all_song_names()
    self.all.each do |song|
      puts song.name
    end
  end
end

hotline_bling = Song.new("Hotline Bling")
thriller = Song.new("Thriller")
ninety_nine_problems = Song.new("99 Problems")

puts "\nSong.all(): ", Song.all

puts "\nSong.print_all_song_names(): ", Song.print_all_song_names()
