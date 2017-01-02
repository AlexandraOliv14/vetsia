require 'test_helper'

class AtencionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get atenciones_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get atenciones_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get atenciones_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get atenciones_editar_url
    assert_response :success
  end

  test "should get update" do
    get atenciones_update_url
    assert_response :success
  end

  test "should get crear" do
    get atenciones_crear_url
    assert_response :success
  end

  test "should get eliminar" do
    get atenciones_eliminar_url
    assert_response :success
  end

end
