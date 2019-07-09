class User < ApplicationRecord

    has_many :reservations
    has_many :restaurants, through: :reservations

    has_secure_password

    validates :username, presence: true, uniqueness: true
    
end
