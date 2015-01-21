require 'test_helper'

class TipoAsistenciaControllerTest < ActionController::TestCase
  setup do
    @tipo_asistencium = tipo_asistencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_asistencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_asistencium" do
    assert_difference('TipoAsistencium.count') do
      post :create, tipo_asistencium: { tipo: @tipo_asistencium.tipo }
    end

    assert_redirected_to tipo_asistencium_path(assigns(:tipo_asistencium))
  end

  test "should show tipo_asistencium" do
    get :show, id: @tipo_asistencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_asistencium
    assert_response :success
  end

  test "should update tipo_asistencium" do
    put :update, id: @tipo_asistencium, tipo_asistencium: { tipo: @tipo_asistencium.tipo }
    assert_redirected_to tipo_asistencium_path(assigns(:tipo_asistencium))
  end

  test "should destroy tipo_asistencium" do
    assert_difference('TipoAsistencium.count', -1) do
      delete :destroy, id: @tipo_asistencium
    end

    assert_redirected_to tipo_asistencia_path
  end
end
