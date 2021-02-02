
require_relative './data.rb'
require_relative 'genre.rb'
require 'pry'

class User

    def initialize
        print_help
        read_input
      
    end



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
        @max_points = 10 
        @current_points = 0
        while @current_points < @max_points do 
            puts "current points is #{@current_points}"

            if  input == "80's rock"
                genre = Genre.new(input)
                genre.add_artists(music_data[input.downcase.to_sym])
                puts "OHH SUNSET STRIP, THOSE WERE THE TIMES!!"
                song = genre.artists.sample.songs.sample
                #   binding.pryq
                artist = song.artist
                if song.lyrics
                puts "====>"
                puts "Alright #{@name_input}, guess the song!"
                puts
                puts song.lyrics
                song_guess(song)
                artist_guess(artist)
                else
                genre_input
                end
        
            elsif input == "Best of classics"
                genre = Genre.new(input)
                genre.add_artists(music_data[input.downcase.to_sym])
                puts "You're an old school ha ?, let's test it !!"
                song = genre.artists.sample.songs.sample
                if song.lyrics
                puts "====>"
                puts "Alright #{@name_input}, guess the song!"
                puts
                puts song.lyrics
                song_guess(song)
                else
                genre_input
                end

            elsif input == "Grunge"
                genre = Genre.new(input)
                genre.add_artists(music_data[input.downcase.to_sym])
                puts "Seattle's grey sky and some rainy mood !!"
                song =  genre.artists.sample.songs.sample
                if song.lyrics
                puts "====>"
                puts "Alright #{@name_input}, guess the song!"
                puts
                puts song.lyrics
                song_guess(song)
                else
                genre_input
                end

            elsif input == "Guilty pleasures"
                genre = Genre.new(input)
                genre.add_artists(music_data[input.downcase.to_sym])
                puts "Don't worry, we all got those guilty pleasures !!"
                song = genre.artists.sample.songs.sample
                if song.lyrics
                puts "====>"
                puts "Alright #{@name_input}, guess the song!"
                puts
                puts song.lyrics
                song_guess(song)
                else
                genre_input
                end
        
            elsif input == "Head bangers"
                genre = Genre.new(input)
                genre.add_artists(music_data[input.downcase.to_sym])
                puts "SHAKE YOUR HAIR AND DO SOME AIR GUITAR !!"
                artist = genre.artists.name
                song = genre.artists.sample.songs.sample
                if song.lyrics
                puts "====>"
                puts "Alright #{@name_input}, guess the song!"
                puts
                puts song.lyrics
                song_guess(song)
                else
                    genre_input
                end

            elsif input == "That sweet piano"
                genre = Genre.new(input)
                genre.add_artists(music_data[input.downcase.to_sym])
                puts "Just relax and listen to these sweet notes !!"
                song = genre.artists.sample.songs.sample
                if song.lyrics
                puts "====>"
                puts "Alright #{@name_input}, guess the song!"
                puts
                puts song.lyrics
                song_guess(song)
                #   artist_guess(artist)
                else
                genre_input
                end
        
            else
                puts "Your entry is not valid , please enter a valid genre!"
                genre_input
            end
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

     def song_guess(song)
        puts
        puts "Type your guess!"
        puts "=============>"
        song_input = gets.strip      
       
        if song_input.downcase == song.name.downcase
            
            puts "Ohh wow!!, you know your lyrics !"
            puts "Now, can you guess the artist too ?"
            @current_points += 1
        else
            puts "Not quite :(, try again !"
        end
     end


     def artist_guess(artist)
        puts
        puts "Go ahead and try to guess the artist!"
        puts "=============>"
        artist_input = gets.strip      
        
        if artist_input.downcase == artist.name.downcase   
            puts "You really are a pro at this!!"
            @current_points += 1
        else
            puts "well 1 out of 2 ain't that shabby"
        end
     end
















end

alon = User.new

# test commit