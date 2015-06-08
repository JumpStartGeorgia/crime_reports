require 'test_helper'

class GunPermsControllerTest < ActionController::TestCase
  setup do
    @gun_perm = gun_perms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gun_perms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gun_perm" do
    assert_difference('GunPerm.count') do
      post :create, gun_perm: { name: @gun_perm.name }
    end

    assert_redirected_to gun_perm_path(assigns(:gun_perm))
  end

  test "should show gun_perm" do
    get :show, id: @gun_perm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gun_perm
    assert_response :success
  end

  test "should update gun_perm" do
    put :update, id: @gun_perm, gun_perm: { name: @gun_perm.name }
    assert_redirected_to gun_perm_path(assigns(:gun_perm))
  end

  test "should destroy gun_perm" do
    assert_difference('GunPerm.count', -1) do
      delete :destroy, id: @gun_perm
    end

    assert_redirected_to gun_perms_path
  end
end
