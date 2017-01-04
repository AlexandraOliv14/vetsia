require 'test_helper'

class MascotaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mascota_index_url
    assert_response :success
  end

  test "should get nuevo" do
    get mascota_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get mascota_crear_url
    assert_response :success
  end

  test "should get update" do
    get mascota_update_url
    assert_response :success
  end

  test "should get mostrar" do
    get mascota_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get mascota_eliminar_url
    assert_response :success
  end

  test "should get editar" do
    get mascota_editar_url
    assert_response :success
  end

end
