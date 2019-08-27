class SpotsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @spot = Spot.new
    authorize @spot
    @event = Event.find(params[:event_id])
  end

  def create
    @spot = Spot.new(spot_params)
    authorize @spot
    @event = Event.find(params[:event_id])
    @spot.event = @event
    @spot.save
  end

  private

  def spot_params
    params.require(:spot).permit(:category, :role, :description)
  end
end
