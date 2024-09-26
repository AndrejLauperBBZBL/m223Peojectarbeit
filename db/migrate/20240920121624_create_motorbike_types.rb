class CreateMotorbikeTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :motorbike_types do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
