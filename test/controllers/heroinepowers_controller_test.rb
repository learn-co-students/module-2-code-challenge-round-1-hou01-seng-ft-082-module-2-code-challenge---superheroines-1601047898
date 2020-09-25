require 'test_helper'

class HeroinepowersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get heroinepowers_new_url
    assert_response :success
  end

  test "should get create" do
    get heroinepowers_create_url
    assert_response :success
  end

end
