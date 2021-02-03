
require_relative './data.rb'
require_relative 'genre.rb'
require 'pry'

class User
    
    def initialize
        @songs_guessed = []
        print_help
        read_input
      
    end

    def get_songs_guessed
        @songs_guessed
    end

    def add_song_guess(song_name)
        @songs_guessed << song_name
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
        # puts genre_data.key?("Grunge".to_sym)
        input = gets.strip
        @max_points = 10 
        @current_points = 0
        while @current_points < @max_points do 
            puts "current points is #{@current_points}"

            puts genre_data[input.downcase.to_sym]
           
            if genre_data.key?(input.to_sym) == true
                genre_select(input.downcase.to_sym)
            else
                
                puts "Your entry is not valid , please enter a valid genre!"
                break
            end


        end
    end


    def genre_select(input)
        genre = Genre.new(input)
        genre.add_artists(music_data[input.downcase.to_sym])
        puts genre_data[input.to_sym]
        song = genre.artists.sample.songs.sample
        while get_songs_guessed.include?(song.name) do 
              song = genre.artists.sample.songs.sample
        end
        artist = song.artist
        song.lyrics = Api.get_lyrics(artist.name.gsub(" ", "_"), song.name.gsub(" ", "_"))
        
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
        add_song_guess(song.name.to_s)
        # puts get_songs_guessed.length
        puts "\nType your guess!"
        puts "=============>"
        song_input = gets.strip      
       
        if song_input.downcase == song.name.downcase
            
            puts "Ohh wow!!, you know your lyrics !"
            puts "Now, can you guess the artist too ?"
            @current_points += 1
        else
            puts "Not quite :(, try again !"
        end
        # puts song.genre.to_sym
        # puts song.artist.name.to_sym
        # puts song.name.to_sym
        # puts music_data[song.genre.to_sym][song.artist.name.to_sym]
        # # puts music_data[song.genre.to_sym][song.artist.name.to_sym].key?(song.name.to_sym)
        # puts song.name.downcase.to_s
        # puts "--"
        # found_index = -1
        # music_data[song.genre.to_sym][song.artist.name.to_sym].each_with_index do |elm_name, index|
        #     puts  elm_name == song.name 
        #     if  elm_name == song.name 
        #         found_index = index
        #         break
        #     end
        # end
        # if found_index > 0 
        #     puts "found"
        #    music_data[song.genre.to_sym][song.artist.name.to_sym].slice!(found_index)
        # end
        # puts music_data[song.genre.to_sym][song.artist.name.to_sym].length
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
        # system("clear") || system("cls")
     end
















end

alon = User.new

# test commit