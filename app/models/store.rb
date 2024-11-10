class Store < ApplicationRecord
  has_many :items
  has_many :stores, through: :items
end
