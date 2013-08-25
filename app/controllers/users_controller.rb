class UsersController < ApplicationController
	
	def create
		@user = User.new(params[:user])
		if @user.save
			render json: @user, status: :ok
		else
			render json: render json: {success: false, message: "Unable to create user"}, status: :unprocessable_entity
		end
	end

	def index
		@users = User.all
    	render json: @users, status: :ok
	end

	def show
		@user = User.find_by_id(params[:user][:id])
		if @user 
			render json: @user, status: :ok
		else
			render json: render json: {success: false, message: "Unable to find user"}, status: :unprocessable_entity
		end
	end

end
