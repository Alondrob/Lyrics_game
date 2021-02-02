  def song_guess#(input)
        # input = input.to_s
        song_input = gets.strip      
        song_name = song_input.downcase.gsub(" ", "_").to_s
        song_name
  end

  puts song_guess