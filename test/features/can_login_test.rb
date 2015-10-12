require "test_helper"

class CanLoginTest < Capybara::Rails::TestCase
  test "can log in" do
    visit root_path
    login_as users(:roro).email, '1234'
    assert_content "Logged in as #{users(:roro).name}"
  end
  test "can log out" do
    visit root_path
    login_as users(:roro).email, '1234'
    click_link 'Log out'
    assert_content 'Successfully logged out'
    assert_content 'Log in'
  end
end
