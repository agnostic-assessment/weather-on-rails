require "test_helper"

class WeatherFlowTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end

  test "can see the weather page" do
    get "/"
    assert_select "a", "Weather on Rails"
    assert_select "h5", "Please enter the address for which you would like weather"
  end
end
