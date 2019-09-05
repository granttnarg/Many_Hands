class InvitationsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @invitation = Invitation.new
    @spot = Spot.find(params[:spot_id])
    @creative = User.find(params[:creative_id])
    authorize @invitation
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @spot = Spot.find(params[:spot_id])
    @invitation.spot = @spot
    @user = User.find(params[:invitation][:creative_id])
    @invitation.user = @user
    authorize @invitation
    if @invitation.save
      redirect_to event_path(@spot.event)
    else
      render :new
    end
  end

  def invitation_params
    params.require(:invitation).permit(:message)
  end
end
