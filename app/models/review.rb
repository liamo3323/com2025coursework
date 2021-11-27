class Review < ApplicationRecord
  belongs_to :manga
  validates :title, :manga, presensce: true
end
