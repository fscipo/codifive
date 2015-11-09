class ProductsController < ApplicationController

def calculo
	@fecha= Date.today + Integer(params['cantidad_dias'])
end	

def index
	if params[:search]
		@prod=Product.search(params[:search])
	else 
		@prod = Product.all		
	end
	@prod =@prod.where("vencimiento> '#{Date.today}'")

end

def show
	@prod = Product.find(params[:id])
	@q = Question.where(product_id: @prod.id)
	if current_user
		o = Offer.where(product_id: @prod.id, client_id: current_user.id)
		@ya_oferto = o.empty?
		if @ya_oferto && (current_user.id != @prod.user_id)
			@offer = Offer.new
		end
		@question = Question.new
	end
end

def new
	@prod= Product.new
end

def create
	fecha= Date.today + Integer(params['cantidad_dias'])
	@prod= Product.new(params.require(:product).permit(:nombre, :category_id, :descripcion, :foto).merge(vencimiento: fecha))
	@prod.user_id = current_user.id
		if @prod.save
			flash[:success]= "Se creado el producto correctamente"
			redirect_to products_path
		else
			flash[:danger]= "Ocurrio un error al guardar el producto"
			render :new
		end
end

end
