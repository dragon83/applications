require 'test_helper'

class ApprovalAdminControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get approve" do
    get :approve
    assert_response :success
  end

  test "should get reject" do
    get :reject
    assert_response :success
  end

end
