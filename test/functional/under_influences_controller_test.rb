require 'test_helper'

class UnderInfluencesControllerTest < ActionController::TestCase
  setup do
    @under_influence = under_influences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:under_influences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create under_influence" do
    assert_difference('UnderInfluence.count') do
      post :create, under_influence: { name: @under_influence.name }
    end

    assert_redirected_to under_influence_path(assigns(:under_influence))
  end

  test "should show under_influence" do
    get :show, id: @under_influence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @under_influence
    assert_response :success
  end

  test "should update under_influence" do
    put :update, id: @under_influence, under_influence: { name: @under_influence.name }
    assert_redirected_to under_influence_path(assigns(:under_influence))
  end

  test "should destroy under_influence" do
    assert_difference('UnderInfluence.count', -1) do
      delete :destroy, id: @under_influence
    end

    assert_redirected_to under_influences_path
  end
end
