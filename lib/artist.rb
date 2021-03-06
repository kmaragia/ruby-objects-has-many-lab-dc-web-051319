require 'pry'

class Artist

  attr_accessor :name

  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.song_count
    @@song_count = Song.all.length
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}

  end

  def add_song(song)
    song.artist = self

  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self

  end

end
