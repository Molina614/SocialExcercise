require "application_system_test_case"

class GroupPostsTest < ApplicationSystemTestCase
  setup do
    @group_post = group_posts(:one)
  end

  test "visiting the index" do
    visit group_posts_url
    assert_selector "h1", text: "Group Posts"
  end

  test "creating a Group post" do
    visit group_posts_url
    click_on "New Group Post"

    click_on "Create Group post"

    assert_text "Group post was successfully created"
    click_on "Back"
  end

  test "updating a Group post" do
    visit group_posts_url
    click_on "Edit", match: :first

    click_on "Update Group post"

    assert_text "Group post was successfully updated"
    click_on "Back"
  end

  test "destroying a Group post" do
    visit group_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group post was successfully destroyed"
  end
end
