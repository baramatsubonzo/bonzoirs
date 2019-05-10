require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get members_home_url
    assert_response :success
  end

  test "should get show" do
    get members_show_url
    assert_response :success
  end

end
