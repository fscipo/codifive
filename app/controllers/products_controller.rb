class ProductsController < ApplicationController
def index
	@prod = Product.all
end

def show
	@prod = Product.find(params[:id])
end

end