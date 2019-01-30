require_relative './services/RandomPostcodes'

# This class will hold an array of postcodes
class Generator
  def postcodes
    RandomPostcodes.new
  end
end
