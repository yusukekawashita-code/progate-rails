
require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to login when not logged in" do
    get users_index_url
    assert_redirected_to "/login"
  end
end
