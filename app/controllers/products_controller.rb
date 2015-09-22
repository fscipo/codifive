class ProductsController < ApplicationController
def index
	@prod = Product.all

end

end