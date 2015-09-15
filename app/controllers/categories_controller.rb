class CategoriesController < ApplicationController
	def show
	end

	def index
		@cate = Category.all
	end

	def new
 		@cate= Category.new
	end

	def create
		cate= Category.new(params.require(:category).permit (:nombre))
		cate.save
		redirect_to categories_path
	end

end
