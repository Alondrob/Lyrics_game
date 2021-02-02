
require_relative './data.rb'
require_relative 'genre.rb'
require 'pry'

class User

    def initialize
        print_help
        read_input
        # create_obj
    end

    # def print_help
    #     puts "|--------------COMMANDS---------------|"
    #     puts "|--- Type start to begin the game------|"
    #     puts "|-----Type quit exit the game------|"
    #     puts "|-------------------------------------|"
    # end

    def print_help
        puts  "Welcome Lyrics expert!"
        puts  "To start the game please type => start"
        puts  "To exit at any time just type => quit "
    end

    def start_program
        puts :"Please enter your name:"
        @name_input = gets.strip
        puts "Welcome #{@name_input}!!, please choose from the following genres!"
        puts
        pick_genre
        puts
        genre_input

    end

    def pick_genre
             music_data.keys.each {|i| puts i.capitalize}
    #          binding.pry
     end

    def genre_input
        puts ":=>"
        input = gets.strip
        #  binding.pry
        if  input == "80's rock"
            genre = Genre.new(input)
            genre.add_artists(music_data[input.downcase.to_sym])
              puts "OHH SUNSET STRIP, THOSE WERE THE TIMES!!"
              song = genre.artists.sample.songs.sample
              puts "====>"
              puts "Alright #{@name_input}, guess the song"
              puts
              puts song.lyrics
              song_guess
    
        elsif input == "Best of classics"
              genre = Genre.new(input)
              genre.add_artists(music_data[input.downcase.to_sym])
              puts "You're an old school ha ?, let's test it !!"
              song = genre.artists.sample.songs.sample
              puts "====>"
              puts "Alright #{@name_input}, guess the song"
              puts
              puts song.lyrics
    
        elsif input == "Grunge"
              genre = Genre.new(input)
              genre.add_artists(music_data[input.downcase.to_sym])
              puts "Seattle's grey sky and some rainy mood !!"
              puts genre.artists.sample.songs.sample.lyrics
              puts "====>"
              puts "Alright #{@name_input}, guess the song"
              puts
              puts song.lyrics

        elsif input == "Guilty Pleasures"
              genre = Genre.new(input)
              genre.add_artists(music_data[input.downcase.to_sym])
              puts "Don't worry, we all got those guilty pleasures !!"
              song = genre.artists.sample.songs.sample
              puts "====>"
              puts "Alright #{@name_input}, guess the song!"
              puts
              puts song.lyrics
    
        elsif input == "Head bangers"
              genre = Genre.new(input)
              genre.add_artists(music_data[input.downcase.to_sym])
              puts "SHAKE YOUR HAIR AND DO SOME AIR GUITAR !!"
              song = genre.artists.sample.songs.sample
              puts "====>"
              puts "Alright #{@name_input}, guess the song!"
              puts
              puts song.lyrics
    

        elsif input == "That sweet piano"
              genre = Genre.new(input)
              genre.add_artists(music_data[input.downcase.to_sym])
              puts "Just relax and listen to these sweet notes !!"
              song = genre.artists.sample.songs.sample
              puts "====>"
              puts "Alright #{@name_input}, guess the song!"
              puts
              puts song.lyrics
    
        else
              puts "Your entry is not valid , please enter a valid genre!"
              genre_input
        end
       
    end

    def read_input
        puts "Type here:"
        input = gets.strip
        if "quit" == input
            abort("Goodbye!")
        elsif "start" == input
            start_program
        else
            puts "Not a valid input, please re-type a valid input!"
            read_input
        end
    end

     def song_guess
        puts "Type your guess!"
        puts "=============>"
        song_input = gets.strip      
        song_name = song_input.downcase.gsub(" ", "_").to_s
        song_name
        if song_name == song.lyrics
            binding.pry
            puts "Ohh wow!!, you know your lyrics !"
            puts "Now, can you guess the artist too ?"
        else
            puts "Not quite :(, try again !"
        end
     end

end

alon = User.new

# test commit