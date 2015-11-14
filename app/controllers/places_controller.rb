class PlacesController < ApplicationController

	def index
		@places = Place.order(:id).page(params[:page]).per(4)
	end

	def new
		@place = Place.new
	end

end
