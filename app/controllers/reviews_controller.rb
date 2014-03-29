class ReviewsController < ApplicationController
	before_action :set_driver
	
  def index
    @reviews = @driver.reviews
  end

  def new
    @review = @driver.reviews.new
  end

  def create
    @review = @driver.reviews.new(review_params)
    if @review.save
      redirect_to movie_reviews_path(@driver), 
      			notice: "Thanks for your review!"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:name, :comment, :stars)
  end

  def set_driver
    @driver = Driver.find(params[:driver_id])
  end
end
