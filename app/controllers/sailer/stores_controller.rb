module Sailer
  # StoresController
  class StoresController < ApplicationController
    before_action :authenticate_user!, :load_user
    before_action :load_resource, only: [:show, :update, :destroy, :edit]

    def new
      @resource = Store.new
    end

    def create
      @resource = Store.new(set_params.merge(profile_id: @user.profile.id))
      @resource.save ? (redirect_to @resource) : (render :new)
    end

    def show
    end

    def edit
    end

    def update
      @resource.update(set_params) ? (redirect_to @resource) : (render :edit)
    end

    def destroy
      @resource.delete
      redirect_to profile_path(@user.profile)
    end

    private

    def load_user
      @user = current_user
    end

    def load_resource
      @resource = Store.find(params[:id])
    end

    def set_params
      params.require(:store).permit(:name, :cathegory, :speciality, :active, :buying_count, :description)
    end
  end
end
