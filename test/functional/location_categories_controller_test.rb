require 'test_helper'

class LocationCategoriesControllerTest < ActionController::TestCase
  setup do
    @location_category = location_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_category" do
    assert_difference('LocationCategory.count') do
      post :create, location_category: { name: @location_category.name }
    end

    assert_redirected_to location_category_path(assigns(:location_category))
  end

  test "should show location_category" do
    get :show, id: @location_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_category
    assert_response :success
  end

  test "should update location_category" do
    put :update, id: @location_category, location_category: { name: @location_category.name }
    assert_redirected_to location_category_path(assigns(:location_category))
  end

  test "should destroy location_category" do
    assert_difference('LocationCategory.count', -1) do
      delete :destroy, id: @location_category
    end

    assert_redirected_to location_categories_path
  end
end
