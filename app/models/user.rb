class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :assignments 
    has_many :features, through: :assignments 
end
