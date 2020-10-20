require 'rest-client'
require 'json'

class GetGoogleCoffeeDetailsService
  def initialize(google_place_id)
    @google_place_id = google_place_id
  end

  def execute
    begin
      key = Rails.application.credentials.google_secret_key
      location = "#{@latitude},#{@longitude}"
      base_url = "https://maps.googleapis.com/maps/api/place/details/json?place_id=#{@google_place_id}&key=#{key}"

      response = RestClient.get(base_url)
      JSON.parse(response.body)
    rescue  RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end
