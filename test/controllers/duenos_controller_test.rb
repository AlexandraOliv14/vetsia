require 'test_helper'

class DuenosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get duenos_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get duenos_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get duenos_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get duenos_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get duenos_update_url
    assert_response :success
  end

  test "should get crear" do
    get duenos_crear_url
    assert_response :success
  end

end
