class CategoriesController < ApplicationController
	def show
	end

	def edit
		@cate = Category.find(params[:id])
	end

	def update
		categoria = Category.find(params[:id])
		categoria.update_attributes(params.require(:category).permit(:nombre))
		redirect_to categories_path
	end

	def index
		@cate = Category.all
	end

	def new
 		@cate= Category.new
	end

	def create
		cate= Category.new(params.require(:category).permit(:nombre))
		cate.save
		redirect_to categories_path
	end

	def destroy
		categoria = Category.find(params[:id])
		categoria.destroy
		redirect_to categories_path
	end

end
