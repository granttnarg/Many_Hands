class UsersController < ApplicationController

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :bio, :looking_for,
                                 :location, :profile_photo, :coverphoto,
                                 :skill, :is_creative, :category, :style, :photos)
  end
end
