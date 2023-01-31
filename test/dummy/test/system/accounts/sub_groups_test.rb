require "application_system_test_case"

class Accounts::SubGroupsTest < ApplicationSystemTestCase
  setup do
    @accounts_sub_group = accounts_sub_groups(:one)
  end

  test "visiting the index" do
    visit accounts_sub_groups_url
    assert_selector "h1", text: "Sub groups"
  end

  test "should create sub group" do
    visit accounts_sub_groups_url
    click_on "New sub group"

    fill_in "Basic group name", with: @accounts_sub_group.basic_group_name
    fill_in "Name", with: @accounts_sub_group.name
    click_on "Create Sub group"

    assert_text "Sub group was successfully created"
    click_on "Back"
  end

  test "should update Sub group" do
    visit accounts_sub_group_url(@accounts_sub_group)
    click_on "Edit this sub group", match: :first

    fill_in "Basic group name", with: @accounts_sub_group.basic_group_name
    fill_in "Name", with: @accounts_sub_group.name
    click_on "Update Sub group"

    assert_text "Sub group was successfully updated"
    click_on "Back"
  end

  test "should destroy Sub group" do
    visit accounts_sub_group_url(@accounts_sub_group)
    click_on "Destroy this sub group", match: :first

    assert_text "Sub group was successfully destroyed"
  end
end
