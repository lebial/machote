class PromotionsController < ApplicationController
	def index 
		@promotions = Promotion.all
	end

	def new; end

	def create 
	  if Promotion.create!(promotions_params)
	    redirect_to promotions_path	
 	  else
	    render 'new'
	  end
	end

	def edit
	@promotion = promotion
	end

	def update

	end

	private

	def promotions_params
		params.require(:promotions).permit(:img_url, :description)
	end

	def promotion
		Promotion.find(params[:id])
	end
end
