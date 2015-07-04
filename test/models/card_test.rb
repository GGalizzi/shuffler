require "test_helper"

class CardTest < ActiveSupport::TestCase
  def card
    @card ||= cards(:one)
  end

  def test_invalid
    assert Card.new.invalid?
  end

  def test_valid
    assert card.valid?
  end
end
