class Article < ApplicationRecord
    has_one_attached :image
    belongs_to :user

    validates :introduction, presence: true
end
