class CreateDraftOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :draft_orders do |t|
      t.float :total_price

      t.timestamps
    end
  end
end
