require "application_system_test_case"

class Accounts::BasicGroupsTest < ApplicationSystemTestCase
  setup do
    @accounts_basic_group = accounts_basic_groups(:one)
  end

  test "visiting the index" do
    visit accounts_basic_groups_url
    assert_selector "h1", text: "Basic groups"
  end

  test "should create basic group" do
    visit accounts_basic_groups_url
    click_on "New basic group"

    fill_in "Name", with: @accounts_basic_group.name
    click_on "Create Basic group"

    assert_text "Basic group was successfully created"
    click_on "Back"
  end

  test "should update Basic group" do
    visit accounts_basic_group_url(@accounts_basic_group)
    click_on "Edit this basic group", match: :first

    fill_in "Name", with: @accounts_basic_group.name
    click_on "Update Basic group"

    assert_text "Basic group was successfully updated"
    click_on "Back"
  end

  test "should destroy Basic group" do
    visit accounts_basic_group_url(@accounts_basic_group)
    click_on "Destroy this basic group", match: :first

    assert_text "Basic group was successfully destroyed"
  end
end
