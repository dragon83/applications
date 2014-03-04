require 'test_helper'

class StoreClassificationsControllerTest < ActionController::TestCase
  setup do
    @store_classification = store_classifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_classifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_classification" do
    assert_difference('StoreClassification.count') do
      post :create, store_classification: { description: @store_classification.description }
    end

    assert_redirected_to store_classification_path(assigns(:store_classification))
  end

  test "should show store_classification" do
    get :show, id: @store_classification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_classification
    assert_response :success
  end

  test "should update store_classification" do
    put :update, id: @store_classification, store_classification: { description: @store_classification.description }
    assert_redirected_to store_classification_path(assigns(:store_classification))
  end

  test "should destroy store_classification" do
    assert_difference('StoreClassification.count', -1) do
      delete :destroy, id: @store_classification
    end

    assert_redirected_to store_classifications_path
  end
end
