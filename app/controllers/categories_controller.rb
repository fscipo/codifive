class CategoriesController < ApplicationController
	def show
	end

	def edit
		@cate = Category.find(params[:id])
	end

	def update
		@cate = Category.find(params[:id])
		if @cate.update_attributes(params.require(:category).permit(:nombre))
			flash[:success]= "Se modificado la categoria correctamente"
			redirect_to categories_path
		else 
			flash[:notice]= "Ocurrio un error al guardar la categoria"
			render :edit
		end
	end

	def index
		@cate = Category.all
	end

	def new
 		@cate= Category.new
	end

	def create
		@cate= Category.new(params.require(:category).permit(:nombre))
		if @cate.save
			flash[:success]= "Se creado la categoria correctamente"
			redirect_to categories_path
		else
			flash[:notice]= "Ocurrio un error al guardar la categoria"
			render :new
		end
	end


	def destroy
		categoria = Category.find(params[:id])
		categoria.destroy
		redirect_to categories_path
	end

end
