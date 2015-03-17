require 'test_helper'

class CreatureLocationsControllerTest < ActionController::TestCase
  setup do
    @creature_location = creature_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creature_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creature_location" do
    assert_difference('CreatureLocation.count') do
      post :create, creature_location: { creature_id: @creature_location.creature_id, location_id: @creature_location.location_id }
    end

    assert_redirected_to creature_location_path(assigns(:creature_location))
  end

  test "should show creature_location" do
    get :show, id: @creature_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creature_location
    assert_response :success
  end

  test "should update creature_location" do
    patch :update, id: @creature_location, creature_location: { creature_id: @creature_location.creature_id, location_id: @creature_location.location_id }
    assert_redirected_to creature_location_path(assigns(:creature_location))
  end

  test "should destroy creature_location" do
    assert_difference('CreatureLocation.count', -1) do
      delete :destroy, id: @creature_location
    end

    assert_redirected_to creature_locations_path
  end
end
