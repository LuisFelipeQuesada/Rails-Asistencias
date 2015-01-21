require 'test_helper'

class AdministrativeUsersControllerTest < ActionController::TestCase
  setup do
    @administrative_user = administrative_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrative_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrative_user" do
    assert_difference('AdministrativeUser.count') do
      post :create, administrative_user: { password: @administrative_user.password, username: @administrative_user.username }
    end

    assert_redirected_to administrative_user_path(assigns(:administrative_user))
  end

  test "should show administrative_user" do
    get :show, id: @administrative_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrative_user
    assert_response :success
  end

  test "should update administrative_user" do
    put :update, id: @administrative_user, administrative_user: { password: @administrative_user.password, username: @administrative_user.username }
    assert_redirected_to administrative_user_path(assigns(:administrative_user))
  end

  test "should destroy administrative_user" do
    assert_difference('AdministrativeUser.count', -1) do
      delete :destroy, id: @administrative_user
    end

    assert_redirected_to administrative_users_path
  end
end
