require "test_helper"

class UserTest < ActiveSupport::TestCase
  def user
    @user ||= User.new
  end

  def test_invalid
    assert user.invalid?
  end

  def test_valid
    @user = users(:one)
    @user.password = "1234"
    assert @user.valid?
  end
end
