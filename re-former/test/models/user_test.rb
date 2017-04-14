require 'test_helper'

class UserTest < ActiveSupport::TestCase
	setup do
		@user = User.new(username:"Johnny Cage", email: "example@user.com")
	end

  test "it should just work" do
  	assert @user.valid?
  end

  test "username shouldn't be empty" do
  	@user.name = "   "
  	assert_not @user.valid?
  end
end
