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
     #assert_select 'div#<CSS id for error explanation>'
      #assert_select 'div.<CSS class for field with errors'
    end
      test "test for valid signup" do
        get signup_path
        assert_no_difference ('User.count') do
          post users_path, params: {user: {name: "hi",
                                            email: "hi@gmail.com",
                                            password: "sindhu123",
                                            password_confirmation: "sindhu123"}}
           end
          follow_redirect!
          assert_template 'users/show'
          #assert_not flash.FILL_IN
    end
end
