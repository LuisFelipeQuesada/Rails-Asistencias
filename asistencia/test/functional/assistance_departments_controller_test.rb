require 'test_helper'

class AssistanceDepartmentsControllerTest < ActionController::TestCase
  setup do
    @assistance_department = assistance_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistance_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistance_department" do
    assert_difference('AssistanceDepartment.count') do
      post :create, assistance_department: { assistance_id: @assistance_department.assistance_id, department_id: @assistance_department.department_id }
    end

    assert_redirected_to assistance_department_path(assigns(:assistance_department))
  end

  test "should show assistance_department" do
    get :show, id: @assistance_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistance_department
    assert_response :success
  end

  test "should update assistance_department" do
    put :update, id: @assistance_department, assistance_department: { assistance_id: @assistance_department.assistance_id, department_id: @assistance_department.department_id }
    assert_redirected_to assistance_department_path(assigns(:assistance_department))
  end

  test "should destroy assistance_department" do
    assert_difference('AssistanceDepartment.count', -1) do
      delete :destroy, id: @assistance_department
    end

    assert_redirected_to assistance_departments_path
  end
end
