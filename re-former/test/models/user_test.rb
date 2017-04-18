require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(username: 	"Gianni",
  									 email: 		"gianni@example.com",
  									 password:  "moltogianni")
  end

  test "it should work" do
  	assert @user.valid?
  end

  test "it should have an username" do
  	@user.username = "    "
  	assert_not @user.valid?
  end

  test "it should have an email" do
  	@user.email = "    "
  	assert_not @user.valid?
  end

  test "it should have a password" do
  	@user.password = "     "
  	assert_not @user.valid?
  end

  # test "it should have a"
end
