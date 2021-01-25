require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get booking path" do
    get book_path
    assert_response :success
  end
   test "should get cancel path" do
   # binding.pry
     get cancel_path
    assert_response :success
   end
end
