require "test_helper"

class MainsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get mains_home_url
    assert_response :success
  end

  test "should get index" do
    get mains_index_url
    assert_response :success
  end
end
