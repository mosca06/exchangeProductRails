class Item < ApplicationRecord
  belongs_to :products_supplier
  belongs_to :store
end
