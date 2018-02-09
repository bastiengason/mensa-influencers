require 'test_helper'

class GetstartedControllerTest < ActionDispatch::IntegrationTest
  test "should get basic" do
    get getstarted_basic_url
    assert_response :success
  end

  test "should get intermediate" do
    get getstarted_intermediate_url
    assert_response :success
  end

  test "should get pro" do
    get getstarted_pro_url
    assert_response :success
  end

end
