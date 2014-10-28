class CardsController < ApplicationController

	def index
		@cards = Card.all
	end

	def edit
		@card = Card.find(params[:id])
	end

	def new
		@card = Card.new
	end

	def create
		@card = Card.new(card_params)

		if @card.save
			redirect_to @card
		else
			render 'new'
		end
	end

	def show
		@card = Card.find(params[:id])
	end

	private
	def card_params
		params.require(:card).permit(:subject, :content, :fact, :references)
	end

end
