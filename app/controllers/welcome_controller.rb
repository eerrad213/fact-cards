class WelcomeController < ApplicationController
	def index
		@card = Card.order("rand()").limit(1)
	end

	def show
		redirect_to card_path(Card.last) and return
	end
end
