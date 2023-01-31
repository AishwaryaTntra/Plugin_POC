require "application_system_test_case"

class Accounts::AccountMastersTest < ApplicationSystemTestCase
  setup do
    @accounts_account_master = accounts_account_masters(:one)
  end

  test "visiting the index" do
    visit accounts_account_masters_url
    assert_selector "h1", text: "Account masters"
  end

  test "should create account master" do
    visit accounts_account_masters_url
    click_on "New account master"

    fill_in "Balance", with: @accounts_account_master.balance
    fill_in "Name", with: @accounts_account_master.name
    click_on "Create Account master"

    assert_text "Account master was successfully created"
    click_on "Back"
  end

  test "should update Account master" do
    visit accounts_account_master_url(@accounts_account_master)
    click_on "Edit this account master", match: :first

    fill_in "Balance", with: @accounts_account_master.balance
    fill_in "Name", with: @accounts_account_master.name
    click_on "Update Account master"

    assert_text "Account master was successfully updated"
    click_on "Back"
  end

  test "should destroy Account master" do
    visit accounts_account_master_url(@accounts_account_master)
    click_on "Destroy this account master", match: :first

    assert_text "Account master was successfully destroyed"
  end
end
