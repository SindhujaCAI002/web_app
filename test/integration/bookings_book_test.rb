require "test_helper"

class BookingsBookTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
   def setup
     @booking = bookings(:one)
   end
   test "booking should be invalid" do
   get book_path
  assert_no_difference 'Booking.count' do
    post book_path, params: {booking: { user_id: "" , flight_id: 2, bookstatus: "booked"}}
  end
    assert_template 'bookings/new'
  end
=begin
  test "booking should be valid" do
    get book_path
    #binding.pry
   assert_difference ('Booking.count') do
    post book_path, params: {booking: {user_id: session[:user_id] ,flight_id: @booking.flight_id,
                                              bookstatus: @booking.bookstatus}}
    end
     assert_redirected_to book_path(assigns(:booking))
   end
=end
test "cancel should be invalid" do
  
end
end
