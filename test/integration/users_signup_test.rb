require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "test for invalid signup" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {user: {name: "",
                                        email: "si@gma",
                                        password: "hey",
                                        password_confirmation: "hi"}}
      end
      assert_template 'users/new'
    end
    test "test for valid submission" do
      get signup_path
      assert_difference 'User.count', 1 do
        post users_path, params: {user: {name: "indhu", email: "indhu@gmail.com",
          password: "indhu123",password_confirmation: "indhu123"}}
        end
        follow_redirect!
        assert_template 'users/show'
      end
    
end
