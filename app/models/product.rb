class Product < ApplicationRecord
  has_many :products_suppliers, dependent: :nullify
  has_many :suppliers, through: :products_suppliers
end
