require 'test_helper'

class BloqueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloque_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get bloque_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get bloque_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get bloque_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get bloque_update_url
    assert_response :success
  end

  test "should get nuevo" do
    get bloque_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get bloque_crear_url
    assert_response :success
  end

end
