class ClassifiedsController < ApplicationController
	def new
		@classified = Classified.new
	end

	def create
		safe_params = params.require(:classified).permit(:title, :description, :url, :category_id)
		@classified = Classified.new safe_params
		@classified.category = Category.find safe_params[:category_id]
		@classified.save
		redirect_to @classified
	end

	def show
		@classified = Classified.find params[:id]
	end
end