require 'test_helper'

class PoliceArrivalTimesControllerTest < ActionController::TestCase
  setup do
    @police_arrival_time = police_arrival_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:police_arrival_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create police_arrival_time" do
    assert_difference('PoliceArrivalTime.count') do
      post :create, police_arrival_time: { name: @police_arrival_time.name }
    end

    assert_redirected_to police_arrival_time_path(assigns(:police_arrival_time))
  end

  test "should show police_arrival_time" do
    get :show, id: @police_arrival_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @police_arrival_time
    assert_response :success
  end

  test "should update police_arrival_time" do
    put :update, id: @police_arrival_time, police_arrival_time: { name: @police_arrival_time.name }
    assert_redirected_to police_arrival_time_path(assigns(:police_arrival_time))
  end

  test "should destroy police_arrival_time" do
    assert_difference('PoliceArrivalTime.count', -1) do
      delete :destroy, id: @police_arrival_time
    end

    assert_redirected_to police_arrival_times_path
  end
end
