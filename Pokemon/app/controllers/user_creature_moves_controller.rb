class UserCreatureMovesController < ApplicationController
  before_action :set_user_creature_move, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_creature_moves = UserCreatureMove.all
    respond_with(@user_creature_moves)
  end

  def show
    respond_with(@user_creature_move)
  end

  def new
    @user_creature_move = UserCreatureMove.new
    respond_with(@user_creature_move)
  end

  def edit
  end

  def create
    @user_creature_move = UserCreatureMove.new(user_creature_move_params)
    @user_creature_move.save
    respond_with(@user_creature_move)
  end

  def update
    @user_creature_move.update(user_creature_move_params)
    respond_with(@user_creature_move)
  end

  def destroy
    @user_creature_move.destroy
    respond_with(@user_creature_move)
  end

  private
    def set_user_creature_move
      @user_creature_move = UserCreatureMove.find(params[:id])
    end

    def user_creature_move_params
      params.require(:user_creature_move).permit(:user_creature_id, :move_id, :pp)
    end
end
