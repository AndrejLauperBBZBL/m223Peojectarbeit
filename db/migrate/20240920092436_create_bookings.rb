class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.references :motorcycle, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.text :reason

      t.timestamps
    end
  end
end
