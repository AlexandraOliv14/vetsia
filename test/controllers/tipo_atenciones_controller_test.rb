require 'test_helper'

class TipoAtencionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tipo_atenciones_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get tipo_atenciones_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get tipo_atenciones_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get tipo_atenciones_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get tipo_atenciones_update_url
    assert_response :success
  end

  test "should get nuevo" do
    get tipo_atenciones_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get tipo_atenciones_crear_url
    assert_response :success
  end

end
