class PlacesController < ApplicationController

	def index
		@places = Place.order(:id).page(params[:page]).per(5)
	end
end
