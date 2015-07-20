class AddBoardToCard < ActiveRecord::Migration
  def change
    add_reference :cards, :board, index: true
    add_foreign_key :cards, :boards
  end
end
