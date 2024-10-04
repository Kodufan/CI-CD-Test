require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to root page" do
    get root_url
  end
end
