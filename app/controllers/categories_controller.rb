class CategoriesController < ApplicationController
	
	def show
		@category = Category.find(params[:id])
		@locations = @category.locations.paginate(page: params[:page], per_page: 4)
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:success] = "Category created successfully"
			redirect_to locations_path
		else
			render 'new'
		end
	end

	private

	def category_params
		params.require(:category).permit(:name)
	end

end