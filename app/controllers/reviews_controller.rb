class ReviewsController < ApplicationController
	before_action :find_location
	before_action :find_review, only: [:edit, :update, :destroy]

	def show

	end

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.location_id = @location.id
		@review.user_id = current_user.id

		@review.rating = (@review.food + @review.ambience + @review.service + @review.value)/4.to_f

		if @review.save
			flash[:success] = "Your review and rating was added successful"
			redirect_to location_path(@location)
		else
			flash[:danger] = "Sorry, your review was not added"
			render 'new'
		end
	end

	def edit

	end

	def update

		@review.rating = (@review.food + @review.ambience + @review.service + @review.value)/4.to_f

		if @review.update(review_params)
			
			flash[:success] = "Your review was updated"
			redirect_to location_path(@location)
		else
			flash[:danger] = "Sorry, something was wrong"
			render 'edit'
		end
	end

	def destroy
		@review.destroy
    	redirect_to location_path(@location)
	end

	private

		def review_params
			params.require(:review).permit(:rating,
										:food,
										:ambience,
										:service,
										:value,
										:comment)
		end

		def find_location
			@location = Location.friendly.find(params[:location_id])
		end

		def find_review
			@review = Review.find(params[:id])
		end

end
