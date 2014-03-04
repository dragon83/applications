require 'test_helper'

class UserFilterAttributesControllerTest < ActionController::TestCase
  setup do
    @user_filter_attribute = user_filter_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_filter_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_filter_attribute" do
    assert_difference('UserFilterAttribute.count') do
      post :create, user_filter_attribute: { field_type: @user_filter_attribute.field_type, filter_attribute: @user_filter_attribute.filter_attribute, user_filter_id: @user_filter_attribute.user_filter_id }
    end

    assert_redirected_to user_filter_attribute_path(assigns(:user_filter_attribute))
  end

  test "should show user_filter_attribute" do
    get :show, id: @user_filter_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_filter_attribute
    assert_response :success
  end

  test "should update user_filter_attribute" do
    put :update, id: @user_filter_attribute, user_filter_attribute: { field_type: @user_filter_attribute.field_type, filter_attribute: @user_filter_attribute.filter_attribute, user_filter_id: @user_filter_attribute.user_filter_id }
    assert_redirected_to user_filter_attribute_path(assigns(:user_filter_attribute))
  end

  test "should destroy user_filter_attribute" do
    assert_difference('UserFilterAttribute.count', -1) do
      delete :destroy, id: @user_filter_attribute
    end

    assert_redirected_to user_filter_attributes_path
  end
end
