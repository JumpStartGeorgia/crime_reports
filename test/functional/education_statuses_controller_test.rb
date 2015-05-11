require 'test_helper'

class EducationStatusesControllerTest < ActionController::TestCase
  setup do
    @education_status = education_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_status" do
    assert_difference('EducationStatus.count') do
      post :create, education_status: { name: @education_status.name }
    end

    assert_redirected_to education_status_path(assigns(:education_status))
  end

  test "should show education_status" do
    get :show, id: @education_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @education_status
    assert_response :success
  end

  test "should update education_status" do
    put :update, id: @education_status, education_status: { name: @education_status.name }
    assert_redirected_to education_status_path(assigns(:education_status))
  end

  test "should destroy education_status" do
    assert_difference('EducationStatus.count', -1) do
      delete :destroy, id: @education_status
    end

    assert_redirected_to education_statuses_path
  end
end
