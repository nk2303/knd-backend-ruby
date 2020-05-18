class Project < ApplicationRecord
    has_many :boards, dependent: :delete_all
    belongs_to :user
    
end
