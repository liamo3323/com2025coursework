class Manga_lists < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
end
