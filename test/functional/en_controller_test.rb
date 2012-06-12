require 'test_helper'

class EnControllerTest < ActionController::TestCase
  test "should get editorial" do
    get :editorial
    assert_response :success
  end

end
