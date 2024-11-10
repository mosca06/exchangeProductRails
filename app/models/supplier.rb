class Supplier < ApplicationRecord
  has_many :products_suppliers, dependent: :nullify
  has_many :products, through: :products_suppliers
end
