require "test_helper"

class FlightTest < ActiveSupport::TestCase
  def setup
    @flight = Flight.new(flight_code: 47, date: "2021-02-03", start: "Chennai", 
                          destination: "Mumbai", seats_avail: 100)
  end
  test "should be valid" do
    assert @flight
  end
  test "flight code should be present" do
    @flight.flight_code = ""
    assert_not @flight.valid?
  end
  test "flight code should be unique" do
    du_flight = @flight.dup
    @flight.save
    assert_not du_flight.valid?
  end
end
