class RemoveMotorcycleIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :motorcycle_id, :integer
  end
end
