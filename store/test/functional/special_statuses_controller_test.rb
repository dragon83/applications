require 'test_helper'

class SpecialStatusesControllerTest < ActionController::TestCase
  setup do
    @special_status = special_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_status" do
    assert_difference('SpecialStatus.count') do
      post :create, special_status: { name: @special_status.name }
    end

    assert_redirected_to special_status_path(assigns(:special_status))
  end

  test "should show special_status" do
    get :show, id: @special_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_status
    assert_response :success
  end

  test "should update special_status" do
    put :update, id: @special_status, special_status: { name: @special_status.name }
    assert_redirected_to special_status_path(assigns(:special_status))
  end

  test "should destroy special_status" do
    assert_difference('SpecialStatus.count', -1) do
      delete :destroy, id: @special_status
    end

    assert_redirected_to special_statuses_path
  end
end
