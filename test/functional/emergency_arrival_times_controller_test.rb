require 'test_helper'

class EmergencyArrivalTimesControllerTest < ActionController::TestCase
  setup do
    @emergency_arrival_time = emergency_arrival_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergency_arrival_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergency_arrival_time" do
    assert_difference('EmergencyArrivalTime.count') do
      post :create, emergency_arrival_time: { name: @emergency_arrival_time.name }
    end

    assert_redirected_to emergency_arrival_time_path(assigns(:emergency_arrival_time))
  end

  test "should show emergency_arrival_time" do
    get :show, id: @emergency_arrival_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emergency_arrival_time
    assert_response :success
  end

  test "should update emergency_arrival_time" do
    put :update, id: @emergency_arrival_time, emergency_arrival_time: { name: @emergency_arrival_time.name }
    assert_redirected_to emergency_arrival_time_path(assigns(:emergency_arrival_time))
  end

  test "should destroy emergency_arrival_time" do
    assert_difference('EmergencyArrivalTime.count', -1) do
      delete :destroy, id: @emergency_arrival_time
    end

    assert_redirected_to emergency_arrival_times_path
  end
end
