require "application_system_test_case"

class LiftingsTest < ApplicationSystemTestCase
  setup do
    @lifting = liftings(:one)
  end

  test "visiting the index" do
    visit liftings_url
    assert_selector "h1", text: "Liftings"
  end

  test "creating a Lifting" do
    visit liftings_url
    click_on "New Lifting"

    click_on "Create Lifting"

    assert_text "Lifting was successfully created"
    click_on "Back"
  end

  test "updating a Lifting" do
    visit liftings_url
    click_on "Edit", match: :first

    click_on "Update Lifting"

    assert_text "Lifting was successfully updated"
    click_on "Back"
  end

  test "destroying a Lifting" do
    visit liftings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lifting was successfully destroyed"
  end
end
