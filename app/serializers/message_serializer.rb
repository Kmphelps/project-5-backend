class MessageSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :feature_id, :message
    has_one :user
    has_one :feature 
     
  end