class Board < ApplicationRecord
    has_many :cards, dependent: :delete_all
    belongs_to :project
    accepts_nested_attributes_for :cards, allow_destroy: true
end
