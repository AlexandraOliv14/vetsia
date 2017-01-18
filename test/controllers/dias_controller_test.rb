require 'test_helper'

class DiasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dias_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get dias_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get dias_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get dias_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get dias_update_url
    assert_response :success
  end

  test "should get nuevo" do
    get dias_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get dias_crear_url
    assert_response :success
  end

end
