class Transaction < ApplicationRecord
  belongs_to :flat
  belongs_to :category, class_name: "TransactionCategory"
  belongs_to :company

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :date, presence: true
  validates :is_expense, presence: true

  monetize :amount_cents
end
