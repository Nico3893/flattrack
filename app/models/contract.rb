class Contract < ApplicationRecord
  belongs_to :flat
  # has_many :transactions, through: :flats
  validates :start_date, presence: true
  validates :monthly_rent, presence: true
end
