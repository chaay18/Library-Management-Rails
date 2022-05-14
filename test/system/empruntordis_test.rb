require "application_system_test_case"

class EmpruntordisTest < ApplicationSystemTestCase
  setup do
    @empruntordi = empruntordis(:one)
  end

  test "visiting the index" do
    visit empruntordis_url
    assert_selector "h1", text: "Empruntordis"
  end

  test "creating a Empruntordi" do
    visit empruntordis_url
    click_on "New Empruntordi"

    click_on "Create Empruntordi"

    assert_text "Empruntordi was successfully created"
    click_on "Back"
  end

  test "updating a Empruntordi" do
    visit empruntordis_url
    click_on "Edit", match: :first

    click_on "Update Empruntordi"

    assert_text "Empruntordi was successfully updated"
    click_on "Back"
  end

  test "destroying a Empruntordi" do
    visit empruntordis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empruntordi was successfully destroyed"
  end
end
