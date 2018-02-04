require 'test_helper'

class ShopUserSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shop_user_sessions_new_url
    assert_response :success
  end

end
