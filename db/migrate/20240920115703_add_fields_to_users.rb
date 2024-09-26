class AddFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :username, :string
    add_column :users, :license_front, :string
    add_column :users, :license_back, :string
    add_reference :users, :motorcycle, foreign_key: true, null: true
  end
end
