class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar
  has_many :assignments 
  has_many :features, through: :assignments
  
end
