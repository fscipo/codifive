class ProductsController < ApplicationController
def index
	@prod = Product.all

end


#def create
 # @prod = (Product.where(params[:nombre]) or Product.where(params[:descripcion]))
  
#end


end
