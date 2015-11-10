class QuestionsController < ApplicationController


	def edit
		@q = Question.find(params[:id])
	end

	def update
		@q = Question.find(params[:id])
		if @q.update_attributes(params.require(:question).permit(:respuesta))
			flash[:success]= "Se ha enviado la respuesta correctamente"
			redirect_to product_path(@q.product_id)
		else 
			flash[:notice]= "Ocurrio un error al enviar la respuesta"
			render :edit
		end
	end

	def create
		@question= Question.new(params.require(:question).permit(:product_id, :pregunta, :respuesta))
		@question.client_id = current_user.id
		if @question.save
			flash[:success]= "Se creado la pregunta correctamente"
			redirect_to product_path(@question.product_id)
		else
			flash[:danger]= "Ocurrio un error al guardar la pregunta"
			redirect_to products_path
		end
	end

end