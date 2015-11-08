class QuestionsController < ApplicationController

	def create
		@question= Question.new(params.require(:question).permit(:product_id, :pregunta, :respuesta))
		@question.client_id = current_user.id
		if @question.save
			flash[:success]= "Se creado la pregunta correctamente"
			redirect_to products_path
		else
			flash[:danger]= "Ocurrio un error al guardar la pregunta"
			render :new
		end
	end

end