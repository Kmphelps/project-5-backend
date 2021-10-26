class CorrectForeignKeys < ActiveRecord::Migration[6.1]
  def change
    remove_column :assignments, :user_id, :string
    remove_column :assignments, :feature_id, :string
    add_column :assignments, :user_id, :integer
    add_column :assignments, :feature_id, :integer
  end
end
