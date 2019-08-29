class CreativesController < ApplicationController
  def index
    @spot = Spot.find(params[:spot_id])
    @users = policy_scope(User).creatives.search_by_category_and_style_and_skill(set_categories(@spot.category))
    if @spot.role == ""
      @users
    else
      @users = policy_scope(User).creatives.search_by_category_and_style_and_skill(set_categories(@spot.category)).search_by_category_and_style_and_skill(@spot.role)
    end

  end

  def show
    @user = User.find(params[:id])
    @spot = Spot.find(params[:spot_id])
    authorize @user

  end

  private

  def set_categories(category)
    if category == 'sound'
      return 0
    elsif category == "visual"
      return 1
    elsif category == "performance"
      return 2
    else
      return 3
    end
  end

end
