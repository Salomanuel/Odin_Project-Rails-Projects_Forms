require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new( username: "Manuel",
											email: "manuel@manu.el")
	end

	test "user should work" do
		assert @user.valid?
	end

	test "username should not be blank" do
		@user.username = "    "
		assert_not @user.valid?
	end

	test "username should not be too long" do
		@user.username = "a" * 61
		assert_not @user.valid?
	end

	test "email should not be blank" do
		@user.email = "     "
		assert_not @user.valid?
	end

	test "email should not be too long" do
		@user.email = "a" * 255 + "@user.com"
		assert_not @user.valid?
	end
end
