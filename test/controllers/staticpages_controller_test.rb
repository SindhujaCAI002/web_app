require "test_helper"

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path
    assert_response :success
  end
  test "should get help" do
    get help_path
    assert_response :success
  end
  test "should get aboutpage" do
    get aboutpage_path
    assert_response :success
  end
end
