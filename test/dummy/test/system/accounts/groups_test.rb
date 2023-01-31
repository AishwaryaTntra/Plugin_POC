require "application_system_test_case"

class Accounts::GroupsTest < ApplicationSystemTestCase
  setup do
    @accounts_group = accounts_groups(:one)
  end

  test "visiting the index" do
    visit accounts_groups_url
    assert_selector "h1", text: "Groups"
  end

  test "should create group" do
    visit accounts_groups_url
    click_on "New group"

    fill_in "Description", with: @accounts_group.description
    fill_in "Name", with: @accounts_group.name
    click_on "Create Group"

    assert_text "Group was successfully created"
    click_on "Back"
  end

  test "should update Group" do
    visit accounts_group_url(@accounts_group)
    click_on "Edit this group", match: :first

    fill_in "Description", with: @accounts_group.description
    fill_in "Name", with: @accounts_group.name
    click_on "Update Group"

    assert_text "Group was successfully updated"
    click_on "Back"
  end

  test "should destroy Group" do
    visit accounts_group_url(@accounts_group)
    click_on "Destroy this group", match: :first

    assert_text "Group was successfully destroyed"
  end
end
