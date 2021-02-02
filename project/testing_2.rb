require_relative './data.rb'
 require 'pry'
 
class Genre
    
    def initialize(name = nil)
        @name = name
        create_obj
    end
    def create_obj
          puts "select Genre"
          puts "===>"  
          genre_name = gets.strip 
          genre = music_data.keys.each {|genre_name| Genre.new(genre_name)}
          binding.pry
    end

end

   genre = Genre.new
   p genre