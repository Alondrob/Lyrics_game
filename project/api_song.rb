require 'open-uri'
require 'net/http'
require 'json'
require 'httparty'


# class ApiSong 

#     def initialize(artist, song = nil)
#         @artist = artist
#         @song = song
#     end

#     def request #Solid_Principles
#         uri = URI.parse(url)
#         response = Net::HTTP.get_response(uri)
#         # response.body
#         parsed_response(response.body)
#         # lyrics_data["lyrics"]
#     end

#     def lyrics
#         @response["lyrics"].gsub("\r\n", "\n\n")
#     end

#     def parsed_response(body)
#         @response = JSON.parse(body)
#     end

#     private # all methods below are closed to the current class, the client or dev can't acess the method below the Private method
#     def url
#        base_url =  "https://api.lyrics.ovh/v1/#{@artist}"
#                 if @song.nil?
#                     base_url
#                 else
#                     base_url + "/#{@song}"
#                 end

#     end


# end

class Api 

    def self.get_lyrics(artist, song)
        url = "https://api.lyrics.ovh/v1/#{artist}/#{song}"
        # binding.pry
        uri = URI.parse(url)
        request = Net::HTTP.get_response(uri)
        # binding.pry
        request.body
        request_2 = JSON.parse(request.body)
        @response = request_2["lyrics"].gsub("\r\n", "\n\n")
        
    end

end


#  puts Api.get_lyrics("michael_jackson", "billie_jean")

