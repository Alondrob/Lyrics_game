music_data = {
  "grunge":{
    "Pearl Jam": [
      "Once", "Even Flow", "Alive", "Why Go", "Black", "Jeremy", "Oceans", "Porch", "Garden", "Deep", "Release"
      ],
    "Nirvana": [
      "About a Girl", "All Apologies", "Come as You Are"", ""Heart Shaped Box", "In Bloom", "The Man Who Sold the World", "Rape Me", "Smells Like Teen Spirit", "Where Did You Sleep Last Night?", "You Know You're Right"
    ]
  }
}

arr = music_data.each do |genre, artist|
  puts artist.values
end