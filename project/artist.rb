require_relative './data.rb'
require 'pry'

class Artist 
    attr_accessor :songs, :name

    # def artist_data
    #     @y = []
    #     # x = music_data.each do |genre, artist| 
    #         @y << artist
    #         @m =  @y.each {|elm| elm.each {|key, value| puts key}}    
    #     end
    #     @m
    # #  binding.pry
    # end

    def initialize(name = nil)
        @name = name
        @songs = []
    end

    def display
       puts  @y 
    end

    def extracting_artist
    #   self.artist_data.each {|artist, songs| puts artist}
    end










end


artist = Artist.new

#  p artist.artist_data