class Review < ApplicationRecord
  belongs_to :manga
  validates :title, :manga, presence: true

  scope :user_reviews, ->(user) {joins(:manga).where(['user_id = ?', user.id] )}
end
