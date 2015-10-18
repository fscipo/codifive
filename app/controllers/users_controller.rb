class UsersController < ApplicationController
	def show
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params.require(:user).permit(:nombre))
			flash[:success]= "Se modificado el usuario correctamente"
			redirect_to users_path
		else 
			flash[:notice]= "Ocurrio un error al guardar el usuario"
			render :edit
		end
	end

	def index
		@user = User.all
	end

	def new
 		@user= User.new
	end

	def create
		@user= User.new(params.require(:user).permit(:nombre, :apellido, :nacimiento, :email, :password))
		if @user.save
			flash[:success]= "Se ha creado el usuario correctamente"
			redirect_to root
		else
			flash[:notice]= "Ocurrio un error al guardar el usuario"
			render :new
		end
	end


	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to root
	end

end
