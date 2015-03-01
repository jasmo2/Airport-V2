class PassengersController < ApplicationController
	def index
		@flight = Flight.find(params[:flight_id])
	end
	def show
		@passenger = Passenger.find(params[:id])
	end
end
