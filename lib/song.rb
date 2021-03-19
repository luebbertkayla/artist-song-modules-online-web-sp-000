require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'

class Song
  
  extend Memorable::ClassMethods 
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
