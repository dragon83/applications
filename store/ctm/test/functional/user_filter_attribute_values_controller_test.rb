require 'test_helper'

class UserFilterAttributeValuesControllerTest < ActionController::TestCase
  setup do
    @user_filter_attribute_value = user_filter_attribute_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_filter_attribute_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_filter_attribute_value" do
    assert_difference('UserFilterAttributeValue.count') do
      post :create, user_filter_attribute_value: { max: @user_filter_attribute_value.max, min: @user_filter_attribute_value.min, user_filter_attribute_id: @user_filter_attribute_value.user_filter_attribute_id, value: @user_filter_attribute_value.value }
    end

    assert_redirected_to user_filter_attribute_value_path(assigns(:user_filter_attribute_value))
  end

  test "should show user_filter_attribute_value" do
    get :show, id: @user_filter_attribute_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_filter_attribute_value
    assert_response :success
  end

  test "should update user_filter_attribute_value" do
    put :update, id: @user_filter_attribute_value, user_filter_attribute_value: { max: @user_filter_attribute_value.max, min: @user_filter_attribute_value.min, user_filter_attribute_id: @user_filter_attribute_value.user_filter_attribute_id, value: @user_filter_attribute_value.value }
    assert_redirected_to user_filter_attribute_value_path(assigns(:user_filter_attribute_value))
  end

  test "should destroy user_filter_attribute_value" do
    assert_difference('UserFilterAttributeValue.count', -1) do
      delete :destroy, id: @user_filter_attribute_value
    end

    assert_redirected_to user_filter_attribute_values_path
  end
end
