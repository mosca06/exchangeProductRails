class Store < ApplicationRecord
  has_many :items
  has_many :products_suppliers, through: :items
end
