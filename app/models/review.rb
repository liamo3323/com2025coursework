class Review < ApplicationRecord
  belongs_to :manga
  validates :title, :manga, presence: true
end
