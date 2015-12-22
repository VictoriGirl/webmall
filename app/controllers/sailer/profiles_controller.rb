module Sailer
  # ProfilesController
  class ProfilesController < ApplicationController
    before_action :authenticate_user!, :load_user
    before_action :load_resource, only: [:show, :update, :destroy, :edit]

    def new
      @resource = Profile.new
    end

    def create
      @resource = Profile.new(set_params.merge(user_id: @user.id))
      @resource.save ? (redirect_to @resource) : (render :new)
    end

    def show
    end

    def edit
    end

    def update
      @resource.update(set_params) ? (redirect_to @resource) : (render :edit)
    end

    private

    def load_user
      @user = current_user
    end

    def load_resource
      @resource = Profile.find(params[:id])
    end

    def set_params
      params.require(:profile).permit(:name, :adress, :phone)
    end
  end
end
