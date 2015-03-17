class CreatureLocationsController < ApplicationController
  before_action :set_creature_location, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creature_locations = CreatureLocation.all
    respond_with(@creature_locations)
  end

  def show
    respond_with(@creature_location)
  end

  def new
    @creature_location = CreatureLocation.new
    respond_with(@creature_location)
  end

  def edit
  end

  def create
    @creature_location = CreatureLocation.new(creature_location_params)
    @creature_location.save
    respond_with(@creature_location)
  end

  def update
    @creature_location.update(creature_location_params)
    respond_with(@creature_location)
  end

  def destroy
    @creature_location.destroy
    respond_with(@creature_location)
  end

  private
    def set_creature_location
      @creature_location = CreatureLocation.find(params[:id])
    end

    def creature_location_params
      params.require(:creature_location).permit(:location_id, :creature_id)
    end
end
