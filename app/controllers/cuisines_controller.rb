class CuisinesController < ApplicationController
	authorize_resource

	def show
		@cuisine = Cuisine.find(params[:id])
		@locations = @cuisine.locations.paginate(page: params[:page], per_page: 4)
	end

	def new
		@cuisine = Cuisine.new
	end

	def create
		@cuisine = Cuisine.new(cuisine_params)
		if @cuisine.save
			flash[:success] = "Cuisine created successfully"
			redirect_to locations_path
		else
			render 'new'
		end
	end

	private

	def cuisine_params
		params.require(:cuisine).permit(:name)
	end

end