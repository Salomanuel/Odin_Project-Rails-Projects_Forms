class UsersController < ApplicationController
	def new
	end

	def create
		# @user = User.new(username: params[:username], 
		# 										email: params[:email])
		@user = User.new(user_params)
		if @user.valid?
			@user.save
			render html: "SAVED"
			# redirect_to new_user_path
		else
			render html: @user.errors.messages
			# render :new
		end
	end
end


private
	def user_params
		params.require(:user).permit(:username, :email)
	end

=begin
":username"=>"user1", ":email"=>"user1@user.us"
=end