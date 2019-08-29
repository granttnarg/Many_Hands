class InvitationsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @invitation = Invitation.new
    @spot = Spot.find(params[:spot_id])
    authorize @invitation
   end

  def invitation_params
    params.require(:invitation).permit(:spot_id, :user_id)
  end
end
