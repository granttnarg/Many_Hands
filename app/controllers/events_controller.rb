class EventsController < ApplicationController
  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def index
    @events = policy_scope(Event)
  end

  def show
    @event = Event.find(params[:id])
    @spots = Spot.where(event_id: params[:id])
    # if @spots.count.positive?
    #   @users_requests = Request.where(user_id: @spots.first.id)
    # else
    #   @users_requests = false
    # end
    authorize @event
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    authorize @event
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy
    redirect_to root_path, notice: "Successfully deleted ;)"
  end

  private

  def event_params
    params[:event][:start_time]  = params[:event][:start_date].split(" ")[1]
    params[:event][:end_time]  = params[:event][:end_date].split(" ")[1]
    params.require(:event).permit(:name, :address, :venue_name, :start_date, :end_date, :start_time, :end_time, :about, :longitude, :latititude, :photo)
  end
end
