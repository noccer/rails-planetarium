class PlanetsController < ApplicationController
	def index
	end

	def new
		@planet = Planet.new
	end

	def create
		@planet = Planet.create(planet_params) #create a new instance
		if @planet.valid?
			redirect_to planets_path
		else
			redirect_to new_planet_path
		end

	end

	def planet_params
		params.required(:planet).permit(:name, :diameter, :rings, :moons, :order, :explored, :image, :distance_from_sun, :atmosphere, :solid)
	end
end
