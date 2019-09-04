class ReviewsController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @request = Request.find(params[:request_id])
    @review.user_id = current_user.id
    @review.request_id = @request.id
    authorize @review
    authorize @request
    if @review.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
