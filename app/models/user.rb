class User < ApplicationRecord
    has_many :comments
    has_many :sites, through: :comments
    has_many :wish_lists
    has_many  :sites, through: :wish_lists

    validates :name, uniqueness: true
    validates :email, uniqueness: true

    has_secure_password
end
