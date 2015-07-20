class RenameCardBoardToDeck < ActiveRecord::Migration
  def change
    rename_column :cards, :board_id, :deck_id
  end
end
