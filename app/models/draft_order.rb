class DraftOrder < ApplicationRecord
  has_many :draft_items
  has_many :items, through: :draft_items
  belongs_to :user
end
