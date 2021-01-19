require "test_helper"

class FlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get listing" do
    get flights_listing_url
    assert_response :success
  end
end
