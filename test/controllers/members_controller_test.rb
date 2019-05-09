require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get members_top_url
    assert_response :success
  end

  test "should get show" do
    get members_show_url
    assert_response :success
  end

  test "should get new" do
    get members_new_url
    assert_response :success
  end

  test "should get edit" do
    get members_edit_url
    assert_response :success
  end

end
