class AddIdsToAssignments < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :user_id, :string
    add_column :assignments, :feature_id, :string
  end
end
