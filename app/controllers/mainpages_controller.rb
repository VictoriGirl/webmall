# MainpagesController
class MainpagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user.present? ? current_user : nil
  end
end
