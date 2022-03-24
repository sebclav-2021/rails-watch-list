class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list

  validates_length_of :comment, minimum: 6
  validates :movie, presence: :true, uniqueness: {scope: :list}
end
