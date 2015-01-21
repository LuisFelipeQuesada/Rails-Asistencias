require 'test_helper'

class AplicationsControllerTest < ActionController::TestCase
  setup do
    @aplication = aplications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aplications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aplication" do
    assert_difference('Aplication.count') do
      post :create, aplication: { assistance_id: @aplication.assistance_id, user_id: @aplication.user_id }
    end

    assert_redirected_to aplication_path(assigns(:aplication))
  end

  test "should show aplication" do
    get :show, id: @aplication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aplication
    assert_response :success
  end

  test "should update aplication" do
    put :update, id: @aplication, aplication: { assistance_id: @aplication.assistance_id, user_id: @aplication.user_id }
    assert_redirected_to aplication_path(assigns(:aplication))
  end

  test "should destroy aplication" do
    assert_difference('Aplication.count', -1) do
      delete :destroy, id: @aplication
    end

    assert_redirected_to aplications_path
  end
end
