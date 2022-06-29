require "test_helper"

class RemindsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reminds_index_url
    assert_response :success
  end
end
