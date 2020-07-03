class User < ApplicationRecord
    has_many :projects
    has_many :user_projects, dependent: :delete_all
    validates :username, uniqueness: { case_sensitive: false }
    has_secure_password
end
