require "application_system_test_case"

class TableausTest < ApplicationSystemTestCase
  setup do
    @tableau = tableaus(:one)
  end

  test "visiting the index" do
    visit tableaus_url
    assert_selector "h1", text: "Tableaus"
  end

  test "creating a Tableau" do
    visit tableaus_url
    click_on "New Tableau"

    fill_in "Content", with: @tableau.content
    fill_in "Image", with: @tableau.image
    fill_in "Title", with: @tableau.title
    click_on "Create Tableau"

    assert_text "Tableau was successfully created"
    click_on "Back"
  end

  test "updating a Tableau" do
    visit tableaus_url
    click_on "Edit", match: :first

    fill_in "Content", with: @tableau.content
    fill_in "Image", with: @tableau.image
    fill_in "Title", with: @tableau.title
    click_on "Update Tableau"

    assert_text "Tableau was successfully updated"
    click_on "Back"
  end

  test "destroying a Tableau" do
    visit tableaus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tableau was successfully destroyed"
  end
end
