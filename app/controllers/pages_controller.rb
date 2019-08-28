class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def users
    @users = policy_scope(User)
    @users = User.search_by_category_and_style_and_skill("paint")
    @users = @users.where(is_creative: true)
  end

  def show
    @user = User.find(params[:id])
  end
end
