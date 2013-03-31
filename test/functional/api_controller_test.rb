require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get bio" do
    get :bio
    assert_response :success
  end

end
