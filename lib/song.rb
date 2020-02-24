require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable
  extend Findable 
  include Paramable
  
  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
  
  def self.find_by_name(name)
    self.detect{|a| a.name == name}
  end


end
