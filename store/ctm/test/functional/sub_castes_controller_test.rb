require 'test_helper'

class SubCastesControllerTest < ActionController::TestCase
  setup do
    @sub_caste = sub_castes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_castes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_caste" do
    assert_difference('SubCaste.count') do
      post :create, sub_caste: { caste_id: @sub_caste.caste_id, caste_name: @sub_caste.caste_name, religion_id: @sub_caste.religion_id }
    end

    assert_redirected_to sub_caste_path(assigns(:sub_caste))
  end

  test "should show sub_caste" do
    get :show, id: @sub_caste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_caste
    assert_response :success
  end

  test "should update sub_caste" do
    put :update, id: @sub_caste, sub_caste: { caste_id: @sub_caste.caste_id, caste_name: @sub_caste.caste_name, religion_id: @sub_caste.religion_id }
    assert_redirected_to sub_caste_path(assigns(:sub_caste))
  end

  test "should destroy sub_caste" do
    assert_difference('SubCaste.count', -1) do
      delete :destroy, id: @sub_caste
    end

    assert_redirected_to sub_castes_path
  end
end
