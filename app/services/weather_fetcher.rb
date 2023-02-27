class WeatherFetcher
  def self.fetch(address)
    begin
      url = "https://api.weatherapi.com/v1/forecast.json"
      key = Rails.application.credentials.weatherapi.api_key
      return false if not address.is_valid?
      JSON.parse RestClient.get "#{url}?key=#{key}&q=#{address.one_line}&days=7&aqi=no"
    rescue
      return false
    end
  end
end
