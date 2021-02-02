# https://api.happi.dev/v1/music/artists/:id_artist/albums/:id_album/tracks/:id_track/lyrics

class Products
    # attr_accessor :key
    def initialize
    #   @key = key
    end
    def fetch(artist, album, track)
        @id_artist = 1
        @id_album = 1
        @id_album = 1
      connection = HTTP
      product_response = ProductRequest.new(id_artist, id_album, id_track).response
    #   fail LcboError, product_response.error_message unless product_response.success?
    #   product_response.product
      puts "hit fetch"
    end
  end


class ProductRequest #send data from my CLI 
    attr_reader :id_artist, :id_album, :id_track
    def initialize(id_artist, id_album, id_track)
      @id_artist = id_artist
      @id_album=id_album
      @id_album = id_track 
    end
    def response
      http_response = connection
      .headers()
        .get(url)
      ProductResponse.new(http_response)
    end
    def url
      "https://api.happi.dev/v1/music/artists/#{id_artist}/albums/#{id_album}/tracks/#{id_track}/lyrics"
    end
  end


 class ProductResponse #first step - get the data from the API 
    attr_reader :http_response
    DEFAULT_ERROR_MESSAGE = 'There was an error retrieving product details.'.freeze
    def initialize(http_response)
      @http_response = http_response
    end
    def success?
      http_response.status == 200
      puts "hit success"
    end
    def error_message
      data.fetch('message', DEFAULT_ERROR_MESSAGE)
    end
    def product
      Product.new(data.fetch('result'))
    end
    private
    def data
      http_response.parse(:json)
    end
  end

  new_var = Products.new
  p new_var.fetch(1, 1, 1)