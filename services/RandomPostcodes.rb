# 
require 'httparty'
require 'json'

class RandomPostcodes
  include HTTParty

  base_uri 'api.postcodes.io'

  def random_array(number_of_postcodes)
    # return array with specified number of postcodes
    array = []
    number_of_postcodes.times do 
      array << generate_random_postcode
    end
    array
  end

  def generate_random_postcode
    json_result = JSON.parse(self.class.get('/random/postcodes').body)
    json_result['result']['postcode']
  end
end
