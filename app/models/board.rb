class Board < ApplicationRecord
    has_many :cards, dependent: :delete_all
    belongs_to :user
end
