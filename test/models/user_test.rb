require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user =User.new(name: "sindhu", email: "sindhu@gmail.com", 
      password: "sindhuja" , password_confirmation: "sindhuja" )
end
test "should be valid" do
  assert @user.valid?
end
test "name should be present" do
  @user.name=""
  assert_not @user.valid?
end
test "email should be present" do
  @user.email=" "
  assert_not @user.valid?
end
test "email address should be unique" do
  same_user = @user.dup
  @user.save
  assert same_user.valid?
end
end
