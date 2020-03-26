require 'test_helper'

class BologsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bologs_index_url
    assert_response :success
  end

end
