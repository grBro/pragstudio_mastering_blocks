require_relative 'my_enumerable'

class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end

  def each_filename
  	basename = "#{name}-#{artist}".gsub(" ", "-").downcase
  	extensions = [".mp3", ".wav", ".ac"]
  	extensions.each { |ext| yield basename + ext }
  end
end

song1 = Song.new("Where is my mind", "The dust brothers", "4")
song2 = Song.new("The man comes around", "Jonny Cash", "5")
song3 = Song.new("Radioactive", "Imagine Dragons", "7")
song4 = Song.new("Somewhere I belong", "Linkin park", "8")

class Playlist
  #include Enumerable
  include MyEnumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
  	@songs.each do |song|
  	  yield song
  	end
  end

  def each_tagline 
  	@songs.each { |song| yield "#{song.name} - #{song.artist}" }
  end

  def each_by_artist(artist)
  	select { |song| song.artist == artist }.each { |song| yield song }
  end
end

playlist = Playlist.new("Favorite")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)
playlist.add_song(song4)


#playlist.each { |song| song.play }

# mind_songs = playlist.my_select { |song| song.name =~ /mind/ }
# p mind_songs

# short = playlist.detect { |song| song.duration.to_i < 6 }
# p short

# dragons = playlist.any? { |song| song.artist =~ /Dragons/ }
# p dragons

# longest = playlist.inject(0) do |sum, song| 
#   puts "Yielding #{sum}"
#   sum > song.duration.to_i ? sum : song.duration.to_i
# end
# puts longest


# song_labels = playlist.my_map { |song| "#{song.name} - #{song.artist}" }
# p song_labels

# song_labels = playlist.my_reject { |song| song.name =~ /mind/ }
# p song_labels


# total_duration = playlist.reduce(0) { |sum, song| sum + song.duration.to_i }
# p total_duration

# playlist.each_tagline { |tagline| puts tagline }


# playlist.each_by_artist("Linkin park") { |song| song.play }

# song1.each_filename { |filename| puts filename }

# p playlist.my_detect { |song| song.artist == "Linkin park" }

# p playlist.my_any? { |song| song.artist == "Linkin park" }

total_duration = playlist.my_reduce(0) { |sum, song| sum + song.duration.to_i }
p total_duration