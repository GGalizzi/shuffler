require "test_helper"

class IndexListTest < Capybara::Rails::TestCase
  test "index displays cards" do
    visit root_path
    assert_content page, "hand"
    page.must_have_css(".cards")

  end
end
