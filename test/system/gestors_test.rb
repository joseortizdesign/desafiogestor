require "application_system_test_case"

class GestorsTest < ApplicationSystemTestCase
  setup do
    @gestor = gestors(:one)
  end

  test "visiting the index" do
    visit gestors_url
    assert_selector "h1", text: "Gestors"
  end

  test "should create gestor" do
    visit gestors_url
    click_on "New gestor"

    fill_in "Descripcion", with: @gestor.descripcion
    fill_in "Estado", with: @gestor.estado
    fill_in "Fechacom", with: @gestor.fechacom
    fill_in "Fechater", with: @gestor.fechater
    fill_in "Nombre", with: @gestor.nombre
    click_on "Create Gestor"

    assert_text "Gestor was successfully created"
    click_on "Back"
  end

  test "should update Gestor" do
    visit gestor_url(@gestor)
    click_on "Edit this gestor", match: :first

    fill_in "Descripcion", with: @gestor.descripcion
    fill_in "Estado", with: @gestor.estado
    fill_in "Fechacom", with: @gestor.fechacom
    fill_in "Fechater", with: @gestor.fechater
    fill_in "Nombre", with: @gestor.nombre
    click_on "Update Gestor"

    assert_text "Gestor was successfully updated"
    click_on "Back"
  end

  test "should destroy Gestor" do
    visit gestor_url(@gestor)
    click_on "Destroy this gestor", match: :first

    assert_text "Gestor was successfully destroyed"
  end
end
