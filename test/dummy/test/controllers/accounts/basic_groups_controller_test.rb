require "test_helper"

class Accounts::BasicGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounts_basic_group = accounts_basic_groups(:one)
  end

  test "should get index" do
    get accounts_basic_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_accounts_basic_group_url
    assert_response :success
  end

  test "should create accounts_basic_group" do
    assert_difference("Accounts::BasicGroup.count") do
      post accounts_basic_groups_url, params: { accounts_basic_group: { name: @accounts_basic_group.name } }
    end

    assert_redirected_to accounts_basic_group_url(Accounts::BasicGroup.last)
  end

  test "should show accounts_basic_group" do
    get accounts_basic_group_url(@accounts_basic_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounts_basic_group_url(@accounts_basic_group)
    assert_response :success
  end

  test "should update accounts_basic_group" do
    patch accounts_basic_group_url(@accounts_basic_group), params: { accounts_basic_group: { name: @accounts_basic_group.name } }
    assert_redirected_to accounts_basic_group_url(@accounts_basic_group)
  end

  test "should destroy accounts_basic_group" do
    assert_difference("Accounts::BasicGroup.count", -1) do
      delete accounts_basic_group_url(@accounts_basic_group)
    end

    assert_redirected_to accounts_basic_groups_url
  end
end
