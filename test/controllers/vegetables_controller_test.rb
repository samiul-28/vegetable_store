require "test_helper"

class VegetablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vegetables_index_url
    assert_response :success
  end

  test "should get show" do
    get vegetables_show_url
    assert_response :success
  end
end
