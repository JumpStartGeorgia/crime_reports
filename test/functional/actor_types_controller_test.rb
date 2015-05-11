require 'test_helper'

class ActorTypesControllerTest < ActionController::TestCase
  setup do
    @actor_type = actor_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actor_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actor_type" do
    assert_difference('ActorType.count') do
      post :create, actor_type: { name: @actor_type.name }
    end

    assert_redirected_to actor_type_path(assigns(:actor_type))
  end

  test "should show actor_type" do
    get :show, id: @actor_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actor_type
    assert_response :success
  end

  test "should update actor_type" do
    put :update, id: @actor_type, actor_type: { name: @actor_type.name }
    assert_redirected_to actor_type_path(assigns(:actor_type))
  end

  test "should destroy actor_type" do
    assert_difference('ActorType.count', -1) do
      delete :destroy, id: @actor_type
    end

    assert_redirected_to actor_types_path
  end
end
