require "test_helper"

class BoardTest < ActiveSupport::TestCase
  def board
    @board ||= Board.new
  end

  def test_valid
    assert board.valid?
  end
end
