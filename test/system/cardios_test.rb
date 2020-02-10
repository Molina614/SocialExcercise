require "application_system_test_case"

class CardiosTest < ApplicationSystemTestCase
  setup do
    @cardio = cardios(:one)
  end

  test "visiting the index" do
    visit cardios_url
    assert_selector "h1", text: "Cardios"
  end

  test "creating a Cardio" do
    visit cardios_url
    click_on "New Cardio"

    click_on "Create Cardio"

    assert_text "Cardio was successfully created"
    click_on "Back"
  end

  test "updating a Cardio" do
    visit cardios_url
    click_on "Edit", match: :first

    click_on "Update Cardio"

    assert_text "Cardio was successfully updated"
    click_on "Back"
  end

  test "destroying a Cardio" do
    visit cardios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cardio was successfully destroyed"
  end
end
