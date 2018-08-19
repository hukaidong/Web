require 'test_helper'

class GallaryControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get gallary_all_url
    assert_response :success
  end

end
