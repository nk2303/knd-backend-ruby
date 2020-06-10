class Project < ApplicationRecord
    has_many :boards
    has_many :user_projects
    # has_many :users, through: :user_project
    belongs_to :user
    accepts_nested_attributes_for :boards, allow_destroy: true
    
end
