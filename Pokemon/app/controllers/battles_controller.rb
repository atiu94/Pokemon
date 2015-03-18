class BattlesController < ApplicationController
  before_action :set_battle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @battles = Battle.all
    respond_with(@battles)
  end

  def show
    respond_with(@battle)
  end

  def new
    @battle = Battle.new
    respond_with(@battle)
  end

  def edit
  end

  def create
    @battle = Battle.new(battle_params)
    @battle.save
    respond_with(@battle)
  end

  def update
    @battle.update(battle_params)
    respond_with(@battle)
  end

  def destroy
    @battle.destroy
    respond_with(@battle)
  end

  private
    def set_battle
      @battle = Battle.find(params[:id])
    end

    def battle_params
      params.require(:battle).permit(:creature_location_id, :user_creature_id, :user_creature_current_health_point, :creature_current_health_point)
    end
end
