class Project < ApplicationRecord
    has_many :boards
    belongs_to :user
    accepts_nested_attributes_for :boards, allow_destroy: true
    
end
