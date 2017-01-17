require 'test_helper'

class MedicoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medico_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get medico_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get medico_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get medico_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get medico_update_url
    assert_response :success
  end

  test "should get nuevo" do
    get medico_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get medico_crear_url
    assert_response :success
  end

end
