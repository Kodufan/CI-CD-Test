require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = users(:one)
    user.email = nil
    assert_not user.save, "Saved the user without an email"
  end

  test "should not save user without password" do
    user = users(:one)
    user.password = nil
    assert_not user.save, "Saved the user without a password"
  end

  test "should save user with email and password" do
    user = users(:one)
    assert user.save, "Saved the user with email and password"
  end
end
