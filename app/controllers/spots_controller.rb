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

    if params["submit-type"] == "Save & Search"
      if @spot.save
        redirect_to spot_creatives_path(@spot.id)
      else
        render :new
      end
    elsif params["submit-type"] == "Save"
      if @spot.save
        redirect_to event_path(@event)
      else
        render :new
      end
    end
  end

  def edit
    @spot = Spot.find(params[:id])
    authorize @spot
  end

  def update
    @spot = Spot.find(params[:id])
    authorize @spot

    if params["submit-type"] == "Save & Search"
      if @spot.update(spot_params)
        redirect_to spot_creatives_path(@spot.id)
      else
        render :new
      end
    elsif params["submit-type"] == "Save"
      if @spot.update(spot_params)
        redirect_to event_path(@spot.event)
      else
        render :new
      end
    end
  end

  def destroy
    @spot = Spot.find(params[:id])
    authorize @spot
    @event = @spot.event
    @spot.destroy
    redirect_to event_path(@event)
  end

  private

  def spot_params
    params.require(:spot).permit(:category, :role, :description)
  end
end
