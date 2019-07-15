class Task < ApplicationRecord
  belongs_to :company
  belongs_to :category, class_name: "TaskCategory"

  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: ['open', 'resolved','in progress']}
end
