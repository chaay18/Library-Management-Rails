require "application_system_test_case"

class OrdinateursTest < ApplicationSystemTestCase
  setup do
    @ordinateur = ordinateurs(:one)
  end

  test "visiting the index" do
    visit ordinateurs_url
    assert_selector "h1", text: "Ordinateurs"
  end

  test "creating a Ordinateur" do
    visit ordinateurs_url
    click_on "New Ordinateur"

    fill_in "Marque", with: @ordinateur.marque
    fill_in "Nbr copies", with: @ordinateur.nbr_copies
    click_on "Create Ordinateur"

    assert_text "Ordinateur was successfully created"
    click_on "Back"
  end

  test "updating a Ordinateur" do
    visit ordinateurs_url
    click_on "Edit", match: :first

    fill_in "Marque", with: @ordinateur.marque
    fill_in "Nbr copies", with: @ordinateur.nbr_copies
    click_on "Update Ordinateur"

    assert_text "Ordinateur was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordinateur" do
    visit ordinateurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordinateur was successfully destroyed"
  end
end
