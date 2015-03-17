require 'test_helper'

class UserCreaturesControllerTest < ActionController::TestCase
  setup do
    @user_creature = user_creatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_creatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_creature" do
    assert_difference('UserCreature.count') do
      post :create, user_creature: { creature_id: @user_creature.creature_id, nickname: @user_creature.nickname, user_id: @user_creature.user_id }
    end

    assert_redirected_to user_creature_path(assigns(:user_creature))
  end

  test "should show user_creature" do
    get :show, id: @user_creature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_creature
    assert_response :success
  end

  test "should update user_creature" do
    patch :update, id: @user_creature, user_creature: { creature_id: @user_creature.creature_id, nickname: @user_creature.nickname, user_id: @user_creature.user_id }
    assert_redirected_to user_creature_path(assigns(:user_creature))
  end

  test "should destroy user_creature" do
    assert_difference('UserCreature.count', -1) do
      delete :destroy, id: @user_creature
    end

    assert_redirected_to user_creatures_path
  end
end
