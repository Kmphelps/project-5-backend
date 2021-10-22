class AddToFeatures < ActiveRecord::Migration[6.1]
  def change
    add_column :features, :wireframes_link, :string
    add_column :features, :test_cases_link, :string
    add_column :features, :need_access_resources, :string
    add_column :features, :test_framework, :string
    add_column :features, :project_mgmt_resources, :string
    add_column :features, :test_status, :string
    add_column :features, :priority, :string

   
  end
end
