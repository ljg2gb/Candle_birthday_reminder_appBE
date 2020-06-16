class User < ApplicationRecord
    has_many :friends

    has_secure_password

    validates :email, presence: true
    validates :email, uniqueness: true
end
