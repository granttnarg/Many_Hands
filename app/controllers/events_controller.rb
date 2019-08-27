class EventsController < ApplicationController

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @events = Event.where(user_id: params[:id])
    @event = Event.find(event_params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :address, :venue_name, :start_date, :end_date, :start_time, :end_time, :about, :longitude, :latititude)
  end
end
