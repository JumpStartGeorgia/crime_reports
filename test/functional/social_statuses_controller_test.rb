require 'test_helper'

class SocialStatusesControllerTest < ActionController::TestCase
  setup do
    @social_status = social_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_status" do
    assert_difference('SocialStatus.count') do
      post :create, social_status: { name: @social_status.name }
    end

    assert_redirected_to social_status_path(assigns(:social_status))
  end

  test "should show social_status" do
    get :show, id: @social_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_status
    assert_response :success
  end

  test "should update social_status" do
    put :update, id: @social_status, social_status: { name: @social_status.name }
    assert_redirected_to social_status_path(assigns(:social_status))
  end

  test "should destroy social_status" do
    assert_difference('SocialStatus.count', -1) do
      delete :destroy, id: @social_status
    end

    assert_redirected_to social_statuses_path
  end
end
