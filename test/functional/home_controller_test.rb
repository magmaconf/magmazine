require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get magmazine" do
    get :magmazine
    assert_response :success
  end

end
