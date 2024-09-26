class CreateMotorcycles < ActiveRecord::Migration[7.2]
  def change
    create_table :motorcycles do |t|
      t.string :name
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
