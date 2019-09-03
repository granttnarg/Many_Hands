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
    @events = current_user.events
    @new_event = Event.new
    @user = current_user
    @requests = Request.where(user: current_user)
    @user = current_user
  end

private

# def confirmed_requests(event)
#       event.spots.each do |spot|
#         return spot.requests.where(status: "confirmed").count
#       end
#     end
# end



end
