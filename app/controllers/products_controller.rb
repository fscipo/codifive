class ProductsController < ApplicationController
def index
	if params[:nombre]
		@prod=Product.where("nombre like '%#{params[:nombre]}%' ")
	else 
		@prod = Product.all		
	end
	@prod =@prod.where("vencimiento> '#{Date.today}'")

end

def show
	@prod = Product.find(params[:id])
end

def new
end




end
