require 'test_helper'

class HorariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get horarios_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get horarios_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get horarios_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get horarios_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get horarios_update_url
    assert_response :success
  end

  test "should get nuevo" do
    get horarios_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get horarios_crear_url
    assert_response :success
  end

end
