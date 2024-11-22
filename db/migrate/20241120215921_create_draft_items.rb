class CreateDraftItems < ActiveRecord::Migration[7.2]
  def change
    create_table :draft_items do |t|
      t.references :draft_order, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
