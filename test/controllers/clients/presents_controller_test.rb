require 'test_helper'

class Clients::PresentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clients_presents_new_url
    assert_response :success
  end

  test "should get create" do
    get clients_presents_create_url
    assert_response :success
  end

end
