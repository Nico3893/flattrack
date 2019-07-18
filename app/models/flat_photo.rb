class FlatPhoto < ApplicationRecord

  belongs_to :flat
  validates :photo, presence: true
end
