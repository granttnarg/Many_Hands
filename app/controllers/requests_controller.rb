class RequestsController < ApplicationController

  def new
    @users_requests = Request.where(spot_id: params[:spot_id])
    @spot_confirmed = @users_requests.where(status: "confirmed")
    if @spot_confirmed.empty?
      @request = Request.new
      authorize @request
      @spot = Spot.find(params[:spot_id])
    else
      authorize Request
    end
    # There is a more elegant way to do ^
    # We should move the logic into the pundit (ask Leon)
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
