class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :feature_id
      t.timestamps
    end
  end
end
