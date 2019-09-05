class ProfilesController < ApplicationController


  def edit
    authorize current_user
  end

  def update
    authorize current_user
    if current_user.update(user_params)
      create_pictures
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :bio, :looking_for, :embed,
                                 :location, :profile_photo, :coverphoto,
                                 :skill, :is_creative, :category, :style, :profile_photo_cache, :coverphoto_cache)
  end

  def create_pictures
    images = params.dig(:user, :photos) || []
    images.each do |image|
      current_user.photos.create(photo: image)
    end
  end
end
