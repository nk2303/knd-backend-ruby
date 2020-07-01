class User < ApplicationRecord
    has_many :projects
    # belongs_to :user_project
    # has_many :user_project
    has_many :user_projects, dependent: :delete_all
    
    validates :username, uniqueness: { case_sensitive: false }
    # accepts_nested_attributes_for :user_projects, allow_destroy: true
    has_secure_password
end
