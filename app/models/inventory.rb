class Inventory < ApplicationRecord
  belongs_to :flat
  belongs_to :category, class_name: "InventoryCategory"

  validates :name, presence: true
end
