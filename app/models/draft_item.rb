class DraftItem < ApplicationRecord
  belongs_to :draft_order
  belongs_to :item
end
