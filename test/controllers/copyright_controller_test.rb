require "test_helper"

class CopyrightControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get copyright_index_url
    assert_response :success
  end
end
