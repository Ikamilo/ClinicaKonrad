require "application_system_test_case"

class MedicsTest < ApplicationSystemTestCase
  setup do
    @medic = medics(:one)
  end

  test "visiting the index" do
    visit medics_url
    assert_selector "h1", text: "Medics"
  end

  test "creating a Medic" do
    visit medics_url
    click_on "New Medic"

    fill_in "Apellido", with: @medic.apellido
    fill_in "Celular", with: @medic.celular
    fill_in "Identificacion", with: @medic.identificacion
    fill_in "Nombre", with: @medic.nombre
    fill_in "Tipo", with: @medic.tipo
    click_on "Create Medic"

    assert_text "Medic was successfully created"
    click_on "Back"
  end

  test "updating a Medic" do
    visit medics_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @medic.apellido
    fill_in "Celular", with: @medic.celular
    fill_in "Identificacion", with: @medic.identificacion
    fill_in "Nombre", with: @medic.nombre
    fill_in "Tipo", with: @medic.tipo
    click_on "Update Medic"

    assert_text "Medic was successfully updated"
    click_on "Back"
  end

  test "destroying a Medic" do
    visit medics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medic was successfully destroyed"
  end
end
