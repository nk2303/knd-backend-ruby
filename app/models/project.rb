class Project < ApplicationRecord
    has_many :boards
    has_many :user_project
    # has_many :users, through: :user_project
    belongs_to :user
    accepts_nested_attributes_for :boards, allow_destroy: true
    
end
