require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_index_url
    assert_response :success
  end

  test "should get show" do
    get user_show_url
    assert_response :success
  end

  test "should get followings" do
    get user_followings_url
    assert_response :success
  end

  test "should get followers" do
    get user_followers_url
    assert_response :success
  end

end
