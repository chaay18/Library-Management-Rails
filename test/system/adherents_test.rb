require "application_system_test_case"

class AdherentsTest < ApplicationSystemTestCase
  setup do
    @adherent = adherents(:one)
  end

  test "visiting the index" do
    visit adherents_url
    assert_selector "h1", text: "Adherents"
  end

  test "creating a Adherent" do
    visit adherents_url
    click_on "New Adherent"

    fill_in "Email", with: @adherent.email
    fill_in "Nom", with: @adherent.nom
    fill_in "Prenom", with: @adherent.prenom
    fill_in "Tel", with: @adherent.tel
    click_on "Create Adherent"

    assert_text "Adherent was successfully created"
    click_on "Back"
  end

  test "updating a Adherent" do
    visit adherents_url
    click_on "Edit", match: :first

    fill_in "Email", with: @adherent.email
    fill_in "Nom", with: @adherent.nom
    fill_in "Prenom", with: @adherent.prenom
    fill_in "Tel", with: @adherent.tel
    click_on "Update Adherent"

    assert_text "Adherent was successfully updated"
    click_on "Back"
  end

  test "destroying a Adherent" do
    visit adherents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adherent was successfully destroyed"
  end
end
