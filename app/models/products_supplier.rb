class ProductsSupplier < ApplicationRecord
  belongs_to :product
  belongs_to :supplier
  has_many :items
  has_many :stores, through: :items
end
