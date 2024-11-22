class Item < ApplicationRecord
  belongs_to :products_supplier
  belongs_to :store
  has_many :draft_items
  has_many :draft_orders, through: :draft_items
end
