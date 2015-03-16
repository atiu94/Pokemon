class CreaturesController < ApplicationController
  before_action :set_creature, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creatures = Creature.all
    respond_with(@creatures)
  end

  def show
    respond_with(@creature)
  end

  def new
    @creature = Creature.new
    respond_with(@creature)
  end

  def edit
  end

  def create
    @creature = Creature.new(creature_params)
    @creature.save
    respond_with(@creature)
  end

  def update
    @creature.update(creature_params)
    respond_with(@creature)
  end

  def destroy
    @creature.destroy
    respond_with(@creature)
  end

  private
    def set_creature
      @creature = Creature.find(params[:id])
    end

    def creature_params
      params.require(:creature).permit(:name, :element, :description, :sprite)
    end
end
