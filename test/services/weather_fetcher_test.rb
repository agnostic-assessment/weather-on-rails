require "test_helper"

class WeatherFetcherTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "fetch weather data from api using zipcode" do
    address = Address.new({ zipcode: 95014 })
    weather = WeatherFetcher.fetch(address)
    assert_not_nil weather
    assert weather
    assert_equal("Cupertino", weather['location']['name'])
    assert_equal("California", weather['location']['region'])
    assert_equal("USA", weather['location']['country'])
    assert(weather['current']['temp_f'])
    assert(weather['current']['condition'])
    assert(weather['current']['humidity'])
    assert(weather['current']['precip_in'])
    assert(weather['current']['wind_mph'])
  end

  test "fetch weather data for invalid zipcode" do
    address = Address.new({ 'zipcode' => 533003 })
    weather = WeatherFetcher.fetch(address)
    assert_not weather
  end
end

