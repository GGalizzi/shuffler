class RenameBoardsToDecks < ActiveRecord::Migration
  def self.up
    rename_table :boards, :decks
  end

  def self.down
    rename_table :boards, :decks
  end
end
