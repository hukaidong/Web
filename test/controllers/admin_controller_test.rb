require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get db_manager" do
    get admin_db_manager_url
    assert_response :success
  end

end
