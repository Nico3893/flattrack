class Flat < ApplicationRecord
  belongs_to :company
  has_many :contracts
  has_many :flat_photos
  has_many :transactions
  has_many :tasks

  validates :address, presence: true
end
