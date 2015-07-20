require "test_helper"

class DeckTest < ActiveSupport::TestCase
  def deck
    @deck ||= Deck.new
  end

  def test_valid
    assert deck.valid?
  end
end
