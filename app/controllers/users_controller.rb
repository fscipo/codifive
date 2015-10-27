class UsersController < ApplicationController
	def show
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
	end

	def index
		@user = User.all
	end

	def new
 		@user= User.new
	end

	def create
		@user= User.new(params.require(:user).permit(:nombre, :apellido, :nacimiento, :email, :password))
	end


	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to root
	end

end
