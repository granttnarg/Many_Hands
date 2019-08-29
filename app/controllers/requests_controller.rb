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
    @request.user = current_user
    @request.pending!
    if @request.save
      redirect_to event_path(@spot.event)
    else
      render :new
    end
  end

  def update
    # @spot = Spot.find(params[:id])
    @request = Request.find(params[:id])
    authorize @request
    @spot = Spot.find(params[:spot_id])
    @event = @spot.event_id
    if @request.update(update_params)
      redirect_to event_path(@event)
    end

  end

  private

  def request_params
    params.require(:request).permit(:status, :note)
  end

  def update_params
    pp = params.require(:request).permit(:note)
    pp[:status] = params[:request][:status].to_i
    return pp
  end
end
