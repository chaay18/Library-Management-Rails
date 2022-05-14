require "application_system_test_case"

class EmpruntDocsTest < ApplicationSystemTestCase
  setup do
    @emprunt_doc = emprunt_docs(:one)
  end

  test "visiting the index" do
    visit emprunt_docs_url
    assert_selector "h1", text: "Emprunt Docs"
  end

  test "creating a Emprunt doc" do
    visit emprunt_docs_url
    click_on "New Emprunt Doc"

    click_on "Create Emprunt doc"

    assert_text "Emprunt doc was successfully created"
    click_on "Back"
  end

  test "updating a Emprunt doc" do
    visit emprunt_docs_url
    click_on "Edit", match: :first

    click_on "Update Emprunt doc"

    assert_text "Emprunt doc was successfully updated"
    click_on "Back"
  end

  test "destroying a Emprunt doc" do
    visit emprunt_docs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emprunt doc was successfully destroyed"
  end
end
