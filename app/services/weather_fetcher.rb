class WeatherFetcher
  def self.fetch(address)
    begin
      url = "https://api.weatherapi.com/v1/forecast.json"
      key = Rails.application.credentials.weatherapi.api_key
      address_line1 = address["address"]
      city = address["city"]
      state = address["state"]
      zipcode = address["zipcode"]
      full_address = "#{address_line1} #{city} #{state} #{zipcode}"
      return false if !full_address or full_address.gsub(/\s+/, "").empty?
      JSON.parse RestClient.get "#{url}?key=#{key}&q=#{full_address}&days=7&aqi=no"
    rescue
      return false
    end
  end
end
