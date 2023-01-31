require "test_helper"

class Accounts::GroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounts_group = accounts_groups(:one)
  end

  test "should get index" do
    get accounts_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_accounts_group_url
    assert_response :success
  end

  test "should create accounts_group" do
    assert_difference("Accounts::Group.count") do
      post accounts_groups_url, params: { accounts_group: { description: @accounts_group.description, name: @accounts_group.name } }
    end

    assert_redirected_to accounts_group_url(Accounts::Group.last)
  end

  test "should show accounts_group" do
    get accounts_group_url(@accounts_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounts_group_url(@accounts_group)
    assert_response :success
  end

  test "should update accounts_group" do
    patch accounts_group_url(@accounts_group), params: { accounts_group: { description: @accounts_group.description, name: @accounts_group.name } }
    assert_redirected_to accounts_group_url(@accounts_group)
  end

  test "should destroy accounts_group" do
    assert_difference("Accounts::Group.count", -1) do
      delete accounts_group_url(@accounts_group)
    end

    assert_redirected_to accounts_groups_url
  end
end
