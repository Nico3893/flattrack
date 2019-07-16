class Flat < ApplicationRecord
  belongs_to :company
  has_many :contracts
  has_many :flat_photos
  has_many :transactions

  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
