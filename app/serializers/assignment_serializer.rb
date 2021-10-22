class AssignmentSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :feature_id
    has_one :user
    has_one :feature 
     
  end