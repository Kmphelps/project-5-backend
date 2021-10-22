class UserWithFeaturesSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar
  has_many :features
end
