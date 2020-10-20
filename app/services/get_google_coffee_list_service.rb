require 'rest-client'
require 'json'

class GetGoogleCoffeeListService
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def execute
    begin
      key = Rails.application.credentials.google_secret_key
      location = "#{@latitude},#{@longitude}"
      base_url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=coffee+shops&location=#{location}&radius=5000&key=#{key}"

      response = RestClient.get(base_url)
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end
