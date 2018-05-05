require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get user_search" do
    get search_user_search_url
    assert_response :success
  end

  test "should get tip_search" do
    get search_tip_search_url
    assert_response :success
  end

end
