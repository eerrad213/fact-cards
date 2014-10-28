class CardsController < ApplicationController

	def new
	end
	
	def create
		render plain: params[:card].inspect
	end

	def show
	end

end
