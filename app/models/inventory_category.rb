class InventoryCategory < ApplicationRecord
  has_many :inventories

  validates :name, presence: true, uniqueness: true
end
