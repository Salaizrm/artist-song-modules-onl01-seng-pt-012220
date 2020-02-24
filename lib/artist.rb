require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable
  extend Findable
  include Paramable

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  def find_by_name(name)
    self.detect {|a| a.name == name}
  end


end
