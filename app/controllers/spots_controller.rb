class SpotsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @spot = Spot.new
  end

  def create
    raise
    @spot = Spot.new

  end
end
