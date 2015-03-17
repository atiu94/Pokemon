class UserCreaturesController < ApplicationController
  before_action :set_user_creature, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_creatures = UserCreature.all
    respond_with(@user_creatures)
  end

  def show
    respond_with(@user_creature)
  end

  def new
    @user_creature = UserCreature.new
    respond_with(@user_creature)
  end

  def edit
  end

  def create
    @user_creature = UserCreature.new(user_creature_params)
    @user_creature.save
    respond_with(@user_creature)
  end

  def update
    @user_creature.update(user_creature_params)
    respond_with(@user_creature)
  end

  def destroy
    @user_creature.destroy
    respond_with(@user_creature)
  end

  private
    def set_user_creature
      @user_creature = UserCreature.find(params[:id])
    end

    def user_creature_params
      params.require(:user_creature).permit(:user_id, :creature_id, :nickname)
    end
end
