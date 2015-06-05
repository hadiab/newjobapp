class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path(current_user.username), notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  private

  def find_profile
    @profile = Profile.find_by(user_id: current_user.id)
  end

  def profile_params
    params.require(:profile).permit(:last_name, :location, :telephone, :info, :file)
  end

end
