require 'test_helper'

class PagesCastorControllerTest < ActionDispatch::IntegrationTest
  test "should get castor" do
    get pages_castor_castor_url
    assert_response :success
  end

end
