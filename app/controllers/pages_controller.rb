class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def users
    @users = policy_scope(User).where(is_creative: true)
  end

  def show
    @user = User.find(params[:id])
  end

  def dashboard
    @spots = Spot.where(user: current_user)
    @events = Event.where(user:  current_user)
    @new_event = Event.new
    @requests = Request.where(user: current_user)
    @user = current_user

  end


end
