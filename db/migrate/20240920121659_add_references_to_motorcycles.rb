class AddReferencesToMotorcycles < ActiveRecord::Migration[7.0]
  def change
    add_reference :motorcycles, :motorbike_type, null: false, foreign_key: true
  end
end
