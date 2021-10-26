class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :wireframes_link, :test_cases_link, :need_access_resources, :test_framework, :project_mgmt_resources, :test_status, :priority
  has_many :messages
end
