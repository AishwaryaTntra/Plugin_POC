require "test_helper"

class Accounts::AccountMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounts_account_master = accounts_account_masters(:one)
  end

  test "should get index" do
    get accounts_account_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_accounts_account_master_url
    assert_response :success
  end

  test "should create accounts_account_master" do
    assert_difference("Accounts::AccountMaster.count") do
      post accounts_account_masters_url, params: { accounts_account_master: { balance: @accounts_account_master.balance, name: @accounts_account_master.name } }
    end

    assert_redirected_to accounts_account_master_url(Accounts::AccountMaster.last)
  end

  test "should show accounts_account_master" do
    get accounts_account_master_url(@accounts_account_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounts_account_master_url(@accounts_account_master)
    assert_response :success
  end

  test "should update accounts_account_master" do
    patch accounts_account_master_url(@accounts_account_master), params: { accounts_account_master: { balance: @accounts_account_master.balance, name: @accounts_account_master.name } }
    assert_redirected_to accounts_account_master_url(@accounts_account_master)
  end

  test "should destroy accounts_account_master" do
    assert_difference("Accounts::AccountMaster.count", -1) do
      delete accounts_account_master_url(@accounts_account_master)
    end

    assert_redirected_to accounts_account_masters_url
  end
end
