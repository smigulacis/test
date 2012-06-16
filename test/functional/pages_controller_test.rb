require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get newuser" do
    get :newuser
    assert_response :success
  end

  test "should get displayuser" do
    get :displayuser
    assert_response :success
  end

end
