class OffersController < ApplicationController



	def create
		@offer= Offer.new(params.require(:offer).permit(:razon, :client_id, :precio, :tarjeta, :codigo, :client_id)
		if @offer.save
			flash[:success]= "Se creado la oferta correctamente"
			redirect_to products_path
		else
			flash[:danger]= "Ocurrio un error al guardar la oferta"
			render :new
		end
	end
end