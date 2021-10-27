class Feature < ApplicationRecord
    has_many :assignments, dependent: :destroy
    has_many :users, through: :assignments
    has_many :messages, dependent: :destroy
end
