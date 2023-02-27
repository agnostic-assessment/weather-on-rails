require "application_system_test_case"

class WeathersTest < ApplicationSystemTestCase
  test "visiting the weather index" do
    visit weather_index_url

    assert_selector "a", text: "Weather on Rails"
    assert_selector "h5", text: "Please enter the address for which you would like weather"
  end
end
