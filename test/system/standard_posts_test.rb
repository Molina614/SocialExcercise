require "application_system_test_case"

class StandardPostsTest < ApplicationSystemTestCase
  setup do
    @standard_post = standard_posts(:one)
  end

  test "visiting the index" do
    visit standard_posts_url
    assert_selector "h1", text: "Standard Posts"
  end

  test "creating a Standard post" do
    visit standard_posts_url
    click_on "New Standard Post"

    click_on "Create Standard post"

    assert_text "Standard post was successfully created"
    click_on "Back"
  end

  test "updating a Standard post" do
    visit standard_posts_url
    click_on "Edit", match: :first

    click_on "Update Standard post"

    assert_text "Standard post was successfully updated"
    click_on "Back"
  end

  test "destroying a Standard post" do
    visit standard_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Standard post was successfully destroyed"
  end
end
