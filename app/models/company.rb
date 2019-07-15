class Company < ApplicationRecord
  has_many :users
  has_many :tasks
  has_many :transactions
  has_many :flats
  has_many :contracts, through: :flats

  validates :name, presence: true, uniqueness: true
end
