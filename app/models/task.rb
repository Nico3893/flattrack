class Task < ApplicationRecord
  belongs_to :company
  belongs_to :category, class_name: "TaskCategory"
  belongs_to :flat
  belongs_to :user
  has_many :participations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :users, through: :participations

  accepts_nested_attributes_for :participations
  accepts_nested_attributes_for :comments


  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: ['open', 'resolved', 'in progress']}
  validates :urgency, presence: true, inclusion: { in: [1, 2, 3] }
  # validates :participations, presence: true
end
