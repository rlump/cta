require 'test_helper'

class BusBoardingsControllerTest < ActionController::TestCase
  setup do
    @bus_boarding = bus_boardings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bus_boardings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bus_boarding" do
    assert_difference('BusBoarding.count') do
      post :create, bus_boarding: { alightings: @bus_boarding.alightings, boardings: @bus_boarding.boardings, cross_street: @bus_boarding.cross_street, daytype: @bus_boarding.daytype, latitude: @bus_boarding.latitude, longitude: @bus_boarding.longitude, month_beginning: @bus_boarding.month_beginning, on_street: @bus_boarding.on_street, routes: @bus_boarding.routes, stop_id: @bus_boarding.stop_id }
    end

    assert_redirected_to bus_boarding_path(assigns(:bus_boarding))
  end

  test "should show bus_boarding" do
    get :show, id: @bus_boarding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bus_boarding
    assert_response :success
  end

  test "should update bus_boarding" do
    patch :update, id: @bus_boarding, bus_boarding: { alightings: @bus_boarding.alightings, boardings: @bus_boarding.boardings, cross_street: @bus_boarding.cross_street, daytype: @bus_boarding.daytype, latitude: @bus_boarding.latitude, longitude: @bus_boarding.longitude, month_beginning: @bus_boarding.month_beginning, on_street: @bus_boarding.on_street, routes: @bus_boarding.routes, stop_id: @bus_boarding.stop_id }
    assert_redirected_to bus_boarding_path(assigns(:bus_boarding))
  end

  test "should destroy bus_boarding" do
    assert_difference('BusBoarding.count', -1) do
      delete :destroy, id: @bus_boarding
    end

    assert_redirected_to bus_boardings_path
  end
end
