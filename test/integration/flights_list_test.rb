require "test_helper"

class FlightsListTest < ActionDispatch::IntegrationTest
  # def setup
  #   @flight = flights(:one)
  # end
    test "listing invalid" do
      get list_path
      assert_no_difference 'Flight.count' do
        post flights_path, params: {flight: {flight_code: 8567123 , date: 2021-01-19,
                                            start: "Chennai",destination: "Delhi", seats: 100}}

      end
      assert_template 'flights/listing'
    end

    test "listing with valid info" do
      get list_path
      #binding.pry
       assert_difference 'Flight.count' do
      post flights_path, params: {flight_code: 7123 , date: "2021-01-19",
                                start: "Chennai",destination: "Delhi", seats_avail: 100}#, as: :json
       end
    # binding.pry
    follow_redirect!
    assert_template 'flights/listing'
    # assert_redirected_to @listing
    #end
end
end