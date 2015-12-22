# MainpagesController
class MainpagesController < ApplicationController
  def index
    @user = current_user.present? ? current_user : nil
    redirect_to new_profile_path if @user.present? && @user.profile.blank?
  end
end
