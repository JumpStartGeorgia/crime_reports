require 'test_helper'

class CrimBgsControllerTest < ActionController::TestCase
  setup do
    @crim_bg = crim_bgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crim_bgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crim_bg" do
    assert_difference('CrimBg.count') do
      post :create, crim_bg: { name: @crim_bg.name }
    end

    assert_redirected_to crim_bg_path(assigns(:crim_bg))
  end

  test "should show crim_bg" do
    get :show, id: @crim_bg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crim_bg
    assert_response :success
  end

  test "should update crim_bg" do
    put :update, id: @crim_bg, crim_bg: { name: @crim_bg.name }
    assert_redirected_to crim_bg_path(assigns(:crim_bg))
  end

  test "should destroy crim_bg" do
    assert_difference('CrimBg.count', -1) do
      delete :destroy, id: @crim_bg
    end

    assert_redirected_to crim_bgs_path
  end
end
