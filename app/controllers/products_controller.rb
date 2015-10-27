class ProductsController < ApplicationController

def calculo
	@fecha= Date.today + Integer(params['cantidad_dias'])
end	

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
			flash[:notice]= "Ocurrio un error al guardar el producto"
			render :new
		end
end

end
