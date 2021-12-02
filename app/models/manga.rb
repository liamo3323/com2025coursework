class Manga < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy
    validates :title, presence: true
    validates :title, uniqueness: true

    scope :user_mangas, ->(user) {where(['user_id = ?',user.id]) }
end