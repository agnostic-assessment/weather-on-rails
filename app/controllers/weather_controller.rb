require 'rest-client'
require 'json'

class WeatherController < ApplicationController
  def index
    flash.clear
    zipcode = request.GET["zipcode"]
    @from_cache = false
    if zipcode && !zipcode.empty?
      @from_cache = Rails.cache.exist?(zipcode)
      @weather = Rails.cache.fetch(zipcode, expires_in: 1.minutes) do
        WeatherFetcher.fetch(request.GET)
      end
    else
      @weather = WeatherFetcher.fetch(request.GET)
    end
  end
end
