class Task < ApplicationRecord
  belongs_to :company
  belongs_to :category, class_name: "TaskCategory"
  belongs_to :flat

  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: ['open', 'resolved', 'in progress']}
  validates :urgency, presence: true, inclusion: { in: [1, 2, 3] }
end
