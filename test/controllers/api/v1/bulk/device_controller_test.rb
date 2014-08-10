require 'test_helper'

class Api::V1::Bulk::DeviceControllerTest < ActionController::TestCase
  test "should get import" do
    get :import
    assert_response :success
  end

end
