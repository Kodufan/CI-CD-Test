require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get the login page" do
    get login_url
    assert_response :success
  end

  test "should create session" do
    user = users(:one)
    post login_url, params: { user: { email: user.email, password: "password" } }
    assert_redirected_to dashboard_index_url
  end

  test "should destroy session" do
    delete logout_url
    assert_redirected_to root_url
  end
end
