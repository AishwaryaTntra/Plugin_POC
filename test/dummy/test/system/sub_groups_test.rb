require "application_system_test_case"

class SubGroupsTest < ApplicationSystemTestCase
  setup do
    @sub_group = sub_groups(:one)
  end

  test "visiting the index" do
    visit sub_groups_url
    assert_selector "h1", text: "Sub groups"
  end

  test "should create sub group" do
    visit sub_groups_url
    click_on "New sub group"

    click_on "Create Sub group"

    assert_text "Sub group was successfully created"
    click_on "Back"
  end

  test "should update Sub group" do
    visit sub_group_url(@sub_group)
    click_on "Edit this sub group", match: :first

    click_on "Update Sub group"

    assert_text "Sub group was successfully updated"
    click_on "Back"
  end

  test "should destroy Sub group" do
    visit sub_group_url(@sub_group)
    click_on "Destroy this sub group", match: :first

    assert_text "Sub group was successfully destroyed"
  end
end
