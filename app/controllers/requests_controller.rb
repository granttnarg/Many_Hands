class RequestsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @request = Request.new
    authorize @request
    @spot = Spot.find(params[:spot_id])
  end

  def create
    @request = Request.new(request_params)
    authorize @request
    @spot = Spot.find(params[:spot_id])
    @request.spot = @spot
    @user = current_user
    @request.user = @user
    @request.save
  end

  private

  def request_params
    params.require(:request).permit(:status, :note)
  end
end
