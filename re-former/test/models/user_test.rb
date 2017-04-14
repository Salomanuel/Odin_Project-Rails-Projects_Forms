require 'test_helper'

class UserTest < ActiveSupport::TestCase
	setup do
		@user = User.new(username:"Johnny Cage", email: "example@user.com")
	end

  test "it should just work" do
  	assert @user.valid?
  end

  test "username shouldn't be empty" do
  	@user.username = "   "
  	assert_not @user.valid?
  end

  test "username shouldn't be too long" do
  	@user.username = "a" * 40
  	assert_not @user.valid?
  end

  test "email shouldn't be blank" do
  	@user.email = "     "
  	assert_not @user.valid?
  end

  test "email shouldn't be too long" do
  	@user.email = "a" * 40
  	assert_not @user.valid?
  end
end
