class Reaction < ApplicationRecord
    belongs_to :article
    belongs_to :user

    enum status: { like: 0, dislike: 1 }
end
