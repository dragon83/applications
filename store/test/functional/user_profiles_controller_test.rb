require 'test_helper'

class UserProfilesControllerTest < ActionController::TestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post :create, user_profile: { affluence_id: @user_profile.affluence_id, age: @user_profile.age, body_type: @user_profile.body_type, caste_id: @user_profile.caste_id, complexion: @user_profile.complexion, dob: @user_profile.dob, education: @user_profile.education, elder_brothers: @user_profile.elder_brothers, elder_sisters: @user_profile.elder_sisters, family_values: @user_profile.family_values, father_profession: @user_profile.father_profession, father_status: @user_profile.father_status, food_habit: @user_profile.food_habit, gender: @user_profile.gender, height: @user_profile.height, mangalik: @user_profile.mangalik, marital_status: @user_profile.marital_status, mother_profession: @user_profile.mother_profession, mother_status: @user_profile.mother_status, mother_tongue: @user_profile.mother_tongue, native: @user_profile.native, pob: @user_profile.pob, profession: @user_profile.profession, religion_id: @user_profile.religion_id, salary: @user_profile.salary, spec_power: @user_profile.spec_power, special_status: @user_profile.special_status, specs: @user_profile.specs, sub_caste_id: @user_profile.sub_caste_id, tob: @user_profile.tob, user_id: @user_profile.user_id, weight: @user_profile.weight, work_city: @user_profile.work_city, work_country: @user_profile.work_country, work_state: @user_profile.work_state, younger_brothers: @user_profile.younger_brothers, younger_sisters: @user_profile.younger_sisters }
    end

    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should show user_profile" do
    get :show, id: @user_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_profile
    assert_response :success
  end

  test "should update user_profile" do
    put :update, id: @user_profile, user_profile: { affluence_id: @user_profile.affluence_id, age: @user_profile.age, body_type: @user_profile.body_type, caste_id: @user_profile.caste_id, complexion: @user_profile.complexion, dob: @user_profile.dob, education: @user_profile.education, elder_brothers: @user_profile.elder_brothers, elder_sisters: @user_profile.elder_sisters, family_values: @user_profile.family_values, father_profession: @user_profile.father_profession, father_status: @user_profile.father_status, food_habit: @user_profile.food_habit, gender: @user_profile.gender, height: @user_profile.height, mangalik: @user_profile.mangalik, marital_status: @user_profile.marital_status, mother_profession: @user_profile.mother_profession, mother_status: @user_profile.mother_status, mother_tongue: @user_profile.mother_tongue, native: @user_profile.native, pob: @user_profile.pob, profession: @user_profile.profession, religion_id: @user_profile.religion_id, salary: @user_profile.salary, spec_power: @user_profile.spec_power, special_status: @user_profile.special_status, specs: @user_profile.specs, sub_caste_id: @user_profile.sub_caste_id, tob: @user_profile.tob, user_id: @user_profile.user_id, weight: @user_profile.weight, work_city: @user_profile.work_city, work_country: @user_profile.work_country, work_state: @user_profile.work_state, younger_brothers: @user_profile.younger_brothers, younger_sisters: @user_profile.younger_sisters }
    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete :destroy, id: @user_profile
    end

    assert_redirected_to user_profiles_path
  end
end
