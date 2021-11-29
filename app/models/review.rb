class Review < ApplicationRecord
  belongs_to :manga
  validates :title, :manga, presence: true

  scope :user_tasks, ->(user) {joins(:manga).where(['user_id = ?', user.id] )}
end
