require "test_helper"

class Accounts::SubGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounts_sub_group = accounts_sub_groups(:one)
  end

  test "should get index" do
    get accounts_sub_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_accounts_sub_group_url
    assert_response :success
  end

  test "should create accounts_sub_group" do
    assert_difference("Accounts::SubGroup.count") do
      post accounts_sub_groups_url, params: { accounts_sub_group: { basic_group_name: @accounts_sub_group.basic_group_name, name: @accounts_sub_group.name } }
    end

    assert_redirected_to accounts_sub_group_url(Accounts::SubGroup.last)
  end

  test "should show accounts_sub_group" do
    get accounts_sub_group_url(@accounts_sub_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounts_sub_group_url(@accounts_sub_group)
    assert_response :success
  end

  test "should update accounts_sub_group" do
    patch accounts_sub_group_url(@accounts_sub_group), params: { accounts_sub_group: { basic_group_name: @accounts_sub_group.basic_group_name, name: @accounts_sub_group.name } }
    assert_redirected_to accounts_sub_group_url(@accounts_sub_group)
  end

  test "should destroy accounts_sub_group" do
    assert_difference("Accounts::SubGroup.count", -1) do
      delete accounts_sub_group_url(@accounts_sub_group)
    end

    assert_redirected_to accounts_sub_groups_url
  end
end
