class User < ApplicationRecord
    has_many :projects
    has_many :user_projects
    has_many :projects, through: :user_project
    validates :username, uniqueness: { case_sensitive: false }
    has_secure_password
end
