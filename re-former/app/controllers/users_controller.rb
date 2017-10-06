class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		# @user = User.new(username: params[:username], 
		# 										email: params[:email],
		# 								 password: params[:password])
		if @user.valid?
			@user.save
			render inline:"<h1>ok</h1>"
		else
			render inline:"<h1>oh no</h1>"
		end
	end
	
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else
			render inline: "<h1>Oh no</h1>"
		end
	end


	private
		def user_params
			params.require(:user).permit(:username, :password, :email)
		end

end