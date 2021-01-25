require "test_helper"

class BookingTest < ActiveSupport::TestCase

  def setup
   @booking = Booking.new(user_id: 1 , flight_id: 2, bookstatus: "booked" )
   end
   test "should be valid" do
    #binding.pry
    assert @booking
   end
  test "user should be valid" do
   @booking.flight_id = ""
   assert_not @booking.valid?
  end
  test "user id should be present" do
    @booking.user_id = ""
    assert_not @booking.valid?
  end
end
