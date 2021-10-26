class AddColumnsToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :user_id, :integer
    add_column :messages, :feature_id, :integer
    add_column :messages, :message, :string
  end
end
