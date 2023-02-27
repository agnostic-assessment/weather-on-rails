require 'rest-client'
require 'json'

class WeatherController < ApplicationController
  def index
    flash.clear
    address = Address.new(request.GET)
    @from_cache = false
    if address.has_zipcode?
      @from_cache = Rails.cache.exist?(address.zipcode)
      @weather = Rails.cache.fetch(address.zipcode, expires_in: 1.minutes) do
        WeatherFetcher.fetch(address)
      end
    else
      @weather = WeatherFetcher.fetch(address)
    end
  end
end
