require 'test_helper'

class SubstancesControllerTest < ActionController::TestCase
  setup do
    @substance = substances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:substances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create substance" do
    assert_difference('Substance.count') do
      post :create, substance: { name: @substance.name }
    end

    assert_redirected_to substance_path(assigns(:substance))
  end

  test "should show substance" do
    get :show, id: @substance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @substance
    assert_response :success
  end

  test "should update substance" do
    put :update, id: @substance, substance: { name: @substance.name }
    assert_redirected_to substance_path(assigns(:substance))
  end

  test "should destroy substance" do
    assert_difference('Substance.count', -1) do
      delete :destroy, id: @substance
    end

    assert_redirected_to substances_path
  end
end
