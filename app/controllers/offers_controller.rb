class OffersController < ApplicationController

	def index
		@offer=Offer.where(:product_id '%#{params[:id]}%')
	end	

	def create
		@offer= Offer.new(params.require(:offer).permit(:razon, :precio, :tarjeta, :codigo, :product_id))
		@offer.client_id = current_user.id
		if @offer.save
			flash[:success]= "Se creado la oferta correctamente"
			redirect_to products_path
		else
			flash[:danger]= "Ocurrio un error al guardar la oferta"
			render :new
		end
	end
end