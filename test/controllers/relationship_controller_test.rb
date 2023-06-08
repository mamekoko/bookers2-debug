require "test_helper"

class RelationshipControllerTest < ActionDispatch::IntegrationTest
  test "should get followings" do
    get relationship_followings_url
    assert_response :success
  end

  test "should get followers" do
    get relationship_followers_url
    assert_response :success
  end
end
