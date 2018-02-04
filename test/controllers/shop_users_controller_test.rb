require 'test_helper'

class ShopUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shop_users_new_url
    assert_response :success
  end

end
