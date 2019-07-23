class Inventory < ApplicationRecord
  belongs_to :flat
  belongs_to :category, class_name: "InventoryCategory"

  validates :name, presence: true
  validates_inclusion_of :deleted, in: [true, false]
  validates_inclusion_of :replaced, in: [true, false]
end
