class ProductsController < ApplicationController
def index
	@prod = Product.all

end
def new
end



def create
  @prod = (Product.where(params[:nombre]) or Product.where(params[:descripcion]))
  prod.save
  redirect_to Product_path

  
end

end
