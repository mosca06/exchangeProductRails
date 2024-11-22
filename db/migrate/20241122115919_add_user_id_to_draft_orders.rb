class AddUserIdToDraftOrders < ActiveRecord::Migration[7.2]
  def change
    add_reference :draft_orders, :user, null: false, foreign_key: true
  end
end
