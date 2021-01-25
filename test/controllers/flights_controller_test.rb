require "test_helper"

class FlightsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get listing" do
    get list_path
    assert_response :success
  end
end
