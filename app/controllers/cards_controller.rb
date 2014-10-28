class CardsController < ApplicationController

	before_filter :authorize, only: [:edit, :update]

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

	def update
		@card = Card.find(params[:id])

		if @card.update(card_params)
			redirect_to @card
			#  if @article.update_attributes(params[:article])
			# redirect_to @article, notice: "Article has been updated."
		else
			render 'edit'
		end
	end

	def destroy
		@card = Card.find(params[:id])
		@card.destroy

		redirect_to cards_path
	end

	private
	def card_params
		params.require(:card).permit(:subject, :content, :fact, :references)
	end

end
