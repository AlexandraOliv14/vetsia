require 'test_helper'

class MedicoshorariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medicoshorarios_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get medicoshorarios_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get medicoshorarios_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get medicoshorarios_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get medicoshorarios_update_url
    assert_response :success
  end

  test "should get nuevo" do
    get medicoshorarios_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get medicoshorarios_crear_url
    assert_response :success
  end

end
