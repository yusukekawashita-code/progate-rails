
require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to login when not logged in" do
    get posts_index_url
    assert_redirected_to "/login"
  end
end
