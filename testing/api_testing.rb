require 'open-uri'
require 'net/http'
require 'json'
require 'httparty'
require 'pry'

#  url = "https://api.lyrics.ovh/v1/poison/nothin_but_a_good_time"

#     uri = URI.parse(url)
#     response = Net::HTTP.get_response(uri)
#     response.body
#     response_2 = JSON.parse(response.body)
#     response_3 = response_2["lyrics"].gsub("\r\n", "\n\n")
#     # puts  response_3

class Api 

    def get_api(artist, song)
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

api = Api.new
puts api.get_api("poison", "nothin_but_a_good_time")