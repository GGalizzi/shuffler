class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.references :content, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
