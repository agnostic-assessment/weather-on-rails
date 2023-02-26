require 'rest-client'
require 'json'

class WeatherController < ApplicationController
  def index
    url = "https://api.weatherapi.com/v1/forecast.json"
    key = "18b7da6bac1c444d9a072935232502"
    address = request.GET["address"]
    city = request.GET["city"]
    state = request.GET["state"]
    zipcode = request.GET["zipcode"]
    @from_cache = false
    if zipcode && !zipcode.empty?
      @from_cache = Rails.cache.exist?(zipcode)
    end
    @full_address = "#{address} #{city} #{state} #{zipcode}"
    if !@full_address or @full_address.gsub(/\s+/, "").empty?
      return
    end
    @weather = Rails.cache.fetch(zipcode, expires_in: 1.minutes) do
      JSON.parse RestClient.get "#{url}?key=#{key}&q=#{@full_address}&days=7&aqi=no"
    end
    @current_temperature = @weather["current"]["temp_f"]
    @minimum_temperature = @weather["forecast"]["forecastday"][0]["day"]["mintemp_f"]
    @maximum_temperature = @weather["forecast"]["forecastday"][0]["day"]["maxtemp_f"]
  end
end
