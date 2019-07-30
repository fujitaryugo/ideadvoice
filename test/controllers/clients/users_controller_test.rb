require 'test_helper'

class Clients::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get clients_users_show_url
    assert_response :success
  end

end
