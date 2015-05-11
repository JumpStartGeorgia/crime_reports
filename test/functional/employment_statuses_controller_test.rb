require 'test_helper'

class EmploymentStatusesControllerTest < ActionController::TestCase
  setup do
    @employment_status = employment_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employment_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment_status" do
    assert_difference('EmploymentStatus.count') do
      post :create, employment_status: { name: @employment_status.name }
    end

    assert_redirected_to employment_status_path(assigns(:employment_status))
  end

  test "should show employment_status" do
    get :show, id: @employment_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment_status
    assert_response :success
  end

  test "should update employment_status" do
    put :update, id: @employment_status, employment_status: { name: @employment_status.name }
    assert_redirected_to employment_status_path(assigns(:employment_status))
  end

  test "should destroy employment_status" do
    assert_difference('EmploymentStatus.count', -1) do
      delete :destroy, id: @employment_status
    end

    assert_redirected_to employment_statuses_path
  end
end
