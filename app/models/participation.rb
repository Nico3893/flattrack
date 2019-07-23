class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :task
end
