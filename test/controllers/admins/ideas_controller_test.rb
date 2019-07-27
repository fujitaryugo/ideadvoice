require 'test_helper'

class Admins::IdeasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admins_ideas_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_ideas_destroy_url
    assert_response :success
  end

end
