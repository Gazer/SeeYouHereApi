require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get ping" do
    get people_ping_url
    assert_response :success
  end

end
