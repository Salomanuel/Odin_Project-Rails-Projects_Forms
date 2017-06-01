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

	test "valid emails should be valid" do
		valid_emails = ["user@example.com",
										"USER@foo.COM",
										"A_US-ER@foo.bar.org",
										"first.last@foo.jp",
										"alice+bob@baz.cn"]
		valid_emails.each do |valid_address|
			@user.email = valid_address
			assert @user.valid?
		end
	end

	test "invalid emails should NOT be valid" do
		invalid_emails = ["user@example,com",
											"user_at_foo.org",
											"user.name@example",
											"foo@bar_baz.com",
											"foo@bar+baz.com"]
		invalid_emails.each do |invalid_address|
			@user.email = invalid_address
			assert_not @user.valid?
		end
	end
end
