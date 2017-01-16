class ReviewsController < ApplicationController
 
  def index
   
  end

  def new
   @bike = Bike.find(params[:id])
   @review = @bike.reviews.build
  end
  
  def create 
    @bike = Bike.find(params[:id])
    @review = @bike.reviews.build(review_param)
    if @review.save 
        redirect_to new_review_path(:id => @bike.id)
    else 
        render new_review_path
    end 
  end 
  
  private 
  
  def review_param
      params.require(:review).permit(:title,:body)
  end 
  
end
