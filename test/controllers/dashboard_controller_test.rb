require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to login page if not logged in" do
    get dashboard_index_url
    assert_redirected_to root_url
  end

  test "should get index if logged in" do
    user = users(:one)
    post login_url, params: { user: { email: user.email, password: "password" } }
    get dashboard_index_url
    assert_response :success
  end
end
