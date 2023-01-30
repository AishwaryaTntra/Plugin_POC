require "test_helper"

class BasicGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basic_group = basic_groups(:one)
  end

  test "should get index" do
    get basic_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_basic_group_url
    assert_response :success
  end

  test "should create basic_group" do
    assert_difference("BasicGroup.count") do
      post basic_groups_url, params: { basic_group: {  } }
    end

    assert_redirected_to basic_group_url(BasicGroup.last)
  end

  test "should show basic_group" do
    get basic_group_url(@basic_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_basic_group_url(@basic_group)
    assert_response :success
  end

  test "should update basic_group" do
    patch basic_group_url(@basic_group), params: { basic_group: {  } }
    assert_redirected_to basic_group_url(@basic_group)
  end

  test "should destroy basic_group" do
    assert_difference("BasicGroup.count", -1) do
      delete basic_group_url(@basic_group)
    end

    assert_redirected_to basic_groups_url
  end
end
