require 'test_helper'

class AssistanceTypesControllerTest < ActionController::TestCase
  setup do
    @assistance_type = assistance_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistance_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistance_type" do
    assert_difference('AssistanceType.count') do
      post :create, assistance_type: { type: @assistance_type.type }
    end

    assert_redirected_to assistance_type_path(assigns(:assistance_type))
  end

  test "should show assistance_type" do
    get :show, id: @assistance_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistance_type
    assert_response :success
  end

  test "should update assistance_type" do
    put :update, id: @assistance_type, assistance_type: { type: @assistance_type.type }
    assert_redirected_to assistance_type_path(assigns(:assistance_type))
  end

  test "should destroy assistance_type" do
    assert_difference('AssistanceType.count', -1) do
      delete :destroy, id: @assistance_type
    end

    assert_redirected_to assistance_types_path
  end
end
