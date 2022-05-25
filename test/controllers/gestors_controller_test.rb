require "test_helper"

class GestorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gestor = gestors(:one)
  end

  test "should get index" do
    get gestors_url
    assert_response :success
  end

  test "should get new" do
    get new_gestor_url
    assert_response :success
  end

  test "should create gestor" do
    assert_difference("Gestor.count") do
      post gestors_url, params: { gestor: { descripcion: @gestor.descripcion, estado: @gestor.estado, fechacom: @gestor.fechacom, fechater: @gestor.fechater, nombre: @gestor.nombre } }
    end

    assert_redirected_to gestor_url(Gestor.last)
  end

  test "should show gestor" do
    get gestor_url(@gestor)
    assert_response :success
  end

  test "should get edit" do
    get edit_gestor_url(@gestor)
    assert_response :success
  end

  test "should update gestor" do
    patch gestor_url(@gestor), params: { gestor: { descripcion: @gestor.descripcion, estado: @gestor.estado, fechacom: @gestor.fechacom, fechater: @gestor.fechater, nombre: @gestor.nombre } }
    assert_redirected_to gestor_url(@gestor)
  end

  test "should destroy gestor" do
    assert_difference("Gestor.count", -1) do
      delete gestor_url(@gestor)
    end

    assert_redirected_to gestors_url
  end
end
