require 'test_helper'

class SeriesTypesControllerTest < ActionController::TestCase
  setup do
    @series_type = series_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:series_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create series_type" do
    assert_difference('SeriesType.count') do
      post :create, series_type: { name: @series_type.name, schedule: @series_type.schedule }
    end

    assert_redirected_to series_type_path(assigns(:series_type))
  end

  test "should show series_type" do
    get :show, id: @series_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @series_type
    assert_response :success
  end

  test "should update series_type" do
    put :update, id: @series_type, series_type: { name: @series_type.name, schedule: @series_type.schedule }
    assert_redirected_to series_type_path(assigns(:series_type))
  end

  test "should destroy series_type" do
    assert_difference('SeriesType.count', -1) do
      delete :destroy, id: @series_type
    end

    assert_redirected_to series_types_path
  end
end
