class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def users
    @users = policy_scope(User.where(is_creative: true))
  end

  def show
    @user = User.find(params[:id])
  end
end
