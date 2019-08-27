class RequestsController < ApplicationController

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
    @request.user_id = current_user.id
    if @request.save
      redirect_to event_path(@spot.event)
    else
      render :new
    end
  end

  private

  def request_params
    params.require(:request).permit(:status, :note)
  end
end
