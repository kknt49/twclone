require 'test_helper'

class MurmursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get murmurs_index_url
    assert_response :success
  end

end
