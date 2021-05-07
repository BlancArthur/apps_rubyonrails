require "application_system_test_case"

class OeuvresTest < ApplicationSystemTestCase
  setup do
    @oeuvre = oeuvres(:one)
  end

  test "visiting the index" do
    visit oeuvres_url
    assert_selector "h1", text: "Oeuvres"
  end

  test "creating a Oeuvre" do
    visit oeuvres_url
    click_on "New Oeuvre"

    fill_in "Content", with: @oeuvre.content
    fill_in "Image", with: @oeuvre.image
    fill_in "Title", with: @oeuvre.title
    click_on "Create Oeuvre"

    assert_text "Oeuvre was successfully created"
    click_on "Back"
  end

  test "updating a Oeuvre" do
    visit oeuvres_url
    click_on "Edit", match: :first

    fill_in "Content", with: @oeuvre.content
    fill_in "Image", with: @oeuvre.image
    fill_in "Title", with: @oeuvre.title
    click_on "Update Oeuvre"

    assert_text "Oeuvre was successfully updated"
    click_on "Back"
  end

  test "destroying a Oeuvre" do
    visit oeuvres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oeuvre was successfully destroyed"
  end
end
