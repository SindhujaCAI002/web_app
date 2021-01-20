require "test_helper"
def setup
  @user = users(:hi)
  @other_user = users(:he)
  end
class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end 
end
