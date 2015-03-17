require 'test_helper'

class UserCreatureMovesControllerTest < ActionController::TestCase
  setup do
    @user_creature_move = user_creature_moves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_creature_moves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_creature_move" do
    assert_difference('UserCreatureMove.count') do
      post :create, user_creature_move: { move_id: @user_creature_move.move_id, pp: @user_creature_move.pp, user_creature_id: @user_creature_move.user_creature_id }
    end

    assert_redirected_to user_creature_move_path(assigns(:user_creature_move))
  end

  test "should show user_creature_move" do
    get :show, id: @user_creature_move
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_creature_move
    assert_response :success
  end

  test "should update user_creature_move" do
    patch :update, id: @user_creature_move, user_creature_move: { move_id: @user_creature_move.move_id, pp: @user_creature_move.pp, user_creature_id: @user_creature_move.user_creature_id }
    assert_redirected_to user_creature_move_path(assigns(:user_creature_move))
  end

  test "should destroy user_creature_move" do
    assert_difference('UserCreatureMove.count', -1) do
      delete :destroy, id: @user_creature_move
    end

    assert_redirected_to user_creature_moves_path
  end
end
