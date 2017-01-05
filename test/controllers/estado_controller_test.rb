require 'test_helper'

class EstadoControllerTest < ActionDispatch::IntegrationTest
  test "should get crear" do
    get estado_crear_url
    assert_response :success
  end

  test "should get editar" do
    get estado_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get estado_eliminar_url
    assert_response :success
  end

  test "should get index" do
    get estado_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get estado_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get estado_nuevo_url
    assert_response :success
  end

  test "should get update" do
    get estado_update_url
    assert_response :success
  end

end
