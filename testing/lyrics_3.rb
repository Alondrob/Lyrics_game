require 'open-uri'
require 'net/http'
require 'json'
require 'httparty'


#"https://api.lyrics.ovh/v1/#{artist}/#{song}"

url = "https://api.lyrics.ovh/v1/poison/nothin_but_a_good_time"
url_2 = "https://api.lyrics.ovh/v1/bon_jovi/always"
url_3 = "https://api.lyrics.ovh/v1/queen/somebody_to_love"
url_4 = "https://api.lyrics.ovh/v1/ed_sheeran/perfect"

uri = URI.parse(url_4)
response = Net::HTTP.get_response(uri)
 response.body

 lyrics_data = JSON.parse(response.body)
 puts lyrics_data["lyrics"].gsub("\r\n", "\n\n")
 

 lyrics_data