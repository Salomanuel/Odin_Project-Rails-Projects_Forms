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

  test "name shouldn't be too long" do
  	@user.username = "a" * 40
  	assert_not @user.valid?
  end

  test "it should have an email" do
  	@user.email = "    "
  	assert_not @user.valid?
  end

  test "email shouldn't be too long" do
  	@user.email = "a" * 40 + "@example.com"
  	assert_not @user.valid?
  end

  test "it should have a password" do
  	@user.password = "     "
  	assert_not @user.valid?
  end

  test "password should have a minimum length" do
  	@user.password = "pass"
  	assert_not @user.valid?
  end

  # test "it should have a"
end
